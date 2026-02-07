# Complete Logic Requirements Summary

## Overview
This document summarizes all the logic requirements provided for the `split_dump.py` script, particularly around permission handling, folder creation, and screen ordering.

---

## 1. Screen Ordering Logic

### Requirement
- Screens must be sorted by `SCREEN_ORDER` column from Excel (`Module Wise tables.xlsx`)
- The screen with `SCREEN_ORDER = 1` should be processed first
- If multiple screens have the same `SCREEN_ORDER`, they are sorted alphabetically as a tiebreaker

### Implementation
- Read `SCREEN_ORDER` from Excel for each screen
- Sort screens: `sorted(screen_tables.keys(), key=lambda s: (screen_order_map.get(s, 9999), s))`
- Use `SCREEN_ORDER` value for folder naming (e.g., `migrations_00041_hrcs_0001_...`)
- If `SCREEN_ORDER` is missing or invalid (9999), use sequential numbering

### Example
- "skill master" screen should have `SCREEN_ORDER = 1` to be processed first
- "candidate_evaluation" screen should have `SCREEN_ORDER = 2` (or higher) if it should come after

---

## 2. External Permissions - Module-Specific App Users

### Requirement
When a module creates tables that another module's app_user needs access to:

**Scenario**: Vendor module creates `eqms_part_category` table, and DND module's `dnd_app_user` needs access to it.

### Logic
1. **Check if TARGET module (DND) is already executed:**
   - If YES → Create a **NEW separate folder** in current execution
     - Example: `migrations_XXX_vendor_dnd_app_user_permissions_batch_001`
   - If NO → Skip (permission will be created when DND module runs for the first time)

2. **Folder naming:**
   - Format: `migrations_{batch_number}_{current_module}_{target_app_user}_permissions_batch_001`
   - Example: `migrations_00050_vendor_dnd_app_user_permissions_batch_001`

### Key Points
- Always create a **NEW folder** (never append to existing folders)
- Only create if target module is already executed
- If target module not yet executed, defer to when that module is processed

---

## 3. Global Users - Magic Read & Magic Save

### Requirement
Global users (`magic_read_app_user`, `magic_save_app_user`) need access to tables from **ALL modules** if listed in their respective Excel sheets ("Magic Read", "Magic Save").

### Logic

#### A. When to Create Global User Permissions

**For global users, check if CURRENT module (creating tables) was already executed BEFORE this run started:**

1. **If CURRENT module was already executed:**
   - ✅ Create global user permission folders NOW
   - Example: Organization module (already executed) creates tables → create `magic_read_app_user` permissions

2. **If CURRENT module NOT yet executed (first time):**
   - ❌ Skip (will be created when that module runs its full process)
   - Example: Sales module (first time) creates tables → skip global user permissions (will be created when Sales module processes)

#### B. Screen Number in Folder Names

**Global user permission folders MUST follow the module's screen numbers from Excel:**

- Use `SCREEN_ORDER` value from Excel for the screen number in folder name
- Format: `migrations_{batch_number}_{module_name}_{screen_number}_{app_user_clean}_permissions_batch_001`
- Example: `migrations_00003_organization_0001_magic_read_app_user_permissions_batch_001`

**Priority for determining screen number:**
1. Use `screen_number` passed from schema batch (from `screen_order_map`)
2. If not available, derive from `table_screen_map` and `screen_order_map`
3. If still not determined, use default 1 (with warnings)

#### C. Processing for Every Schema Batch

- After **EVERY schema batch** is created, call `process_external_permissions_to_current_tables()`
- Check "Magic Read" and "Magic Save" sheets in Excel
- If tables from current batch are listed in those sheets, create permission folders for global users

---

## 4. Lookup Tables Processing

### Requirement
Lookup tables (identified by `TABLE_TYPE = 'lookup'` in Excel) are processed **WITHIN each screen** before regular schema batches.

### Logic
1. **Within each screen:**
   - Process lookup tables FIRST (they get batch numbers first)
   - Then process regular tables (they get the next batch number)

2. **Folder naming for lookup tables:**
   - Format: `migrations_{batch_number}_lookup_{screen_number}_{table_name}_schema_batch_001`
   - Screen number comes from `screen_order_map` (SCREEN_ORDER from Excel)

3. **Lookup tables and global users:**
   - Check if lookup tables need global user access (from Excel sheets)
   - Use same logic as regular tables for global user permissions

### Example
- Screen "skill master" (SCREEN_ORDER = 1) has:
  - Lookup table `eqms_skill_type_lk` → gets batch 00001
  - Regular tables → get batch 00002

---

## 5. Module Execution Status Check

### Requirement
Determine if a module was already executed **BEFORE the current script run started**.

