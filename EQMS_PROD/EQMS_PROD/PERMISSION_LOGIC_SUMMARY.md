# Permission Logic Summary

## Original Requirements (What Was Working Before)

### 1. **Global User Handling for Every Schema Batch**
- **Requirement**: When processing ANY module's schema batch, check if global users (`magic_read_app_user`, `magic_save_app_user`) need access to tables created in that batch
- **Logic**: 
  - After each schema batch is created, call `process_external_permissions_to_current_tables()`
  - Check "Magic Read" and "Magic Save" sheets in `Module Wise tables.xlsx`
  - If tables from current batch are listed in those sheets, create permission folders for global users
- **Status**: ✅ This logic exists and is called after schema batches

### 2. **Already Executed Module Permissions - Create New Folder**
- **Requirement**: When Vendor module creates tables that DND module needs (DND already executed), create a NEW separate folder for DND permissions
- **Example**: `vendor_dnd_app_user_permissions` folder when vendor creates `eqms_part_category` and DND sheet lists it
- **Logic**:
  - Check if TARGET module (e.g., DND) is already executed
  - If YES → Create new folder in current execution (e.g., `migrations_XXX_vendor_dnd_app_user_permissions_batch_001`)
  - If NO → Skip (will be created when DND module runs)
- **Status**: ✅ This logic exists for module-specific app_users

### 3. **Global Users - Only Create if Current Module Already Executed**
- **Requirement**: For global users, only create permissions if the CURRENT module (creating tables) was already executed BEFORE this run started
- **Logic**:
  - Check `module_was_already_executed` (checked BEFORE processing starts)
  - If current module was already executed → Create global user permission folders
  - If current module NOT yet executed → Skip (will be created when that module runs)
- **Status**: ✅ This logic exists

### 4. **Screen Number in Folder Names**
- **Requirement**: Global user permission folders should follow the module's screen numbers (from SCREEN_ORDER column in Excel)
- **Format**: `migrations_{batch}_{module}_{screen_number}_{app_user}_permissions_batch_001`
- **Example**: `migrations_00003_organization_0001_magic_read_app_user_permissions_batch_001` (screen 0001, not 0200)
- **Status**: ❌ BROKEN - Getting "0200" instead of actual screen numbers

## Current Issues

### Issue 1: Screen Number Showing "0200"
- **Problem**: Folder names show `migrations_XXX_organization_0200_magic_read_app_user_permissions_batch_001`
- **Root Cause**: `screen_number` parameter might be 200 or None, and fallback logic isn't working correctly
- **Expected**: Should use `screen_number_for_folder` which comes from `screen_order_map` (SCREEN_ORDER from Excel)

### Issue 2: Missing Magic Read Permissions (Original Issue)
- **Problem**: Sales, Regulation, Infrastructure tables were missing permissions for `magic_read_app_user`
- **Root Cause**: Global user sheets weren't being checked when processing those modules
- **Status**: ✅ FIXED - Now checking "Magic Read" and "Magic Save" sheets for all modules

## Code Flow

1. **Module Processing Starts** (`main()` function):
   - Check if module was already executed: `module_was_already_executed = is_module_already_executed(module_name)`
   - Build `screen_order_map` from Excel SCREEN_ORDER column
   - Build `table_screen_map` mapping tables to their screens

2. **For Each Screen/Schema Batch**:
   - Calculate `screen_number_for_folder` from `screen_order_map` (uses SCREEN_ORDER from Excel)
   - Create schema batch folder
   - Call `process_external_permissions_to_current_tables()` with:
     - `screen_number=screen_number_for_folder` (should be from SCREEN_ORDER)
     - `module_was_already_executed=module_was_already_executed`
     - `screen_order_map=screen_order_map`
     - `table_screen_map=table_screen_map`

3. **In `process_external_permissions_to_current_tables()`**:
   - Check module-specific sheets (DND, Sales, etc.) → Create folders if target module executed
   - Check global user sheets (Magic Read, Magic Save) → Create folders if current module executed
   - For global users: Use `screen_number` parameter (should be `screen_number_for_folder`)

## What Needs to Be Fixed

1. **Screen Number Logic**: Ensure `screen_number` parameter is always passed correctly and used (not defaulting to 1 or 200)
2. **Verify Call Sites**: Make sure all calls pass `screen_number_for_folder` correctly
3. **Lookup Tables**: For lookup tables, determine screen number from `table_screen_map` instead of counter