### Implementation
```python
def is_module_already_executed(module_name):
    import glob
    pattern = os.path.join(OUTPUT_FOLDER, f"migrations_*_{module_name.lower()}_*")
    folders = glob.glob(pattern)
    return len(folders) > 0
```

### Usage
- Check **BEFORE** creating any folders: `module_was_already_executed = is_module_already_executed(module_name)`
- Use this flag for global user permission logic
- This ensures we capture the module's true pre-run execution status

---

## 6. Folder Creation Rules Summary

### Rule 1: External Permissions (Module-Specific App Users)
- **Condition**: Target module is already executed
- **Action**: Create NEW folder in current execution
- **Format**: `migrations_{batch}_{current_module}_{target_app_user}_permissions_batch_001`

### Rule 2: Global User Permissions
- **Condition**: Current module was already executed BEFORE this run started
- **Action**: Create folder NOW
- **Format**: `migrations_{batch}_{module}_{screen_number}_{app_user_clean}_permissions_batch_001`
- **Screen number**: Must use SCREEN_ORDER from Excel

### Rule 3: Deferred Permissions
- **Condition**: Target module (for module-specific) or current module (for global users) NOT yet executed
- **Action**: Skip (will be created when that module is processed)

---

## 7. Key Functions and Their Logic

### `process_external_permissions_to_current_tables()`
- **Called after**: Every schema batch creation
- **Purpose**: Grant permissions on tables created in current batch to other app users
- **Parameters**:
  - `current_module_name`: Module creating tables
  - `tables_in_this_batch`: Tables created in this batch
  - `screen_number`: Screen number for folder naming (from SCREEN_ORDER)
  - `module_was_already_executed`: Whether current module was executed before this run
  - `screen_order_map`: Map of screen names to SCREEN_ORDER values
  - `table_screen_map`: Map of table names to screen info

### `is_module_already_executed()`
- **Purpose**: Check if module has existing migration folders (from previous runs)
- **Called**: At the start of `main()`, before creating any folders
- **Returns**: `True` if module was already executed, `False` otherwise

### Screen Sorting
- **Location**: In `main()` function, after reading Excel
- **Logic**: Sort by `SCREEN_ORDER` from Excel, then alphabetically
- **Result**: `sorted_screens` list used for processing

---

## 8. Common Issues and Solutions

### Issue 1: Wrong Screen Processed First
- **Cause**: `SCREEN_ORDER` in Excel is incorrect
- **Solution**: Update Excel file - set correct `SCREEN_ORDER` values (1 for first screen, 2 for second, etc.)

### Issue 2: Global User Permissions Missing
- **Cause**: Current module not yet executed, or tables not listed in "Magic Read"/"Magic Save" sheets
- **Solution**: Ensure tables are listed in global user sheets, and check `module_was_already_executed` logic

### Issue 3: Screen Number "0200" in Folder Names
- **Cause**: Screen number not correctly derived from `screen_order_map`
- **Solution**: Ensure `screen_number` parameter is passed correctly from schema batch, and `screen_order_map` is populated from Excel

### Issue 4: External Permissions Not Created
- **Cause**: Target module not yet executed
- **Solution**: This is expected behavior - permissions will be created when target module runs

---

## 9. Excel File Requirements

### Required Columns
- `MODULE`: Module name
- `TABLE_NAME`: Table name
- `SCREEN_NAME`: Screen name
- `SCREEN_ORDER`: Integer indicating screen order (1 = first, 2 = second, etc.)
- `TABLE_TYPE`: Table type ('lookup' for lookup tables, 'regular' for others)

### Required Sheets
- One sheet per module (e.g., "HRCS", "Vendor", "DND")
- "Magic Read" sheet for `magic_read_app_user` permissions
- "Magic Save" sheet for `magic_save_app_user` permissions

---

## 10. Processing Flow

1. **Read Excel file** → Get module, screen, table mappings
2. **Check module execution status** → `module_was_already_executed`
3. **Group tables by screen** → `screen_tables`
4. **Read SCREEN_ORDER** → Populate `screen_order_map`
5. **Sort screens** → `sorted_screens` by SCREEN_ORDER
6. **For each screen:**
   - Process lookup tables first (if any)
   - Process regular schema batch
   - Call `process_external_permissions_to_current_tables()` for external permissions
7. **Process data migrations** → After all schema batches
8. **Process permission migrations** → After data migrations

---

## Summary of Key Rules

1. ✅ Screens sorted by `SCREEN_ORDER` from Excel
2. ✅ External permissions: Create NEW folder if target module already executed
3. ✅ Global users: Create if current module already executed BEFORE this run
4. ✅ Global user folders: Use SCREEN_ORDER from Excel for screen number
5. ✅ Lookup tables: Processed first within each screen
6. ✅ Module execution status: Checked BEFORE creating folders
7. ✅ External permissions: Called after EVERY schema batch
