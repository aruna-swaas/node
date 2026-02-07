import os
import re
import shutil
import tempfile
import sys
import json
from collections import defaultdict
from datetime import datetime
import pandas as pd

# ================= CONFIG =================
# Get the directory where this script is located
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

BASE_FOLDER = SCRIPT_DIR  # Parent folder where data folders (002_client) are located
OUTPUT_FOLDER = os.path.join(SCRIPT_DIR, "github") 
# State management file
STATE_FILE = os.path.join(BASE_FOLDER, "migration_state.json")
# MASTER_CHANGELOG = os.path.join(OUTPUT_FOLDER, "master_changelog.sql")

# Input files (relative to BASE_FOLDER)
DUMP_FILE = os.path.join(BASE_FOLDER, "dump.sql")
# Use the local latest schema file
EXCEL_FILE = os.path.join(BASE_FOLDER, "DB-SCHEMA_LATEST.xlsx")
APP_USER_FILE = os.path.join(BASE_FOLDER, "app_user.txt")
MODULE_WISE_TABLES_FILE = os.path.join(BASE_FOLDER, "Module Wise tables.xlsx")

# ==========================================


def get_module_wise_sheet_name(module_name):
    """
    Get the sheet name in Module Wise tables.xlsx for a given module name.
    
    @description Maps internal module names to sheet names in the secondary Excel file.
    @param {str} module_name - Internal module name
    @returns {str|None} Corresponding sheet name or None if not found
    @author Aravind Sekar
    @created 24-01-2026
    """
    # @confidential
    mapping = {
        'risk_management': 'RISK',
        'organization': 'ORG',
        'abac': 'AUTH',
        'notification_center': 'NC',
        'dms': 'DMS',
        'vendor': 'vendor-purchase',
        'purchase': 'vendor-purchase',
        'sales': 'Sales',
        'hrcs': 'HRCS',
        'dnd': 'DND',
        'workflow': 'Workflow PMS',
        'infrastructure': 'infrastructure',
        'qc': 'QC',
        'pre_production': 'Pre Production',
        'marketing': 'RISK'  # Fallback based on typical mapping
    }
    return mapping.get(module_name.lower())


def process_external_permissions_to_current_tables(current_module_name, state, tables_in_this_batch, screen_number=None, screen_order_map=None, full_df=None, schema_batch_number=None):
    """
    Grant permissions on tables created in the CURRENT batch to OTHER app users.
    Creates separate folder for each app_user.
    
    @description Scans all other module sheets. If another module lists tables
    from the current batch, its app users are granted access in separate folders.
    Only creates folders if target module was already executed.
    @param {str} current_module_name - Name of the module just processed
    @param {dict} state - Global migration state object
    @param {list} tables_in_this_batch - Tables created in this specific batch/screen
    @param {int} screen_number - Screen number for folder naming (uses SCREEN_ORDER from Excel)
    @param {dict} screen_order_map - Map of screen names to SCREEN_ORDER values
    @param {DataFrame} full_df - Full Excel DataFrame for getting SCREEN_ORDER
    @param {int} schema_batch_number - Batch number of the schema batch (will use this instead of generating new one)
    @returns {bool} True if any permission folder was created, False otherwise
    """
    if not os.path.exists(MODULE_WISE_TABLES_FILE) or not tables_in_this_batch:
        return False

    temp_copy_path = None
    try:
        # Build a map of table names (without schema) to their full names (with schema from dump.sql)
        # tables_in_this_batch can be list of strings or list of (table_name, sql) tuples
        table_name_map = {}  # Maps normalized table name (without schema) -> full table name (with schema from dump.sql)
        created_tables_normalized = set()
        schemas_used = set()  # Track all schemas used in this batch
        
        for table_item in tables_in_this_batch:
            if isinstance(table_item, tuple):
                # If it's a tuple (table_name, sql), extract table_name
                table_name = table_item[0]
            else:
                # If it's just a string
                table_name = table_item
            
            # Extract schema and table name
            if '.' in table_name:
                schema = table_name.split('.')[0].lower()
                table_only = table_name.split('.')[-1]
                schemas_used.add(schema)
            else:
                # No schema prefix - use current_module_name as fallback
                schema = current_module_name.lower()
                table_only = table_name
                schemas_used.add(schema)
            
            table_normalized = normalize(table_only)
            created_tables_normalized.add(table_normalized)
            # Store the full table name with schema from dump.sql
            full_table_name = f"{schema}.{table_only}" if '.' not in table_name else table_name.lower()
            table_name_map[table_normalized] = full_table_name
        
        # Strategy: Copy to a temporary file to bypass potential file locks
        try:
            import tempfile
            temp_fd, temp_copy_path = tempfile.mkstemp(suffix='.xlsx')
            os.close(temp_fd)
            shutil.copy2(MODULE_WISE_TABLES_FILE, temp_copy_path)
            read_path = temp_copy_path
        except Exception:
            read_path = MODULE_WISE_TABLES_FILE

        xl = pd.ExcelFile(read_path)
        current_sheet = get_module_wise_sheet_name(current_module_name)
        
        # Map: external_module -> list of tables in current_module that they need
        external_access_map = defaultdict(list)
        
        if 'app_user_mapping_cache' not in globals():
            globals()['app_user_mapping_cache'] = read_app_user_mapping()
        
        all_app_modules = globals()['app_user_mapping_cache'].keys()
        
        for sheet_name in xl.sheet_names:
            if sheet_name == current_sheet:
                continue
            
            target_modules = [mod for mod in all_app_modules if get_module_wise_sheet_name(mod) == sheet_name]
            if not target_modules:
                continue

            df_ext = pd.read_excel(xl, sheet_name=sheet_name)
            col_list = [str(c).strip().lower() for c in df_ext.columns]
            
            table_col_idx = -1
            for i, col in enumerate(col_list):
                if 'table' in col or 'name' in col or 'tab' in col:
                    table_col_idx = i
                    break
            if table_col_idx == -1: table_col_idx = 0
            
            schema_col_idx = -1
            for i, col in enumerate(col_list):
                if i != table_col_idx and ('schema' in col or 'dev' in col or 'mod' in col):
                    schema_col_idx = i
                    break
            if schema_col_idx == -1: schema_col_idx = 1

            for _, row in df_ext.iterrows():
                t_name = str(row.iloc[table_col_idx]).strip()
                if not t_name or t_name.lower() == 'nan': continue
                
                s_name = str(row.iloc[schema_col_idx]).strip() if len(row) > schema_col_idx else ''
                s_name = s_name.lower() if s_name.lower() != 'nan' else ''
                
                # Check if this table is one of the ones we just created
                # Match by table name only (normalized), regardless of schema in Excel
                table_only = t_name.split('.')[-1] if '.' in t_name else t_name
                table_normalized = normalize(table_only)
                
                if table_normalized in created_tables_normalized:
                    # Use the actual table name with schema from dump.sql (not from Excel)
                    full_name = table_name_map.get(table_normalized)
                    if full_name:
                        for target_module in target_modules:
                            if full_name not in external_access_map[target_module]:
                                external_access_map[target_module].append(full_name)

        if not external_access_map:
            return False

        # Check which modules were already executed (only create folders for executed modules)
        executed_modules = set(state.get("executed_modules", []))
        
        # Get screen order for folder naming (use SCREEN_ORDER from Excel)
        screen_order_for_folder = screen_number
        if screen_order_map and full_df is not None and tables_in_this_batch:
            # Try to find screen name from tables to get SCREEN_ORDER
            first_table = tables_in_this_batch[0]
            if isinstance(first_table, tuple):
                first_table_name = first_table[0]
            else:
                first_table_name = first_table
            
            table_only = first_table_name.split('.')[-1] if '.' in first_table_name else first_table_name
            matching_rows = full_df[full_df['TABLE_NAME_ONLY_NORMALIZED'] == normalize(table_only)]
            if not matching_rows.empty and 'SCREEN_ORDER' in matching_rows.columns:
                screen_order_from_excel = matching_rows.iloc[0]['SCREEN_ORDER']
                try:
                    screen_order_for_folder = int(screen_order_from_excel) if pd.notna(screen_order_from_excel) else screen_number
                except (ValueError, TypeError):
                    screen_order_for_folder = screen_number
        elif screen_order_map:
            screen_order_for_folder = screen_number
        
        # Use schema batch number if provided, otherwise generate new one
        if schema_batch_number is not None:
            batch_number = schema_batch_number
        else:
            batch_number = get_next_batch_number(state, f"external permissions for module '{current_module_name}'")
        
        folders_created = False
        
        # Create separate folder for each app_user
        for ext_module, tables in sorted(external_access_map.items()):
            # Only create folders if target module was already executed
            if ext_module.lower() not in executed_modules:
                continue
            
            ext_users = get_module_app_users(ext_module)
            for app_user in ext_users:
                # Create folder name using app_user name and SCREEN_ORDER
                folder_name = create_permission_folder_name(
                    batch_number=batch_number,
                    app_user_name=app_user,
                    screen_name=current_module_name.lower(),
                    screen_number=screen_order_for_folder if screen_order_for_folder else 1,
                    migration_type="permission",
                    migration_number=1
                )
                
                folder_abs = os.path.abspath(os.path.join(OUTPUT_FOLDER, folder_name))
                paths = {
                    "scripts": os.path.join(folder_abs, "scripts", "ddl", "permissions"),
                    "rollback": os.path.join(folder_abs, "rollback", "ddl", "permissions"),
                }
                for p in paths.values(): 
                    os.makedirs(p, exist_ok=True)

                # Extract unique schemas from the tables list (from dump.sql)
                table_schemas = set()
                tables_list = sorted(tables)
                for t in tables_list:
                    if '.' in t:
                        schema = t.split('.')[0].lower()
                        table_schemas.add(schema)
                
                # Grant USAGE on all schemas used by these tables (from dump.sql)
                sql = []
                sql.append(f"-- External permissions: Grant access to {app_user} (from module '{ext_module}')")
                sql.append(f"-- on tables created by module '{current_module_name}'")
                sql.append("")
                for schema in sorted(table_schemas):
                    sql.append(f"GRANT USAGE ON SCHEMA {schema} TO {app_user};")
                sql.append("")
                
                # Grant permissions on tables using their actual schema from dump.sql
                for t in tables_list:
                    sql.append(f"GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE {t} TO {app_user};")
                
                with open(os.path.join(paths["scripts"], "001_grant_permissions.sql"), "w", encoding="utf-8") as f:
                    f.write("\n".join(sql))

                rb = []
                rb.append(f"-- Rollback: Revoke permissions from {app_user}")
                rb.append(f"-- on tables created by module '{current_module_name}'")
                rb.append("")
                for t in reversed(tables_list):
                    rb.append(f"REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE {t} FROM {app_user};")
                rb.append("")
                for schema in reversed(sorted(table_schemas)):
                    rb.append(f"REVOKE USAGE ON SCHEMA {schema} FROM {app_user};")
                
                with open(os.path.join(paths["rollback"], "001_rollback_grant_permissions.sql"), "w", encoding="utf-8") as f:
                    f.write("\n".join(rb))
                
                print(f"     Created external user permission folder for {app_user}: {folder_name}")
                folders_created = True

        return folders_created

    except Exception as e:
        print(f"     ERROR processing external permissions: {e}")
        return False
    finally:
        if temp_copy_path and os.path.exists(temp_copy_path):
            try: os.remove(temp_copy_path)
            except: pass


def process_permissions_for_upcoming_modules(current_module_name, state, tables_in_this_batch, screen_number=None, screen_order_map=None, full_df=None, schema_batch_number=None):
    """
    Process permissions for UPCOMING modules (modules not yet executed) that need tables from current batch.
    Creates permission folders BEFORE the target module's schema batch.
    
    @description When a module creates tables, check if any OTHER modules (that haven't run yet) need permissions.
    Creates permission folders BEFORE that module's schema batch.
    Example: Organization creates tables, pre_production module needs them → create permissions BEFORE pre_production's schema batch.
    @param {str} current_module_name - Name of the module creating tables
    @param {dict} state - Global migration state object
    @param {list} tables_in_this_batch - Tables created in this specific batch/screen
    @param {int} screen_number - Screen number for folder naming (uses SCREEN_ORDER from Excel)
    @param {dict} screen_order_map - Map of screen names to SCREEN_ORDER values
    @param {DataFrame} full_df - Full Excel DataFrame for getting SCREEN_ORDER
    @param {int} schema_batch_number - Batch number to use (will be BEFORE target module's schema batch)
    @returns {bool} True if any permission folder was created, False otherwise
    """
    if not os.path.exists(MODULE_WISE_TABLES_FILE) or not tables_in_this_batch:
        return False

    temp_copy_path = None
    try:
        # Build a map of table names (without schema) to their full names (with schema from dump.sql)
        table_name_map = {}
        created_tables_normalized = set()
        
        for table_item in tables_in_this_batch:
            if isinstance(table_item, tuple):
                table_name = table_item[0]
            else:
                table_name = table_item
            
            if '.' in table_name:
                schema = table_name.split('.')[0].lower()
                table_only = table_name.split('.')[-1]
            else:
                schema = current_module_name.lower()
                table_only = table_name
            
            table_normalized = normalize(table_only)
            created_tables_normalized.add(table_normalized)
            full_table_name = f"{schema}.{table_only}" if '.' not in table_name else table_name.lower()
            table_name_map[table_normalized] = full_table_name
        
        # Copy to temporary file to bypass potential file locks
        try:
            import tempfile
            temp_fd, temp_copy_path = tempfile.mkstemp(suffix='.xlsx')
            os.close(temp_fd)
            shutil.copy2(MODULE_WISE_TABLES_FILE, temp_copy_path)
            read_path = temp_copy_path
        except Exception:
            read_path = MODULE_WISE_TABLES_FILE

        xl = pd.ExcelFile(read_path)
        current_sheet = get_module_wise_sheet_name(current_module_name)
        
        # Map: upcoming_module -> app_user -> list of tables they need
        upcoming_access_map = defaultdict(lambda: defaultdict(list))
        
        if 'app_user_mapping_cache' not in globals():
            globals()['app_user_mapping_cache'] = read_app_user_mapping()
        
        all_app_modules = globals()['app_user_mapping_cache'].keys()
        executed_modules = set(state.get("executed_modules", []))
        
        for sheet_name in xl.sheet_names:
            if sheet_name == current_sheet:
                continue
            
            target_modules = [mod for mod in all_app_modules if get_module_wise_sheet_name(mod) == sheet_name]
            if not target_modules:
                continue

            df_ext = pd.read_excel(xl, sheet_name=sheet_name)
            col_list = [str(c).strip().lower() for c in df_ext.columns]
            
            table_col_idx = -1
            for i, col in enumerate(col_list):
                if 'table' in col or 'name' in col or 'tab' in col:
                    table_col_idx = i
                    break
            if table_col_idx == -1:
                table_col_idx = 0

            for _, row in df_ext.iterrows():
                t_name = str(row.iloc[table_col_idx]).strip()
                if not t_name or t_name.lower() == 'nan':
                    continue
                
                table_only = t_name.split('.')[-1] if '.' in t_name else t_name
                table_normalized = normalize(table_only)
                
                if table_normalized in created_tables_normalized:
                    full_name = table_name_map.get(table_normalized)
                    if full_name:
                        for target_module in target_modules:
                            # Only process if target module is NOT yet executed (upcoming module)
                            if target_module.lower() not in executed_modules:
                                ext_users = get_module_app_users(target_module)
                                for app_user in ext_users:
                                    if full_name not in upcoming_access_map[target_module][app_user]:
                                        upcoming_access_map[target_module][app_user].append(full_name)

        if not upcoming_access_map:
            return False

        # Get screen order for folder naming
        screen_order_for_folder = screen_number
        if screen_order_map and full_df is not None and tables_in_this_batch:
            first_table = tables_in_this_batch[0]
            if isinstance(first_table, tuple):
                first_table_name = first_table[0]
            else:
                first_table_name = first_table
            
            table_only = first_table_name.split('.')[-1] if '.' in first_table_name else first_table_name
            matching_rows = full_df[full_df['TABLE_NAME_ONLY_NORMALIZED'] == normalize(table_only)]
            if not matching_rows.empty and 'SCREEN_ORDER' in matching_rows.columns:
                screen_order_from_excel = matching_rows.iloc[0]['SCREEN_ORDER']
                try:
                    screen_order_for_folder = int(screen_order_from_excel) if pd.notna(screen_order_from_excel) else screen_number
                except (ValueError, TypeError):
                    screen_order_for_folder = screen_number
        
        # Use batch number BEFORE schema batch (will be used when target module runs)
        # Store in state for later use when target module processes
        folders_created = False
        
        # Create separate folder for each app_user of each upcoming module
        for target_module, app_user_tables in sorted(upcoming_access_map.items()):
            for app_user, tables in sorted(app_user_tables.items()):
                # Get batch number - this will be used BEFORE target module's schema batch
                batch_number = get_next_batch_number(state, f"upcoming module '{target_module}' app_user '{app_user}' permissions on '{current_module_name}' tables")
                
                # Create folder name - use target module name and screen number from current module
                folder_name = create_permission_folder_name(
                    batch_number=batch_number,
                    app_user_name=app_user,
                    screen_name=target_module.lower(),  # Use target module name
                    screen_number=screen_order_for_folder if screen_order_for_folder else 1,
                    migration_type="permission",
                    migration_number=1
                )
                
                folder_abs = os.path.abspath(os.path.join(OUTPUT_FOLDER, folder_name))
                paths = {
                    "scripts": os.path.join(folder_abs, "scripts", "ddl", "permissions"),
                    "rollback": os.path.join(folder_abs, "rollback", "ddl", "permissions"),
                }
                for p in paths.values(): 
                    os.makedirs(p, exist_ok=True)

                # Extract unique schemas from the tables list
                table_schemas = set()
                tables_list = sorted(tables)
                for t in tables_list:
                    if '.' in t:
                        schema = t.split('.')[0].lower()
                        table_schemas.add(schema)
                
                # Grant USAGE on all schemas used by these tables
                sql = []
                sql.append(f"-- Permissions for upcoming module '{target_module}': Grant access to {app_user}")
                sql.append(f"-- on tables created by module '{current_module_name}'")
                sql.append("")
                for schema in sorted(table_schemas):
                    sql.append(f"GRANT USAGE ON SCHEMA {schema} TO {app_user};")
                sql.append("")
                
                # Grant permissions on tables
                for t in tables_list:
                    sql.append(f"GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE {t} TO {app_user};")
                
                with open(os.path.join(paths["scripts"], "001_grant_permissions.sql"), "w", encoding="utf-8") as f:
                    f.write("\n".join(sql))

                rb = []
                rb.append(f"-- Rollback: Revoke permissions from {app_user}")
                rb.append(f"-- on tables created by module '{current_module_name}'")
                rb.append("")
                for t in reversed(tables_list):
                    rb.append(f"REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE {t} FROM {app_user};")
                rb.append("")
                for schema in reversed(sorted(table_schemas)):
                    rb.append(f"REVOKE USAGE ON SCHEMA {schema} FROM {app_user};")
                
                with open(os.path.join(paths["rollback"], "001_rollback_grant_permissions.sql"), "w", encoding="utf-8") as f:
                    f.write("\n".join(rb))
                
                print(f"     Created permission folder for upcoming module '{target_module}' app_user '{app_user}': {folder_name}")
                folders_created = True

        return folders_created

    except Exception as e:
        print(f"     ERROR processing permissions for upcoming modules: {e}")
        import traceback
        traceback.print_exc()
        return False
    finally:
        if temp_copy_path and os.path.exists(temp_copy_path):
            try:
                os.remove(temp_copy_path)
            except:
                pass


def process_permissions_for_current_module_app_users(current_module_name, state, executed_modules, screen_order_map=None, full_df=None, table_sql_map=None):
    """
    Process permissions for current module's app_users on tables from already-executed modules.
    Creates grant permission folders when the target app_user's module is executing (first batch).
    
    @description For every table, check Excel (Module Wise tables): if this module's sheet lists
    that table, record it and create grant permission folder when this module runs - like checking
    for schema batch. Iterates every row in this module's sheet; resolves table owner from Excel/dump;
    only includes tables from already-executed modules; creates one permission folder per app_user.
    @param {str} current_module_name - Name of the module being processed
    @param {dict} state - Global migration state object
    @param {set} executed_modules - Set of modules that were already executed
    @param {dict} screen_order_map - Map of screen names to SCREEN_ORDER values
    @param {DataFrame} full_df - Full Excel DataFrame for getting table and screen information
    @param {dict} table_sql_map - Mapping of table names to SQL from dump.sql (to get actual schema)
    @returns {bool} True if any permission folder was created, False otherwise
    """
    if not os.path.exists(MODULE_WISE_TABLES_FILE) or not executed_modules or full_df is None:
        return False
    
    temp_copy_path = None
    try:
        # Get app_users for current module
        if 'app_user_mapping_cache' not in globals():
            globals()['app_user_mapping_cache'] = read_app_user_mapping()
        
        current_module_app_users = get_module_app_users(current_module_name)
        if not current_module_app_users:
            return False
        
        # Copy to temporary file to bypass potential file locks
        try:
            import tempfile
            temp_fd, temp_copy_path = tempfile.mkstemp(suffix='.xlsx')
            os.close(temp_fd)
            shutil.copy2(MODULE_WISE_TABLES_FILE, temp_copy_path)
            read_path = temp_copy_path
        except Exception:
            read_path = MODULE_WISE_TABLES_FILE
        
        xl = pd.ExcelFile(read_path)
        current_sheet = get_module_wise_sheet_name(current_module_name)
        
        if current_sheet not in xl.sheet_names:
            return False
        
        df_current = pd.read_excel(xl, sheet_name=current_sheet)
        col_list = [str(c).strip().lower() for c in df_current.columns]
        
        table_col_idx = -1
        for i, col in enumerate(col_list):
            if 'table' in col or 'name' in col or 'tab' in col:
                table_col_idx = i
                break
        if table_col_idx == -1:
            table_col_idx = 0
        
        schema_col_idx = -1
        for i, col in enumerate(col_list):
            if i != table_col_idx and ('schema' in col or 'dev' in col or 'mod' in col):
                schema_col_idx = i
                break
        if schema_col_idx == -1:
            schema_col_idx = 1
        
        # Map: required_module -> (tables set, app_users that need them).
        # We create ONE folder per required_module and grant ALL app_users in that folder (avoids duplicate folder names).
        required_module_tables = defaultdict(set)   # required_module -> set of full table names
        required_module_app_users = defaultdict(set)  # required_module -> set of app_users that need those tables
        
        # Process every table listed in current module's sheet
        for _, row in df_current.iterrows():
            t_name = str(row.iloc[table_col_idx]).strip()
            if not t_name or t_name.lower() == 'nan':
                continue
            
            table_only = t_name.split('.')[-1] if '.' in t_name else t_name
            table_normalized = normalize(table_only)
            
            # Resolve table owner and full name from dump.sql only (ignore schema from Excel)
            table_module = get_table_module(table_only, full_df)
            full_table_name = None
            if table_sql_map:
                for table_key in table_sql_map.keys():
                    key_only = table_key.split('.')[-1] if '.' in table_key else table_key
                    if normalize(key_only) == table_normalized:
                        full_table_name = table_key.lower()  # schema.table from dump.sql
                        if not table_module and '.' in table_key:
                            table_module = table_key.split('.')[0]
                        break
            
            if not full_table_name:
                # Fallback: use table_module (or current) as schema - never use Excel schema
                schema_from_dump = (table_module or current_module_name).lower()
                full_table_name = f"{schema_from_dump}.{table_only}"
            
            # Only grant if this table belongs to an already-executed module (required_module)
            if table_module and table_module.lower() in executed_modules:
                required_module = table_module.lower()
                required_module_tables[required_module].add(full_table_name)
                required_module_app_users[required_module].update(current_module_app_users)
        
        if not required_module_tables:
            return False
        
        # Get screen order for folder naming (use first screen's order or default)
        screen_order_for_folder = 1
        if screen_order_map:
            # Get first screen order from current module
            for screen_name, order in screen_order_map.items():
                screen_order_for_folder = order
                break
        
        folders_created = False
        
        # Create ONE folder per required_module; grant ALL app_users on that module's tables in a single SQL file
        for required_module in sorted(required_module_tables.keys()):
            tables_set = required_module_tables[required_module]
            app_users_set = required_module_app_users.get(required_module, current_module_app_users)
            if not tables_set:
                continue
            
            tables_list_sorted = sorted(tables_set)
            
            # Get batch number - one per required_module (not per app_user)
            batch_number = get_next_batch_number(state, f"module '{current_module_name}' required_module '{required_module}' permissions")
            
            # Folder name: required module name (e.g. organization), one folder per required module
            folder_name = create_permission_folder_name(
                batch_number=batch_number,
                app_user_name=required_module,
                screen_name=current_module_name.lower(),
                screen_number=screen_order_for_folder,
                migration_type="permission",
                migration_number=1
            )
            
            folder_abs = os.path.abspath(os.path.join(OUTPUT_FOLDER, folder_name))
            paths = {
                "scripts": os.path.join(folder_abs, "scripts", "ddl", "permissions"),
                "rollback": os.path.join(folder_abs, "rollback", "ddl", "permissions"),
            }
            for p in paths.values(): 
                os.makedirs(p, exist_ok=True)
            
            table_schemas = set()
            for t in tables_list_sorted:
                if '.' in t:
                    table_schemas.add(t.split('.')[0].lower())
            
            # Single SQL file: grant ALL app_users on these tables (no duplication of folders)
            sql = []
            sql.append(f"-- Permissions for module '{current_module_name}': Grant access to tables from required module '{required_module}'")
            sql.append(f"-- App users: {', '.join(sorted(app_users_set))}")
            sql.append("")
            for schema in sorted(table_schemas):
                for app_user in sorted(app_users_set):
                    sql.append(f"GRANT USAGE ON SCHEMA {schema} TO {app_user};")
            sql.append("")
            for t in tables_list_sorted:
                for app_user in sorted(app_users_set):
                    sql.append(f"GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE {t} TO {app_user};")
            
            with open(os.path.join(paths["scripts"], "001_grant_permissions.sql"), "w", encoding="utf-8") as f:
                f.write("\n".join(sql))
            
            rb = []
            rb.append(f"-- Rollback: Revoke permissions on tables from required module '{required_module}'")
            rb.append("")
            for t in reversed(tables_list_sorted):
                for app_user in sorted(app_users_set):
                    rb.append(f"REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE {t} FROM {app_user};")
            rb.append("")
            for schema in reversed(sorted(table_schemas)):
                for app_user in sorted(app_users_set):
                    rb.append(f"REVOKE USAGE ON SCHEMA {schema} FROM {app_user};")
            
            with open(os.path.join(paths["rollback"], "001_rollback_grant_permissions.sql"), "w", encoding="utf-8") as f:
                f.write("\n".join(rb))
            
            print(f"     Created permission folder for required module '{required_module}' -> all app_users (target module '{current_module_name}'): {folder_name}")
            folders_created = True
        
        return folders_created
    
    except Exception as e:
        print(f"     ERROR processing permissions for current module app_users: {e}")
        import traceback
        traceback.print_exc()
        return False
    finally:
        if temp_copy_path and os.path.exists(temp_copy_path):
            try:
                os.remove(temp_copy_path)
            except:
                pass


def process_global_users_permissions(current_module_name, state, tables_in_this_batch, screen_number=None, screen_order_map=None, full_df=None, schema_batch_number=None, modules_executed_before_run=None, screen_name=None):
    """
    Process global users (magic_read_app_user, magic_save_app_user, auth_app_user) permissions.
    These users are module-irrelevant and need to be checked for EVERY schema batch.
    
    @description Global users are module-irrelevant. Checks "Magic Read", "Magic Save", and "Auth" sheets
    in Module Wise tables.xlsx. Creates permission folders for every schema batch when those sheets
    list tables from the current batch (no module execution check).
    @param {str} current_module_name - Name of the module just processed
    @param {dict} state - Global migration state object
    @param {list} tables_in_this_batch - Tables created in this specific batch/screen
    @param {int} screen_number - Screen number for folder naming (uses SCREEN_ORDER from Excel)
    @param {dict} screen_order_map - Map of screen names to SCREEN_ORDER values
    @param {DataFrame} full_df - Full Excel DataFrame for getting SCREEN_ORDER
    @param {int} schema_batch_number - Batch number of the schema batch (will use this instead of generating new one)
    @param {str} screen_name - Optional screen name (e.g. "skill master") to include in folder name when available
    @returns {bool} True if any permission folder was created, False otherwise
    """
    if not tables_in_this_batch:
        return False
    
    if not os.path.exists(MODULE_WISE_TABLES_FILE):
        return False
    
    current_module_normalized = current_module_name.lower()
    
    # Global users are module-irrelevant: create permissions for every schema batch when
    # Magic Read / Magic Save / Auth sheets list those tables (no "already executed" check).
    
    # Build a map of table names (without schema) to their full names (with schema from dump.sql)
    table_name_map = {}  # Maps normalized table name (without schema) -> full table name (with schema)
    created_tables_normalized = set()
    
    for table_item in tables_in_this_batch:
        if isinstance(table_item, tuple):
            table_name = table_item[0]
        else:
            table_name = table_item
        
        # Extract schema and table name
        if '.' in table_name:
            schema = table_name.split('.')[0].lower()
            table_only = table_name.split('.')[-1]
        else:
            schema = current_module_name.lower()
            table_only = table_name
        
        table_normalized = normalize(table_only)
        created_tables_normalized.add(table_normalized)
        # Store the full table name with schema
        full_table_name = f"{schema}.{table_only}" if '.' not in table_name else table_name.lower()
        table_name_map[table_normalized] = full_table_name
    
    # Read Module Wise tables.xlsx and check "Magic Read", "Magic Save", and "Auth" sheets
    temp_copy_path = None
    try:
        try:
            import tempfile
            temp_fd, temp_copy_path = tempfile.mkstemp(suffix='.xlsx')
            os.close(temp_fd)
            shutil.copy2(MODULE_WISE_TABLES_FILE, temp_copy_path)
            read_path = temp_copy_path
        except Exception:
            read_path = MODULE_WISE_TABLES_FILE
        
        xl = pd.ExcelFile(read_path)
        
        # Map: app_user -> list of tables they need
        global_user_tables = defaultdict(set)
        
        # Check "Magic Read", "Magic Save", and "Auth" sheets
        # Try multiple variations of sheet names (case-insensitive matching)
        magic_sheets_map = {
            'Magic Read': 'magic_read_app_user',
            'Magic Save': 'magic_save_app_user',
            'Auth': 'auth_app_user'
        }
        
        # Find matching sheet names (case-insensitive)
        available_sheets_lower = {s.lower(): s for s in xl.sheet_names}
        
        for expected_sheet_name, app_user in magic_sheets_map.items():
            # Try exact match first
            if expected_sheet_name in xl.sheet_names:
                actual_sheet_name = expected_sheet_name
            elif expected_sheet_name.lower() in available_sheets_lower:
                actual_sheet_name = available_sheets_lower[expected_sheet_name.lower()]
            else:
                # Try case-insensitive match
                found = False
                for available_sheet in xl.sheet_names:
                    if available_sheet.lower() == expected_sheet_name.lower():
                        actual_sheet_name = available_sheet
                        found = True
                        break
                if not found:
                    print(f"  DEBUG: Sheet '{expected_sheet_name}' not found in Excel. Available sheets: {xl.sheet_names}")
                    continue
            
            df_magic = pd.read_excel(xl, sheet_name=actual_sheet_name)
            col_list = [str(c).strip().lower() for c in df_magic.columns]
            
            # Find table column
            table_col_idx = -1
            for i, col in enumerate(col_list):
                if 'table' in col or 'name' in col or 'tab' in col:
                    table_col_idx = i
                    break
            if table_col_idx == -1:
                table_col_idx = 0
            
            print(f"  DEBUG: Processing global user '{app_user}' from sheet '{actual_sheet_name}' ({len(df_magic)} rows)")
            
            # Check each row in the sheet
            for _, row in df_magic.iterrows():
                table_value = str(row.iloc[table_col_idx]).strip() if table_col_idx < len(row) else ""
                if not table_value or table_value.lower() in ['nan', 'none', '']:
                    continue
                
                table_normalized = normalize(table_value)
                if table_normalized in created_tables_normalized:
                    # This table is in the current batch
                    global_user_tables[app_user].add(table_name_map[table_normalized])
    except Exception as e:
        print(f"  WARNING: Error reading Module Wise tables.xlsx for global users: {e}")
        return False
    finally:
        if temp_copy_path and os.path.exists(temp_copy_path):
            try:
                os.remove(temp_copy_path)
            except:
                pass
    
    # Check if we have any tables needed by global users
    if not global_user_tables:
        return False
    
    folders_created = False
    
    # Get screen order for folder naming (use SCREEN_ORDER from Excel)
    screen_order_for_folder = screen_number
    if screen_order_map and full_df is not None:
        # Try to find screen name from tables to get SCREEN_ORDER
        first_table = tables_in_this_batch[0]
        if isinstance(first_table, tuple):
            first_table_name = first_table[0]
        else:
            first_table_name = first_table
        
        table_only = first_table_name.split('.')[-1] if '.' in first_table_name else first_table_name
        matching_rows = full_df[full_df['TABLE_NAME_ONLY_NORMALIZED'] == normalize(table_only)]
        if not matching_rows.empty and 'SCREEN_ORDER' in matching_rows.columns:
            screen_order_from_excel = matching_rows.iloc[0]['SCREEN_ORDER']
            try:
                screen_order_for_folder = int(screen_order_from_excel) if pd.notna(screen_order_from_excel) else screen_number
            except (ValueError, TypeError):
                screen_order_for_folder = screen_number
    elif screen_order_map:
        screen_order_for_folder = screen_number
    
    # Global users permissions should be the LAST batch of the module
    # Use sequential batch numbers (will be after all other batches including data batches)
    # Process each global user that has tables in their sheet
    for app_user, tables_list in global_user_tables.items():
        if not tables_list:
            continue
        
        # Get next batch number - this will be the last batch of the module
        batch_number = get_next_batch_number(state, f"global user '{app_user}' permissions for module '{current_module_name}' (last batch)")
        
        # Create folder name: include screen name when available, else module name
        folder_screen_name = (screen_name or current_module_name or "").strip().lower().replace(" ", "_")
        if not folder_screen_name:
            folder_screen_name = current_module_name.lower()
        folder_name = create_permission_folder_name(
            batch_number=batch_number,
            app_user_name=app_user,
            screen_name=folder_screen_name,
            screen_number=screen_order_for_folder if screen_order_for_folder else 1,
            migration_type="permission",
            migration_number=1
        )
        
        folder_abs = os.path.abspath(os.path.join(OUTPUT_FOLDER, folder_name))
        paths = {
            "scripts": os.path.join(folder_abs, "scripts", "ddl", "permissions"),
            "rollback": os.path.join(folder_abs, "rollback", "ddl", "permissions"),
        }
        for p in paths.values(): 
            os.makedirs(p, exist_ok=True)

        # Extract unique schemas from the tables list
        table_schemas = set()
        tables_list_sorted = sorted(list(tables_list))
        for t in tables_list_sorted:
            if '.' in t:
                schema = t.split('.')[0].lower()
                table_schemas.add(schema)
            else:
                table_schemas.add(current_module_name.lower())
        
        # Grant USAGE on all schemas used by these tables
        sql = []
        sql.append(f"-- Global user permissions: Grant access to {app_user}")
        sql.append(f"-- on tables created by module '{current_module_name}'")
        sql.append("")
        for schema in sorted(table_schemas):
            sql.append(f"GRANT USAGE ON SCHEMA {schema} TO {app_user};")
        sql.append("")
        
        # Grant permissions on tables
        for t in tables_list_sorted:
            sql.append(f"GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE {t} TO {app_user};")
        
        with open(os.path.join(paths["scripts"], "001_grant_permissions.sql"), "w", encoding="utf-8") as f:
            f.write("\n".join(sql))

        rb = []
        rb.append(f"-- Rollback: Revoke permissions from {app_user}")
        rb.append(f"-- on tables created by module '{current_module_name}'")
        rb.append("")
        for t in reversed(tables_list_sorted):
            rb.append(f"REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE {t} FROM {app_user};")
        rb.append("")
        for schema in reversed(sorted(table_schemas)):
            rb.append(f"REVOKE USAGE ON SCHEMA {schema} FROM {app_user};")
        
        with open(os.path.join(paths["rollback"], "001_rollback_grant_permissions.sql"), "w", encoding="utf-8") as f:
            f.write("\n".join(rb))
        
        print(f"     Created global user permission folder for {app_user}: {folder_name}")
        folders_created = True
    
    return folders_created


def normalize(name: str) -> str:
    return name.replace('"', '').strip().lower()


def abbreviate_word(word: str, min_len: int = 4) -> str:
    """
    Abbreviate a word by keeping first vowel group and removing vowels from the rest.
    
    @description Intelligently abbreviates words while preserving readability
    @param {str} word - The word to abbreviate
    @param {int} min_len - Minimum length to keep (default: 4)
    @returns {str} Abbreviated word
    @author Aravind Sekar
    @created 20-01-2025
    """
    if len(word) <= min_len:
        return word

    # Keep first vowel group
    match = re.search(r'[aeiou]+', word)
    if not match:
        return word[:min_len]

    prefix = word[:match.end()]
    rest = re.sub(r'[aeiou]', '', word[match.end():])

    abbreviated = prefix + rest

    # Safety guard
    return abbreviated if len(abbreviated) >= min_len else word[:min_len]


def smart_trim_filename(
    filename: str,
    lead_tokens: int = 4,     # e.g. 001_rollback_create_table
    tail_tokens: int = 2,     # e.g. type_lk
    max_len: int = 255        # Git/GitHub max filename length
) -> str:
    """
    Intelligently trim long filenames while preserving important parts.
    
    @description Abbreviates middle tokens of long filenames to fit within max length
    @param {str} filename - The full filename to trim
    @param {int} lead_tokens - Number of leading tokens to preserve (default: 4)
    @param {int} tail_tokens - Number of trailing tokens to preserve (default: 2)
    @param {int} max_len - Maximum filename length (default: 255 for Git/GitHub)
    @returns {str} Trimmed filename that fits within max_len
    @author Aravind Sekar
    @created 20-01-2025
    """
    if len(filename) <= max_len:
        return filename

    name, ext = os.path.splitext(filename)
    tokens = name.split('_')

    if len(tokens) <= lead_tokens + tail_tokens:
        return filename  # nothing safe to abbreviate

    head = tokens[:lead_tokens]
    tail = tokens[-tail_tokens:]
    middle = tokens[lead_tokens:-tail_tokens]

    shortened_middle = [
        abbreviate_word(t) for t in middle
    ]

    new_name = '_'.join(head + shortened_middle + tail)
    candidate = new_name + ext

    # Final hard safety: hash middle if still too long
    if len(candidate) > max_len:
        import hashlib
        middle_str = '_'.join(middle)
        digest = hashlib.sha1(middle_str.encode()).hexdigest()[:8]

        new_name = '_'.join(
            head + [f'x{digest}'] + tail
        )
        candidate = new_name + ext

    return candidate


def abbreviate_folder_table_name(table_name: str, max_length: int = 75) -> str:
    """
    Abbreviate table name for use in folder names to avoid Git path length issues.
    Uses intelligent abbreviation before falling back to hash.
    
    @description Intelligently abbreviates table names for folder names while preserving readability
    @param {str} table_name - The table name to abbreviate
    @param {int} max_length - Maximum length for the abbreviated name (default: 75)
    @returns {str} Abbreviated table name
    @author Aravind Sekar
    @created 20-01-2025
    """
    if len(table_name) <= max_length:
        return table_name
    
    # Split by underscores to get parts
    parts = table_name.split('_')
    
    if len(parts) <= 2:
        # Simple name - just truncate
        return table_name[:max_length]
    
    # Abbreviate middle parts, keep first and last parts
    if len(parts) >= 3:
        first_part = parts[0]
        last_part = parts[-1]
        middle_parts = parts[1:-1]
        
        # Step 1: Abbreviate middle parts using intelligent abbreviation
        abbreviated_middle = [abbreviate_word(part) for part in middle_parts]
        abbreviated = '_'.join([first_part] + abbreviated_middle + [last_part])
        
        # Step 2: If still too long, abbreviate more aggressively (keep first 3 chars of each middle part)
        if len(abbreviated) > max_length:
            abbreviated_middle_aggressive = []
            for part in middle_parts:
                if len(part) > 3:
                    # Keep first 3 characters
                    abbreviated_middle_aggressive.append(part[:3])
                else:
                    abbreviated_middle_aggressive.append(part)
            abbreviated = '_'.join([first_part] + abbreviated_middle_aggressive + [last_part])
        
        # Step 3: If still too long, truncate middle parts more (keep first 2 chars)
        if len(abbreviated) > max_length:
            abbreviated_middle_very_aggressive = []
            for part in middle_parts:
                if len(part) > 2:
                    abbreviated_middle_very_aggressive.append(part[:2])
                else:
                    abbreviated_middle_very_aggressive.append(part)
            abbreviated = '_'.join([first_part] + abbreviated_middle_very_aggressive + [last_part])
        
        # Step 4: If still too long, try keeping only first and last 2 parts
        if len(abbreviated) > max_length and len(parts) > 4:
            # Keep: first_part, second_part (abbreviated), ...last_2_parts
            second_part = parts[1][:3] if len(parts[1]) > 3 else parts[1]
            last_two = '_'.join(parts[-2:])
            abbreviated = f'{first_part}_{second_part}_{last_two}'
        
        # Step 5: If still too long, truncate last part
        if len(abbreviated) > max_length:
            available = max_length - len(first_part) - 1  # 1 for underscore
            if available > 10:  # Only if we have reasonable space
                # Keep first part and truncated last part
                abbreviated = f'{first_part}_{last_part[:available]}'
            else:
                # Last resort: use hash (but try to keep first part readable)
                import hashlib
                digest = hashlib.sha1(table_name.encode()).hexdigest()[:8]
                abbreviated = f'{first_part}_x{digest}'
        
        return abbreviated
    
    return table_name[:max_length]


def generate_matching_filenames(table_name: str, prefix: str = '001') -> tuple:
    """
    Generate matching create and rollback filenames with smart abbreviation.
    Ensures both files have the same base name for Liquibase identification.
    
    @description Generates abbreviated filenames that match between create and rollback files
    @param {str} table_name - The table name (without schema prefix)
    @param {str} prefix - The numeric prefix (e.g., '001')
    @returns {tuple} (create_filename, rollback_filename) - Both with matching abbreviations
    @author Aravind Sekar
    @created 20-01-2025
    """
    # Extract table name without schema
    name = table_name.split('.')[-1] if '.' in table_name else table_name
    
    # Generate the full filenames first
    create_full = f'{prefix}_create_table_{name}.sql'
    rollback_full = f'{prefix}_rollback_create_table_{name}.sql'
    
    # Check if either needs abbreviation
    create_needs_abbrev = len(create_full) > 255
    rollback_needs_abbrev = len(rollback_full) > 255
    
    if not create_needs_abbrev and not rollback_needs_abbrev:
        # No abbreviation needed
        return (create_full, rollback_full)
    
    # Need to abbreviate - abbreviate the table name part first, then build both filenames
    # This ensures both use the same abbreviated table name
    table_name_part = name
    
    # Abbreviate just the table name part using smart_trim_filename logic
    # We'll apply the abbreviation to a dummy filename to extract the abbreviated name
    dummy_rollback = f'{prefix}_rollback_create_table_{table_name_part}.sql'
    rollback_abbreviated = smart_trim_filename(dummy_rollback)
    
    # Extract the abbreviated table name from the rollback filename
    # Format: prefix_rollback_create_table_<abbreviated_name>.sql
    rollback_prefix = f'{prefix}_rollback_create_table_'
    if rollback_abbreviated.startswith(rollback_prefix):
        abbreviated_name = rollback_abbreviated[len(rollback_prefix):-4]  # Remove .sql
    else:
        # If structure changed (e.g., hash was used), try to extract from tokens
        parts = rollback_abbreviated.replace('.sql', '').split('_')
        if len(parts) >= 5:
            # Format: prefix_rollback_create_table_name (or with hash)
            abbreviated_name = '_'.join(parts[4:])
        else:
            # Fallback: truncate the original name
            max_name_len = 255 - len(f'{prefix}_create_table_.sql')
            abbreviated_name = name[:max_name_len] if len(name) > max_name_len else name
    
    # Generate both filenames with the same abbreviated table name
    create_filename = f'{prefix}_create_table_{abbreviated_name}.sql'
    rollback_filename = f'{prefix}_rollback_create_table_{abbreviated_name}.sql'
    
    # Final safety check - ensure both are within limits
    if len(create_filename) > 255:
        create_filename = smart_trim_filename(create_filename)
    if len(rollback_filename) > 255:
        rollback_filename = smart_trim_filename(rollback_filename)
    
    return (create_filename, rollback_filename)


def get_long_path(path):
    r"""
    Convert a path to Windows long path format (\\?\ prefix) if on Windows.
    This allows paths longer than 260 characters on Windows.
    
    @description Converts a path to use Windows long path prefix to bypass MAX_PATH limit
    @param {str} path - The path to convert
    @returns {str} The path with long path prefix if on Windows, otherwise unchanged
    @author Aravind Sekar
    @created 20-01-2025
    """
    if sys.platform == 'win32':
        # Convert to absolute path first
        path = os.path.abspath(path)
        # Add long path prefix if not already present and path is absolute
        if not path.startswith('\\\\?\\'):
            # For UNC paths, use \\?\UNC\ prefix
            if path.startswith('\\\\'):
                path = '\\\\?\\UNC\\' + path[2:]
            else:
                path = '\\\\?\\' + path
    return path


def read_excel_mapping():
    """Read Excel file and return DataFrame with MODULE, TABLE_NAME, SCREEN_NAME, SCREEN_ORDER columns."""
    temp_copy_path = None
    temp_fixed_path = None
    try:
        # Use absolute path for reliability
        excel_abs_path = os.path.abspath(EXCEL_FILE)
        if not os.path.exists(excel_abs_path):
            # Try relative to current directory as fallback
            if os.path.exists("DB-SCHEMA_LATEST.xlsx"):
                excel_abs_path = os.path.abspath("DB-SCHEMA_LATEST.xlsx")
            else:
                raise FileNotFoundError(f"Excel file not found at: {excel_abs_path}")
            
        # Check if file is empty or locked
        if os.path.getsize(excel_abs_path) == 0:
            raise ValueError("The Excel file is empty (0 bytes).")

        print(f"INFO: Attempting to read Excel: {excel_abs_path}")
        
        # ---------------------------------------------------------------------
        # STEP 1: Handle 'Strict' OpenXML by converting to 'Transitional'
        # This fixes 'No worksheets found' error in openpyxl for Strict files.
        # ---------------------------------------------------------------------
        try:
            import zipfile
            from io import BytesIO
            
            # Create a fixed version in memory or temp file
            fixed_buffer = BytesIO()
            with zipfile.ZipFile(excel_abs_path, 'r') as zin:
                with zipfile.ZipFile(fixed_buffer, 'w') as zout:
                    for item in zin.infolist():
                        buffer = zin.read(item.filename)
                        # Patch XML files to change Strict namespace to Transitional
                        if item.filename.endswith('.xml') or item.filename.endswith('.rels'):
                            # Replace Strict namespaces with Transitional ones
                            # 1. Main spreadsheetml namespace
                            buffer = buffer.replace(
                                b'http://purl.oclc.org/ooxml/spreadsheetml/main',
                                b'http://schemas.openxmlformats.org/spreadsheetml/2006/main'
                            )
                            # 2. Relationships namespace
                            buffer = buffer.replace(
                                b'http://purl.oclc.org/ooxml/officeDocument/relationships',
                                b'http://schemas.openxmlformats.org/officeDocument/2006/relationships'
                            )
                            # 3. Markup compatibility (optional but safer)
                            buffer = buffer.replace(
                                b'http://purl.oclc.org/ooxml/markup-compatibility/2006',
                                b'http://schemas.openxmlformats.org/markup-compatibility/2006'
                            )
                        zout.writestr(item, buffer)
            
            # Save the fixed buffer to a temp file for pandas to read
            temp_fixed_fd, temp_fixed_path = tempfile.mkstemp(suffix='_fixed.xlsx')
            os.close(temp_fixed_fd)
            with open(temp_fixed_path, 'wb') as f:
                f.write(fixed_buffer.getvalue())
            
            read_path = temp_fixed_path
            print(f"   INFO: Applied 'Strict-to-Transitional' patch to bypass openpyxl limitations.")
        except Exception as patch_err:
            print(f"   WARNING: 'Strict' patch failed: {patch_err}. Proceeding with original file...")
            read_path = excel_abs_path

        # Try multiple engines/approaches for robustness
        xl = None
        sheet_names = []
        
        # Try openpyxl directly first (most robust for XLSX)
        try:
            import openpyxl
            import warnings
            # Suppress the specific openpyxl warning about defined names as it's usually harmless
            with warnings.catch_warnings():
                warnings.filterwarnings("ignore", category=UserWarning)
                # Use data_only=True to get values instead of formulas
                wb = openpyxl.load_workbook(get_long_path(read_path), read_only=True, data_only=True)
                sheet_names = wb.sheetnames
                wb.close()
            if sheet_names:
                print(f"   SUCCESS: openpyxl successfully detected sheets: {sheet_names}")
        except Exception as e:
            print(f"   WARNING: Direct openpyxl check failed: {e}")

        # If direct openpyxl didn't get sheets, try pandas ExcelFile
        if not sheet_names:
            try:
                xl = pd.ExcelFile(get_long_path(read_path), engine='openpyxl')
                sheet_names = xl.sheet_names
            except Exception as e1:
                print(f"   WARNING: pandas openpyxl engine failed: {e1}")
                try:
                    xl = pd.ExcelFile(get_long_path(read_path))
                    sheet_names = xl.sheet_names
                except Exception as e2:
                    print(f"   WARNING: pandas default engine failed: {e2}")

        if not sheet_names:
            raise ValueError(f"No worksheets found in {excel_abs_path}. The file structure may be unsupported.")
        
        print(f"INFO: Found {len(sheet_names)} sheets: {sheet_names}")
        
        # Pick the most likely sheet (Priority: 1. CLIENT_DB_DATA_MODEL, 2. TABLE/SCHEMA/MASTER/TRACKING, 3. first one)
        target_sheet = None
        # Priority 1: Exact match (case insensitive)
        for s in sheet_names:
            if s.upper() == 'CLIENT_DB_DATA_MODEL':
                target_sheet = s
                break
        
        # Priority 2: Keywords
        if not target_sheet:
            for s in sheet_names:
                if any(x in s.upper() for x in ['TABLE', 'SCHEMA', 'MASTER', 'TRACKING']):
                    target_sheet = s
                    break
        
        # Priority 3: Fallback to first sheet
        if not target_sheet:
            target_sheet = sheet_names[0]
            
        print(f"INFO: Reading data from sheet: '{target_sheet}'")
        # Use the most successful path to read the data
        try:
            df = pd.read_excel(get_long_path(read_path), sheet_name=target_sheet, engine='openpyxl')
        except Exception as e_read:
            print(f"   WARNING: Primary read failed ({e_read}), trying secondary...")
            try:
                df = pd.read_excel(get_long_path(read_path), sheet_name=target_sheet)
            except Exception as e_final:
                print(f"   ERROR: All read attempts failed for sheet '{target_sheet}'.")
                raise e_final
        
        # Load Lookup Table List if exists
        lookup_tables_set = set()
        if 'TABLE_LIST1' in sheet_names:
            print(f"INFO: Loading lookup definitions from 'TABLE_LIST1'")
            try:
                df_lookup = pd.read_excel(get_long_path(read_path), sheet_name='TABLE_LIST1', engine='openpyxl')
                # Look for table and type columns in the lookup sheet
                l_col = next((c for c in df_lookup.columns if any(x in str(c).upper() for x in ['TABLE_NAME', 'TAB_NAME'])), None)
                if not l_col:
                    l_col = next((c for c in df_lookup.columns if any(x in str(c).upper() for x in ['TABLE', 'TAB']) and 'TYPE' not in str(c).upper()), None)
                
                t_col = next((c for c in df_lookup.columns if any(x in str(c).upper() for x in ['TABLE_TYPE', 'TYPE'])), None)
                
                if l_col and t_col:
                    current_lookup_type_map = {}
                    for _, row in df_lookup.iterrows():
                        t_val = row[l_col]
                        type_val = row[t_col]
                        if pd.notna(t_val) and pd.notna(type_val):
                            t_name = str(t_val).split('.')[-1]
                            t_type = str(type_val).lower().strip()
                            if t_type == 'lookup':
                                table_key = normalize(t_name)
                                lookup_tables_set.add(table_key)
                                current_lookup_type_map[table_key] = t_type
                    
                    # Store in globals for access in main loop
                    globals()['lookup_type_map_cache'] = current_lookup_type_map
                    print(f"   SUCCESS: Loaded {len(lookup_tables_set)} lookup tables from TABLE_LIST1")
            except Exception as e_lookup:
                print(f"   WARNING: Could not read TABLE_LIST1: {e_lookup}")
        
        # Normalize column names
        df.columns = df.columns.str.strip()

        # Flexibly find required columns
        module_col = next((c for c in df.columns if any(x in str(c).upper() for x in ['MODULE', 'DEV', 'SCHEMA'])), None)
        table_col = next((c for c in df.columns if any(x in str(c).upper() for x in ['TABLE', 'TAB'])), None)
        screen_col = next((c for c in df.columns if any(x in str(c).upper() for x in ['SCREEN', 'UI'])), None)
        order_col = next((c for c in df.columns if any(x in str(c).upper() for x in ['ORDER', 'SEQ', 'POS'])), None)
        # Look for TABLE_TYPE column specifically - MUST be exact match (case insensitive)
        # Do NOT use TBL_TYPE or any other TYPE column - only TABLE_TYPE
        # This ensures Liquibase-friendly migration scripts
        type_col = None
        # Priority 1: Exact match for TABLE_TYPE (case insensitive) - ONLY this column
        for c in df.columns:
            if str(c).strip().upper() == 'TABLE_TYPE':
                type_col = c
                break
        # Priority 2: Contains TABLE_TYPE (case insensitive) - but must contain both TABLE and TYPE
        if not type_col:
            for c in df.columns:
                col_upper = str(c).strip().upper()
                if 'TABLE_TYPE' in col_upper and 'TABLE' in col_upper and 'TYPE' in col_upper:
                    # Ensure it's not TBL_TYPE or similar
                    if 'TBL_TYPE' not in col_upper:
                        type_col = c
                        break
        # Do NOT fall back to TBL_TYPE or other TYPE columns - only TABLE_TYPE is valid

        if not module_col or not table_col:
            # If standard columns fail, print available sheets and columns to help debug
            print(f"   ERROR: Available sheets: {sheet_names}")
            print(f"   ERROR: Available columns in '{target_sheet}': {list(df.columns)}")
            raise ValueError(f"Could not find MODULE or TABLE_NAME columns in '{target_sheet}'.")

        # Debug: Show which column is being used for TABLE_TYPE
        if type_col:
            print(f"  DEBUG: Found TABLE_TYPE column: '{type_col}' (from available columns: {list(df.columns)})")
            # Verify it's actually TABLE_TYPE and not TBL_TYPE
            if 'TBL_TYPE' in str(type_col).upper() and 'TABLE_TYPE' not in str(type_col).upper():
                print(f"  ERROR: Found TBL_TYPE column instead of TABLE_TYPE! Please use TABLE_TYPE column.")
                raise ValueError(f"Invalid column '{type_col}' - must use TABLE_TYPE column, not TBL_TYPE")
        else:
            print(f"  DEBUG: TABLE_TYPE column NOT FOUND. Available columns: {list(df.columns)}")
            print(f"  WARNING: TABLE_TYPE column is required for Liquibase-friendly migration scripts")

        # Rename to standard names
        rename_map = {module_col: 'MODULE', table_col: 'TABLE_NAME'}
        if screen_col: rename_map[screen_col] = 'SCREEN_NAME'
        if order_col: rename_map[order_col] = 'SCREEN_ORDER'
        if type_col: rename_map[type_col] = 'TABLE_TYPE'
        
        df = df.rename(columns=rename_map)
        
        # Remove duplicate columns if any exist (keep first occurrence)
        # This prevents issues where df['MODULE'] returns a DataFrame instead of Series
        df = df.loc[:, ~df.columns.duplicated()]
        
        # Mark lookups based on TABLE_LIST1
        df['IS_LOOKUP_FROM_LIST'] = df['TABLE_NAME'].astype(str).apply(lambda x: normalize(str(x).split('.')[-1]) in lookup_tables_set)
        
        # Initial cleanup
        df = df.dropna(subset=['MODULE', 'TABLE_NAME'])
        
        # Ensure we're working with Series, not DataFrame (handle edge case)
        if 'MODULE' in df.columns:
            module_series = df['MODULE']
            if isinstance(module_series, pd.DataFrame):
                # If MODULE is a DataFrame (duplicate columns), remove duplicates and retry
                df = df.loc[:, ~df.columns.duplicated()]
                module_series = df['MODULE']
            df['MODULE'] = module_series.astype(str).str.strip().str.lower()
        
        if 'TABLE_NAME' in df.columns:
            table_series = df['TABLE_NAME']
            if isinstance(table_series, pd.DataFrame):
                df = df.loc[:, ~df.columns.duplicated()]
                table_series = df['TABLE_NAME']
            df['TABLE_NAME'] = table_series.astype(str).str.strip()
        
        if 'SCREEN_NAME' not in df.columns:
            df['SCREEN_NAME'] = 'default'
        else:
            df['SCREEN_NAME'] = df['SCREEN_NAME'].astype(str).str.strip().fillna('default')
            
        if 'SCREEN_ORDER' in df.columns:
            df['SCREEN_ORDER'] = pd.to_numeric(df['SCREEN_ORDER'], errors='coerce').fillna(9999).astype(int)
        else:
            df['SCREEN_ORDER'] = 9999
            
        if 'TABLE_TYPE' not in df.columns:
            print(f"  DEBUG: TABLE_TYPE column NOT FOUND in Excel. Available columns: {list(df.columns)}")
            df['TABLE_TYPE'] = 'regular'
        else:
            print(f"  DEBUG: TABLE_TYPE column FOUND in Excel")
            # Debug: Show unique TABLE_TYPE values before processing
            unique_types_before = df['TABLE_TYPE'].dropna().unique()
            print(f"  DEBUG: Unique TABLE_TYPE values in Excel (before processing): {list(unique_types_before)[:20]}")
            df['TABLE_TYPE'] = df['TABLE_TYPE'].astype(str).str.strip().str.lower().fillna('regular')
            # Debug: Show unique TABLE_TYPE values after processing
            unique_types_after = df['TABLE_TYPE'].unique()
            print(f"  DEBUG: Unique TABLE_TYPE values in Excel (after processing): {list(unique_types_after)[:20]}")
        
        # Matching columns
        df['TABLE_NAME_NORMALIZED'] = df['TABLE_NAME'].apply(normalize)
        df['TABLE_NAME_ONLY_NORMALIZED'] = df['TABLE_NAME'].apply(
            lambda x: normalize(x.split(".")[-1] if "." in x else x)
        )
        
        print(f"SUCCESS: Excel mapping loaded: {len(df)} entries from sheet '{target_sheet}'")
        return df
    except Exception as e:
        print(f"ERROR: Error reading Excel file: {e}")
        raise
    finally:
        # Clean up temporary files
        for p in [temp_copy_path, temp_fixed_path]:
            if p and os.path.exists(p):
                try:
                    os.remove(p)
                except Exception:
                    pass


def extract_create_tables(sql):
    return re.findall(r'CREATE TABLE .*?\);', sql, re.I | re.S)


def extract_constraints(sql):
    alters = re.findall(r'ALTER TABLE .*?;', sql, re.I | re.S)
    return [a.strip() for a in alters if "CONSTRAINT" in a.upper()]


def get_table(sql):
    m = re.search(r'CREATE TABLE\s+("?[\w\.]+"?(?:\."?[\w]+"?)?)', sql, re.I)
    return normalize(m.group(1)) if m else None


def format_create(sql):
    sql = re.sub(r'\s+', ' ', sql)
    sql = sql.replace(" (", " (\n    ")
    sql = sql.replace(", ", ",\n    ")
    sql = sql.replace(");", "\n);")

    out = []
    for line in sql.splitlines():
        l = line.strip()

        if re.match(r'id\s+', l, re.I):
            out.append("    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,")
        else:
            out.append(line)

    return "\n".join(out).replace(",\n);", "\n);") + "\n\n"


def is_primary_key_constraint(sql: str) -> bool:
    return bool(re.search(r'\bPRIMARY\s+KEY\b', sql, re.I))


def is_foreign_key_constraint(sql: str) -> bool:
    return bool(re.search(r'\bFOREIGN\s+KEY\b', sql, re.I))


def is_unique_constraint(sql: str) -> bool:
    return bool(re.search(r'\bUNIQUE\b', sql, re.I))


def get_constraint_table(sql: str) -> str:
    """Extract the table name from an ALTER TABLE statement."""
    m = re.search(r'ALTER TABLE\s+(?:ONLY\s+)?("?[\w\.]+"?)', sql, re.I)
    return normalize(m.group(1)) if m else None


def get_referenced_table(sql: str) -> str:
    """Extract the referenced table from a FOREIGN KEY constraint."""
    m = re.search(r'REFERENCES\s+("?[\w\.]+"?)', sql, re.I)
    return normalize(m.group(1)) if m else None


def topological_sort_tables(tables_with_sql, constraints):
    """
    Sort tables by FK dependency order using topological sort.
    Returns list of (table_name, sql) tuples in dependency order.
    """
    if not tables_with_sql:
        return tables_with_sql
    
    # Build table dependency graph
    # Map: table -> set of tables it depends on (tables it references via FK)
    table_deps = defaultdict(set)
    table_set = {t for t, _ in tables_with_sql}
    
    # Extract FK dependencies from constraints
    for constraint in constraints:
        if is_foreign_key_constraint(constraint):
            source_table = get_constraint_table(constraint)
            ref_table = get_referenced_table(constraint)
            if source_table and ref_table and source_table in table_set and ref_table in table_set:
                table_deps[source_table].add(ref_table)
    
    # Create a map for quick lookup
    table_sql_map = {t: sql for t, sql in tables_with_sql}
    
    # Topological sort using Kahn's algorithm
    sorted_tables = []
    remaining_tables = set(table_set)
    
    # Calculate in-degree (how many tables this table depends on)
    in_degree = {table: len(table_deps[table]) for table in table_set}
    
    # Start with tables that have no dependencies
    queue = [table for table in table_set if in_degree[table] == 0]
    
    while queue:
        # Sort for deterministic output
        queue.sort()
        table = queue.pop(0)
        sorted_tables.append((table, table_sql_map[table]))
        remaining_tables.discard(table)
        
        # Find tables that depend on this one and reduce their in-degree
        for other_table in table_set:
            if other_table in remaining_tables and table in table_deps[other_table]:
                in_degree[other_table] -= 1
                if in_degree[other_table] == 0:
                    queue.append(other_table)
    
    # Add any remaining tables (shouldn't happen if graph is acyclic)
    for table in remaining_tables:
        sorted_tables.append((table, table_sql_map[table]))
    
    return sorted_tables


def topological_sort_constraints(constraints, final_tables_set):
    """
    Sort constraints by dependency order:
    1. UNIQUE constraints first (no dependencies)
    2. FOREIGN KEY constraints in topological order (referenced tables' FKs first)
    """
    unique_constraints = []
    fk_constraints = []
    
    # Separate UNIQUE and FOREIGN KEY constraints
    for con in constraints:
        if is_unique_constraint(con):
            unique_constraints.append(con)
        elif is_foreign_key_constraint(con):
            fk_constraints.append(con)
        else:
            # Other constraint types, add to unique for now
            unique_constraints.append(con)
    
    if not fk_constraints:
        return unique_constraints
    
    # Build dependency graph for foreign keys
    # Map: constraint -> (source_table, referenced_table)
    fk_deps = {}
    for con in fk_constraints:
        source_table = get_constraint_table(con)
        ref_table = get_referenced_table(con)
        if source_table and ref_table:
            fk_deps[con] = (source_table, ref_table)
    
    # Build dependency graph: FK on table A references table B
    # If table B has FKs, those must come before A's FK
    # Map: FK constraint -> list of FK constraints it depends on
    fk_dependency_graph = defaultdict(set)
    for con in fk_constraints:
        if con in fk_deps:
            source, ref = fk_deps[con]
            # Find all FKs on the referenced table
            for other_con in fk_constraints:
                if other_con in fk_deps:
                    other_source, other_ref = fk_deps[other_con]
                    if other_source == ref and other_source in final_tables_set:
                        fk_dependency_graph[con].add(other_con)
    
    # Topological sort using Kahn's algorithm
    sorted_fk = []
    remaining_fk = set(fk_constraints)
    # Count incoming edges (dependencies)
    in_degree = {con: len(fk_dependency_graph[con]) for con in fk_constraints}
    
    # Start with FKs that have no dependencies (in_degree = 0)
    queue = [con for con in fk_constraints if in_degree[con] == 0]
    
    while queue:
        # Sort queue for deterministic output
        queue.sort(key=lambda c: get_constraint_table(c) or "")
        con = queue.pop(0)
        sorted_fk.append(con)
        remaining_fk.discard(con)
        
        # Find FKs that depend on this one and reduce their in-degree
        for other_con in fk_constraints:
            if other_con in remaining_fk and con in fk_dependency_graph[other_con]:
                in_degree[other_con] -= 1
                if in_degree[other_con] == 0:
                    queue.append(other_con)
    
    # Add any remaining FKs (shouldn't happen if graph is acyclic, but handle gracefully)
    sorted_fk.extend(remaining_fk)
    
    return unique_constraints + sorted_fk


def build_table_rollback(sql):
    """Generate DROP TABLE statement for rollback from CREATE TABLE SQL."""
    # Extract table name from CREATE TABLE statement
    # Pattern: CREATE TABLE schema.table or CREATE TABLE table
    table_match = re.search(r'CREATE TABLE\s+(?:IF NOT EXISTS\s+)?(?:ONLY\s+)?("?[\w\.]+"?)', sql, re.I)
    if table_match:
        table = table_match.group(1).replace('"', '')
        return f"DROP TABLE IF EXISTS {table};\n"
    return "-- Could not extract table name from CREATE TABLE statement\n"


def build_constraint_rollback(sql):
    t = re.search(r'ALTER TABLE\s+(ONLY\s+)?("?[\w\.]+"?)', sql, re.I)
    c = re.search(r'CONSTRAINT\s+("?[\w_]+"?)', sql, re.I)
    if not t or not c:
        return None

    table = t.group(2).replace('"', '')
    cons = c.group(1)
    return f"ALTER TABLE {table} DROP CONSTRAINT {cons};\n"


def extract_schema_and_table(full_table_name: str):
    """Extract schema and table name from 'schema.table' format."""
    parts = full_table_name.split('.')
    if len(parts) == 2:
        return parts[0], parts[1]
    return None, full_table_name


def get_constraint_type(constraint_sql: str) -> str:
    """Determine the type of constraint."""
    if is_foreign_key_constraint(constraint_sql):
        return "ALTER (FOREIGN KEY)"
    elif is_unique_constraint(constraint_sql):
        return "ALTER (UNIQUE)"
    else:
        return "ALTER"


def get_constraint_description(constraint_sql: str) -> str:
    """Generate a brief description of the constraint."""
    if is_foreign_key_constraint(constraint_sql):
        ref_table = get_referenced_table(constraint_sql)
        if ref_table:
            return f"Add foreign key constraint referencing {ref_table}"
        return "Add foreign key constraint"
    elif is_unique_constraint(constraint_sql):
        return "Add unique constraint"
    else:
        return "Add constraint"


def generate_release_notes(final_tables, final_constraints, module_folder):
    """Generate Release_notes.txt file with structured information."""
    
    # Group tables by schema
    schema_tables = defaultdict(list)
    for table_name, _ in final_tables:
        schema, table = extract_schema_and_table(table_name)
        schema_tables[schema].append((table, table_name))
    
    # Group constraints by schema and table
    schema_constraints = defaultdict(lambda: defaultdict(list))
    for constraint in final_constraints:
        table_name = get_constraint_table(constraint)
        if table_name:
            schema, table = extract_schema_and_table(table_name)
            schema_constraints[schema][table].append(constraint)
    
    # Get current date and time
    current_datetime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    
    # Generate release notes content
    notes = []
    notes.append("Release Notes")
    notes.append("-" * 50)
    notes.append(f"Database Folder: {module_folder}")
    notes.append(f"Date with time: {current_datetime}")
    notes.append("")
    
    # Process each schema (combine tables and constraints schemas)
    all_schemas = set(schema_tables.keys()) | set(schema_constraints.keys())
    
    for schema in sorted(all_schemas):
        notes.append(f"Schema: {schema}")
        
        # Add table CREATE statements
        if schema in schema_tables:
            for table, full_table_name in sorted(schema_tables[schema]):
                notes.append(f"- Table: {full_table_name}")
                notes.append(f"  Change Type: CREATE")
                notes.append(f"  Description: Create new table {table}")
                notes.append("")
        
        # Add constraint ALTER statements
        if schema in schema_constraints:
            for table in sorted(schema_constraints[schema].keys()):
                constraints = schema_constraints[schema][table]
                full_table_name = f"{schema}.{table}" if schema else table
                
                # Group constraints by type for description
                fk_count = sum(1 for c in constraints if is_foreign_key_constraint(c))
                unique_count = sum(1 for c in constraints if is_unique_constraint(c))
                
                notes.append(f"- Table: {full_table_name}")
                notes.append(f"  Change Type: ALTER")
                
                descriptions = []
                if unique_count > 0:
                    descriptions.append(f"Add {unique_count} unique constraint(s)")
                if fk_count > 0:
                    descriptions.append(f"Add {fk_count} foreign key constraint(s)")
                if len(constraints) > unique_count + fk_count:
                    other_count = len(constraints) - unique_count - fk_count
                    descriptions.append(f"Add {other_count} other constraint(s)")
                
                notes.append(f"  Description: {', '.join(descriptions)}")
                notes.append("")
    
    # Write to file
    release_notes_path = os.path.join(module_folder, "Release_notes.txt")
    with open(release_notes_path, "w", encoding="utf-8") as f:
        f.write("\n".join(notes))
    
    print(f"  Release notes generated: {release_notes_path}")


def parse_insert_statements(content):
    """Parse INSERT statements and extract table, columns, and values for rollback generation.
    Handles single and multi-row INSERTs. Each INSERT row becomes a separate statement.
    """
    insert_statements = []
    
    # Pattern to match INSERT INTO statements
    # Handles both single-row: INSERT INTO table (...) VALUES (...);
    # and multi-row: INSERT INTO table (...) VALUES (...), (...), ...;
    insert_pattern = r'INSERT\s+INTO\s+["\']?([\w\.]+)\s*(?:\(([^)]+)\))?\s*VALUES\s*'
    
    # Find all INSERT statements
    matches = list(re.finditer(insert_pattern, content, re.I | re.MULTILINE | re.DOTALL))
    
    for match in matches:
        table_name = match.group(1)
        columns_str = match.group(2) if match.group(2) else None
        start_pos = match.end()
        
        # Find the end of this INSERT statement (semicolon or next INSERT)
        end_pos = len(content)
        next_insert = re.search(r'INSERT\s+INTO', content[start_pos:], re.I)
        if next_insert:
            end_pos = start_pos + next_insert.start()
        
        # Extract the VALUES part (everything until semicolon or next INSERT)
        values_section = content[start_pos:end_pos].rstrip()
        # Remove trailing semicolon if present
        values_section = re.sub(r';\s*$', '', values_section).strip()
        
        # Parse column names
        if columns_str:
            columns = [col.strip().strip('"\'') for col in re.split(r',\s*', columns_str)]
        else:
            columns = []
        
        # Extract individual value rows: (val1, val2), (val3, val4), ...
        # Handle nested parentheses and quoted strings properly
        value_rows = []
        current_row = ""
        paren_depth = 0
        in_quotes = False
        quote_char = None
        
        for char in values_section:
            if char in ("'", '"') and not in_quotes:
                in_quotes = True
                quote_char = char
                current_row += char
            elif char == quote_char and in_quotes:
                # Check for escaped quotes
                if len(current_row) > 0 and current_row[-1] == '\\':
                    current_row += char
                else:
                    in_quotes = False
                    quote_char = None
                    current_row += char
            elif char == '(' and not in_quotes:
                paren_depth += 1
                if paren_depth == 1:
                    # Start of new row, reset
                    current_row = ""
                else:
                    current_row += char
            elif char == ')' and not in_quotes:
                paren_depth -= 1
                if paren_depth == 0:
                    # End of row
                    value_rows.append(current_row.strip())
                    current_row = ""
                else:
                    current_row += char
            elif char == ',' and not in_quotes and paren_depth == 0:
                # Comma between rows, skip
                continue
            else:
                if paren_depth > 0:
                    current_row += char
        
        # If no rows found but we have content, try to parse as single row
        if not value_rows and values_section.strip():
            # Might be a single row without parentheses or malformed
            # Try to extract the first set of parentheses
            single_match = re.search(r'\(([^)]+)\)', values_section)
            if single_match:
                value_rows = [single_match.group(1)]
        
        # Parse each value row
        for row_values_str in value_rows:
            # Parse values in this row
            values = []
            current_value = ""
            in_quotes = False
            quote_char = None
            paren_depth = 0
            
            for char in row_values_str:
                if char in ("'", '"') and not in_quotes:
                    in_quotes = True
                    quote_char = char
                    current_value += char
                elif char == quote_char and in_quotes:
                    # Check for escaped quotes
                    if len(current_value) > 0 and current_value[-1] == '\\':
                        current_value += char
                    else:
                        in_quotes = False
                        quote_char = None
                        current_value += char
                elif char == '(' and not in_quotes:
                    paren_depth += 1
                    current_value += char
                elif char == ')' and not in_quotes:
                    paren_depth -= 1
                    current_value += char
                elif char == ',' and not in_quotes and paren_depth == 0:
                    values.append(current_value.strip())
                    current_value = ""
                else:
                    current_value += char
            
            if current_value.strip():
                values.append(current_value.strip())
            
            # Store this INSERT row (one statement per row)
            insert_statements.append({
                'table': table_name,
                'columns': columns,
                'values': values
            })
    
    return insert_statements


def parse_grant_statements(content):
    """Parse GRANT statements and extract permission details."""
    grant_statements = []
    
    # Find all GRANT statements (not in comments)
    # Split by lines and check each line
    lines = content.split('\n')
    for line in lines:
        line = line.strip()
        # Skip empty lines and comments
        if not line or line.startswith('--'):
            continue
        
        # Check if line contains GRANT statement
        if re.search(r'^\s*GRANT\s+', line, re.I):
            # Extract GRANT statement (may span multiple lines, but we'll handle single line for now)
            grant_line = line
            # If line doesn't end with semicolon, it might be multi-line - skip for now
            if not grant_line.endswith(';'):
                continue
            
            # Parse GRANT ON SCHEMA
            schema_match = re.search(r'GRANT\s+(.+?)\s+ON\s+SCHEMA\s+([^\s]+)\s+TO\s+([^;]+);', grant_line, re.I)
            if schema_match:
                grant_statements.append({
                    'permissions': schema_match.group(1).strip(),
                    'target': schema_match.group(2).strip(),
                    'user': schema_match.group(3).strip(),
                    'type': 'SCHEMA',
                    'original': grant_line
                })
                continue
            
            # Parse GRANT ON ALL TABLES IN SCHEMA
            all_tables_match = re.search(r'GRANT\s+(.+?)\s+ON\s+ALL\s+TABLES\s+IN\s+SCHEMA\s+([^\s]+)\s+TO\s+([^;]+);', grant_line, re.I)
            if all_tables_match:
                grant_statements.append({
                    'permissions': all_tables_match.group(1).strip(),
                    'target': all_tables_match.group(2).strip(),
                    'user': all_tables_match.group(3).strip(),
                    'type': 'ALL_TABLES',
                    'original': grant_line
                })
                continue
            
            # Parse GRANT ON TABLE
            table_match = re.search(r'GRANT\s+(.+?)\s+ON\s+TABLE\s+([^\s]+)\s+TO\s+([^;]+);', grant_line, re.I)
            if table_match:
                grant_statements.append({
                    'permissions': table_match.group(1).strip(),
                    'target': table_match.group(2).strip(),
                    'user': table_match.group(3).strip(),
                    'type': 'TABLE',
                    'original': grant_line
                })
                continue
    
    return grant_statements


def generate_revoke_statements(grant_statements):
    """Generate REVOKE statements from GRANT statements."""
    revoke_statements = []
    
    for grant in grant_statements:
        permissions = grant['permissions']
        target = grant['target']
        user = grant['user']
        grant_type = grant['type']
        
        if grant_type == 'SCHEMA':
            # REVOKE USAGE ON SCHEMA schema_name FROM user;
            revoke_stmt = f"REVOKE {permissions} ON SCHEMA {target} FROM {user};"
        elif grant_type == 'ALL_TABLES':
            # REVOKE ... ON ALL TABLES IN SCHEMA schema_name FROM user;
            revoke_stmt = f"REVOKE {permissions} ON ALL TABLES IN SCHEMA {target} FROM {user};"
        elif grant_type == 'TABLE':
            # REVOKE ... ON TABLE table_name FROM user;
            revoke_stmt = f"REVOKE {permissions} ON TABLE {target} FROM {user};"
        else:
            # Fallback
            revoke_stmt = f"-- REVOKE {permissions} ON {target} FROM {user};"
        
        revoke_statements.append(revoke_stmt)
    
    return revoke_statements


def generate_delete_statements(insert_statements):
    """Generate DELETE statements with WHERE conditions based on INSERT statements.
    Uses: tenant_key, org_id, ref_id in WHERE condition.
    If ref_id not available, uses actual unique data.
    Excludes: created_date, created_by, modified_date, modified_by.
    Generates one DELETE per INSERT row.
    """
    delete_statements = []
    
    # Columns to exclude from WHERE conditions
    exclude_columns = ['created_date', 'created_by', 'modified_date', 'modified_by']
    
    # Priority columns for WHERE conditions (in order of preference)
    priority_columns = [
        'eqms_tenant_key', 'tenant_key',
        'fk_eqms_organization_id', 'org_id', 'organization_id',
        'ref_id'
    ]
    
    # Primary key patterns (if ref_id not available)
    pk_patterns = ['id', 'pk_id']
    
    for insert in insert_statements:
        table = insert['table']
        columns = insert['columns']
        values = insert['values']
        
        # Build WHERE clause from columns and values
        where_conditions = []
        
        if columns and values:
            # Create a map of column index to column name (lowercase for matching)
            col_map = {i: col for i, col in enumerate(columns)}
            col_lower_map = {col.lower(): (i, col) for i, col in enumerate(columns)}
            
            # Step 1: Add priority columns (tenant_key, org_id, ref_id)
            for priority_col in priority_columns:
                if priority_col.lower() in col_lower_map:
                    idx, col_name = col_lower_map[priority_col.lower()]
                    if idx < len(values):
                        value = values[idx].strip()
                        if value.upper() not in ('NULL', 'DEFAULT'):
                            where_conditions.append(f"{col_name} = {value}")
            
            # Step 2: If ref_id not found, try to use primary key or unique identifier
            has_ref_id = any('ref_id' in cond.lower() for cond in where_conditions)
            
            if not has_ref_id:
                # Try to find primary key
                table_name_only = table.split('.')[-1].lower()
                pk_candidates = ['id', f'{table_name_only}_id', 'pk_id']
                
                for pk_col in pk_candidates:
                    if pk_col.lower() in col_lower_map:
                        idx, col_name = col_lower_map[pk_col.lower()]
                        if idx < len(values):
                            value = values[idx].strip()
                            if value.upper() not in ('NULL', 'DEFAULT'):
                                # Check if already added
                                if not any(col_name in cond for cond in where_conditions):
                                    where_conditions.append(f"{col_name} = {value}")
                                    break
            
            # Step 3: Add other unique/identifying columns (excluding timestamp/user columns)
            # Add columns that help uniquely identify the row
            for i, col in enumerate(columns):
                if i < len(values):
                    col_lower = col.lower()
                    # Skip excluded columns
                    if col_lower in [ex.lower() for ex in exclude_columns]:
                        continue
                    # Skip if already in where_conditions
                    if any(col in cond for cond in where_conditions):
                        continue
                    # Skip if it's a priority column we already processed
                    if col_lower in [pc.lower() for pc in priority_columns]:
                        continue
                    
                    value = values[i].strip()
                    # Only add non-NULL, non-DEFAULT values
                    if value.upper() not in ('NULL', 'DEFAULT'):
                        # Add if it's a simple value (not a function call like NOW())
                        # But allow variables like VAR_TENANT_KEY
                        if not re.search(r'\b(NOW|CURRENT_DATE|CURRENT_TIMESTAMP)\s*\(', value, re.I):
                            where_conditions.append(f"{col} = {value}")
        
        elif values:
            # No column names specified, assume first value is primary key
            if values:
                value = values[0].strip()
                if value.upper() not in ('NULL', 'DEFAULT'):
                    where_conditions.append(f"id = {value}")
        
        # Generate DELETE statement
        if where_conditions:
            where_clause = " AND ".join(where_conditions)
            delete_stmt = f"DELETE FROM {table} WHERE {where_clause};"
        else:
            # Fallback: if we can't determine WHERE condition, use a comment
            delete_stmt = f"-- DELETE FROM {table} WHERE <add_condition_based_on_inserted_data>;"
        
        delete_statements.append({
            'table': table,
            'statement': delete_stmt,
            'where_conditions': where_conditions
        })
    
    return delete_statements


def extract_table_insert_counts(file_path):
    """Extract table names and count of INSERT statements for each table from a SQL file."""
    table_counts = defaultdict(int)
    tables_in_file = []
    
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
            
            # Find all INSERT INTO statements with table names
            # Pattern: INSERT INTO schema.table or INSERT INTO table
            insert_pattern = r'INSERT\s+INTO\s+["\']?([\w\.]+)'
            insert_matches = re.findall(insert_pattern, content, re.I)
            
            for table_name in insert_matches:
                table_counts[table_name] += 1
                if table_name not in tables_in_file:
                    tables_in_file.append(table_name)
                    
    except Exception as e:
        print(f"       Error reading file {file_path}: {e}")
    
    return table_counts, tables_in_file


def get_table_module(table_name, full_df):
    """
    Get the module name for a given table from the full Excel mapping.
    
    @description Determines which module a table belongs to by searching the full Excel mapping DataFrame.
    @param {string} table_name - The table name (can be schema.table or just table)
    @param {DataFrame} full_df - The full Excel mapping DataFrame with MODULE column
    @returns {string|None} The module name if found, None otherwise
    @author Aravind Sekar
    @created 20-01-2025
    """
    if full_df is None or full_df.empty:
        return None
    
    table_normalized = normalize(table_name)
    table_name_only = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
    
    # Try to match with Excel table names
    matching_rows = full_df[
        (full_df['TABLE_NAME_NORMALIZED'] == table_normalized) |
        (full_df['TABLE_NAME_ONLY_NORMALIZED'] == table_name_only)
    ]
    
    if not matching_rows.empty:
        return matching_rows.iloc[0]['MODULE']
    
    return None


def filter_data_files_by_screen(data_files, screen_tables_set, module_df, is_lookup_file_flag=False, is_predefined_file_flag=False, full_df=None, current_module_name=None):
    """
    Filter data files to only include those that contain INSERT statements for tables in the screen.
    
    @description Filters data files based on screen tables. For lookup/predefined files:
    - If tables are from the same module: only include if tables exist in THIS screen's schema batch.
      This ensures data is inserted when the schema is created, following screen order.
    - If tables are from other modules (e.g., dms, organization): always include (they need to be inserted).
    
    @param {list} data_files - List of (file_path, filename) tuples
    @param {set} screen_tables_set - Set of table names (normalized) that belong to this screen's schema batch
    @param {DataFrame} module_df - DataFrame filtered to current module only
    @param {boolean} is_lookup_file_flag - If True, treat as lookup file
    @param {boolean} is_predefined_file_flag - If True, treat as predefined file
    @param {DataFrame} full_df - Full Excel mapping DataFrame (optional, for module detection)
    @param {string} current_module_name - Current module name being processed (optional)
    @returns {list} Filtered list of (file_path, filename) tuples
    @author Aravind Sekar
    @created 20-01-2025
    """
    filtered_files = []
    
    # CRITICAL: Get lookup files excluded list to prevent lookup table data from being included
    lookup_files_excluded = globals().get('lookup_files_assigned_to_lookup_folders', set())
    
    for file_path, filename in data_files:
        # CRITICAL SAFETY CHECK: Skip files that contain lookup table INSERTs
        # These should ONLY be inserted in lookup folders, not in regular screen batches
        normalized_file_path = os.path.abspath(file_path)
        if (normalized_file_path, filename) in lookup_files_excluded or (file_path, filename) in lookup_files_excluded:
            continue  # Skip this file - it contains lookup table data
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Extract table names from INSERT statements
            # Pattern matches: INSERT INTO schema.table or INSERT INTO table
            insert_pattern = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)'
            insert_matches = re.findall(insert_pattern, content, re.I)
            
            # Also try a more flexible pattern
            if not insert_matches:
                insert_pattern2 = r'INTO\s+["\']?([\w\.]+)'
                insert_matches = re.findall(insert_pattern2, content, re.I)
            
            # For lookup files: check module membership and schema batch
            # Same module tables: only include if ALL same-module tables exist in THIS screen's schema batch (following screen order)
            # Other module tables: always include (they need to be inserted)
            if is_lookup_file_flag:
                has_tables_from_other_modules = False
                same_module_lookup_tables = []  # Track all same-module lookup tables in the file
                
                for table_name in insert_matches:
                    table_name_lower = table_name.lower()
                    # Extract table name without schema
                    table_name_only = table_name_lower.split(".")[-1] if "." in table_name_lower else table_name_lower
                    # Check if it's a lookup table: ends with '_lk' or contains '_lk_'
                    is_lookup_table = table_name_only.endswith('_lk') or '_lk_' in table_name_only
                    
                    # Only process lookup tables (lk tables)
                    if not is_lookup_table:
                        continue
                    
                    # Determine which module this table belongs to
                    table_module = None
                    if full_df is not None and current_module_name:
                        table_module = get_table_module(table_name, full_df)
                    
                    # Check if table is from current module or other module
                    is_from_current_module = (table_module and table_module.lower() == current_module_name.lower()) if table_module and current_module_name else False
                    
                    if is_from_current_module:
                        # Track same-module lookup tables
                        same_module_lookup_tables.append((table_name, table_name_only))
                    else:
                        # For tables from other modules (dms, organization, etc.): always include
                        # These need to be inserted regardless of which screen we're processing
                        has_tables_from_other_modules = True
                
                # For same-module tables: ALL must exist in THIS screen's schema batch
                # This ensures data is inserted when the schema is created, following screen order
                # No trial and error - must be 100% correct
                all_same_module_tables_in_screen = True
                if same_module_lookup_tables:
                    for table_name, table_name_only in same_module_lookup_tables:
                        table_normalized = normalize(table_name)
                        table_name_only_normalized = normalize(table_name_only)
                        
                        # Check if this lookup table is in the screen's schema batch (multiple ways to match)
                        table_found = False
                        if (table_normalized in screen_tables_set or 
                            table_name_only_normalized in screen_tables_set):
                            table_found = True
                        else:
                            # Also check reverse: check if any screen table matches this lookup table
                            for screen_table in screen_tables_set:
                                screen_table_only = normalize(screen_table.split(".")[-1] if "." in screen_table else screen_table)
                                if (normalize(screen_table) == table_normalized or 
                                    screen_table_only == table_name_only_normalized or
                                    normalize(screen_table) == table_name_only_normalized or
                                    table_name_only_normalized == screen_table_only):
                                    table_found = True
                                    break
                        
                        if not table_found:
                            all_same_module_tables_in_screen = False
                            break
                
                # Include lookup files if:
                # 1. ALL same-module lookup tables exist in THIS screen's schema batch (following screen order), OR
                # 2. They contain lookup tables from other modules (always include - they need to be inserted)
                if (same_module_lookup_tables and all_same_module_tables_in_screen) or has_tables_from_other_modules:
                    filtered_files.append((file_path, filename))
                continue
            
            # For predefined files: check module membership and schema batch
            # Same module tables: only include if ALL same-module tables exist in THIS screen's schema batch (following screen order)
            # Other module tables: always include (they need to be inserted)
            if is_predefined_file_flag:
                has_tables_from_other_modules = False
                same_module_tables = []  # Track all same-module tables in the file
                
                for table_name in insert_matches:
                    # Determine which module this table belongs to
                    table_module = None
                    if full_df is not None and current_module_name:
                        table_module = get_table_module(table_name, full_df)
                    
                    # Check if table is from current module or other module
                    is_from_current_module = (table_module and table_module.lower() == current_module_name.lower()) if table_module and current_module_name else False
                    
                    if is_from_current_module:
                        # Track same-module tables
                        same_module_tables.append(table_name)
                    else:
                        # For tables from other modules (dms, organization, etc.): always include
                        # These need to be inserted regardless of which screen we're processing
                        has_tables_from_other_modules = True
                
                # For same-module tables: ALL must exist in THIS screen's schema batch
                # This ensures data is inserted when the schema is created, following screen order
                # No trial and error - must be 100% correct
                all_same_module_tables_in_screen = True
                if same_module_tables:
                    for table_name in same_module_tables:
                        table_normalized = normalize(table_name)
                        table_name_only = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
                        
                        # Check if this table is in the screen's schema batch (multiple ways to match)
                        table_found = False
                        if (table_normalized in screen_tables_set or 
                            table_name_only in screen_tables_set):
                            table_found = True
                        else:
                            # Also check reverse: check if any screen table matches this table
                            for screen_table in screen_tables_set:
                                screen_table_only = normalize(screen_table.split(".")[-1] if "." in screen_table else screen_table)
                                if (normalize(screen_table) == table_normalized or 
                                    screen_table_only == table_name_only or
                                    normalize(screen_table) == table_name_only or
                                    table_name_only == screen_table_only):
                                    table_found = True
                                    break
                        
                        if not table_found:
                            all_same_module_tables_in_screen = False
                            break
                
                # Include predefined files if:
                # 1. ALL same-module tables exist in THIS screen's schema batch (following screen order), OR
                # 2. They contain tables from other modules (always include - they need to be inserted)
                if (same_module_tables and all_same_module_tables_in_screen) or has_tables_from_other_modules:
                    filtered_files.append((file_path, filename))
                continue
            
            # For other files (seed files): check if any table in this file belongs to the screen
            # BUT: CRITICAL - Check if file contains lookup tables that have DEDICATED lookup folders
            # Only exclude files containing lookup tables WITH dedicated folders
            # Regular lookup tables (without dedicated folders) should still be included in screen batches
            file_contains_dedicated_lookup_table = False
            lookup_tables_with_folders = globals().get('lookup_tables_with_dedicated_folders', set())
            
            # DEBUG: Print file being checked
            if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower() or 'menu' in filename.lower():
                print(f"     DEBUG: filter_data_files_by_screen: Checking file '{filename}' for lookup tables WITH dedicated folders")
                print(f"       - Found {len(insert_matches)} INSERT statement(s)")
                print(f"       - lookup_tables_with_dedicated_folders has {len(lookup_tables_with_folders)} entries")
            
            for table_name in insert_matches:
                table_name_lower = table_name.lower().strip('"\'')
                table_name_only = table_name_lower.split('.')[-1]
                table_normalized = normalize(table_name_only)
                
                # DEBUG: Print table being checked
                if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower() or 'menu' in filename.lower():
                    print(f"       - Checking table: '{table_name}' -> normalized: '{table_normalized}'")
                    print(f"         - Has dedicated folder: {table_normalized in lookup_tables_with_folders}")
                
                # CRITICAL: Only exclude if this lookup table has a DEDICATED lookup folder
                # Regular lookup tables (without dedicated folders) should be included in screen batches
                if table_normalized in lookup_tables_with_folders:
                    file_contains_dedicated_lookup_table = True
                    if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower() or 'menu' in filename.lower():
                        print(f"       - FOUND LOOKUP TABLE WITH DEDICATED FOLDER: '{table_name_only}' - will exclude file")
                    break
            
            # CRITICAL: Skip file ONLY if it contains lookup tables WITH dedicated folders
            # Regular lookup tables (without dedicated folders) should still be included in screen batches
            if file_contains_dedicated_lookup_table:
                print(f"     DEBUG: filter_data_files_by_screen: Skipping file '{filename}' - contains lookup table(s) with dedicated folders")
                print(f"       - This file will ONLY be in lookup folders, NOT in screen data batches")
                continue
            elif '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                print(f"     DEBUG: filter_data_files_by_screen: File '{filename}' does NOT contain lookup tables - will check screen tables")
            
            file_has_screen_tables = False
            for table_name in insert_matches:
                # Normalize table name for comparison
                table_normalized = normalize(table_name)
                table_name_only = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
                
                # Check if this table is in the screen (multiple ways to match)
                if (table_normalized in screen_tables_set or 
                    table_name_only in screen_tables_set):
                    file_has_screen_tables = True
                    break
                
                # Also check reverse: check if any screen table matches this table
                for screen_table in screen_tables_set:
                    screen_table_only = normalize(screen_table.split(".")[-1] if "." in screen_table else screen_table)
                    if (normalize(screen_table) == table_normalized or 
                        screen_table_only == table_name_only or
                        normalize(screen_table) == table_name_only or
                        table_name_only == screen_table_only):
                        file_has_screen_tables = True
                        break
                
                if file_has_screen_tables:
                    break
            
            if file_has_screen_tables:
                filtered_files.append((file_path, filename))
        except Exception as e:
            # If we can't read the file, skip it (don't include to be safe)
            pass
    
    return filtered_files


def filter_permission_files_by_screen(permission_files, screen_tables_set, module_df, include_schema_grants=False):
    """Filter permission files to only include those that contain GRANT statements for tables in the screen.
    screen_tables_set: Set of table names (normalized) that belong to this screen
    include_schema_grants: If True, also include files with GRANT ON SCHEMA or GRANT ON ALL TABLES (for Screen 1 only)
    """
    filtered_files = []
    
    for file_path, filename in permission_files:
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Extract table names from GRANT ON TABLE statements
            # Pattern matches: GRANT ... ON TABLE schema.table or GRANT ... ON TABLE table
            grant_table_pattern = r'GRANT\s+[^;]*?\s+ON\s+TABLE\s+(?:IF\s+EXISTS\s+)?["\']?([\w\.]+)'
            grant_matches = re.findall(grant_table_pattern, content, re.I)
            
            # Also try a more flexible pattern for different GRANT statement formats
            if not grant_matches:
                grant_table_pattern2 = r'ON\s+TABLE\s+["\']?([\w\.]+)'
                grant_matches = re.findall(grant_table_pattern2, content, re.I)
            
            # Check if any table in this file belongs to the screen
            file_has_screen_tables = False
            for table_name in grant_matches:
                # Normalize table name for comparison
                table_normalized = normalize(table_name)
                table_name_only = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
                
                # Check if this table is in the screen (multiple ways to match)
                if (table_normalized in screen_tables_set or 
                    table_name_only in screen_tables_set):
                    file_has_screen_tables = True
                    break
                
                # Also check reverse: check if any screen table matches this table
                for screen_table in screen_tables_set:
                    screen_table_only = normalize(screen_table.split(".")[-1] if "." in screen_table else screen_table)
                    if (normalize(screen_table) == table_normalized or 
                        screen_table_only == table_name_only or
                        normalize(screen_table) == table_name_only or
                        table_name_only == screen_table_only):
                        file_has_screen_tables = True
                        break
                
                if file_has_screen_tables:
                    break
            
            # Only include schema-wide grants if explicitly requested (for Screen 1)
            should_include = file_has_screen_tables
            if include_schema_grants:
                has_schema_grants = bool(re.search(r'GRANT\s+[^;]*?\s+ON\s+SCHEMA', content, re.I))
                has_all_tables_grants = bool(re.search(r'GRANT\s+[^;]*?\s+ON\s+ALL\s+TABLES', content, re.I))
                should_include = should_include or has_schema_grants or has_all_tables_grants
            
            if should_include:
                filtered_files.append((file_path, filename))
        except Exception as e:
            # If we can't read the file, skip it (don't include to be safe)
            pass
    
    return filtered_files


def generate_data_release_notes(data_files, module_folder):
    """Generate Release_notes.txt file for data migrations with table names and insert counts."""
    
    # Aggregate table counts across all files
    all_table_counts = defaultdict(int)
    file_table_map = []  # Track which tables are in which files
    
    for file_path, original_filename in data_files:
        table_counts, tables_in_file = extract_table_insert_counts(file_path)
        file_table_map.append((original_filename, tables_in_file, table_counts))
        
        # Aggregate counts
        for table, count in table_counts.items():
            all_table_counts[table] += count
    
    # Get current date and time
    current_datetime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    
    # Generate release notes content
    notes = []
    notes.append("Release Notes - Data Migration")
    notes.append("-" * 50)
    notes.append(f"Database Folder: {module_folder}")
    notes.append(f"Date with time: {current_datetime}")
    notes.append("")
    notes.append("Data Migration Summary:")
    notes.append("")
    
    # Group tables by schema
    schema_tables = defaultdict(list)
    for table_name in sorted(all_table_counts.keys()):
        schema, table = extract_schema_and_table(table_name)
        # Use empty string instead of None for tables without schema
        schema_key = schema if schema is not None else ""
        schema_tables[schema_key].append((table, table_name, all_table_counts[table_name]))
    
    # Process each schema (sort with empty string handling - empty schema comes first)
    for schema in sorted(schema_tables.keys(), key=lambda x: (x == "", x or "")):
        # Filter out tables with only 1 record
        schema_table_list = [(t, ft, cnt) for t, ft, cnt in sorted(schema_tables[schema]) if cnt > 1]
        
        if not schema_table_list:
            continue  # Skip schema if all tables have only 1 record
        
        # Display schema name (use "default" for empty schema)
        schema_display = schema if schema else "default"
        notes.append(f"Schema: {schema_display}")
        
        for table, full_table_name, insert_count in schema_table_list:
            notes.append(f"- Table: {full_table_name}")
            notes.append(f"  Change Type: INSERT (Data Migration)")
            notes.append(f"  Description: Insert {insert_count} record(s) into {table}")
            notes.append("")
    
    # Add file-level details
    notes.append("File Details:")
    notes.append("")
    for i, (original_filename, tables_in_file, table_counts) in enumerate(file_table_map, start=1):
        notes.append(f"File {i:03}_seed_data.sql (from {original_filename}):")
        if tables_in_file:
            for table in tables_in_file:
                count = table_counts.get(table, 0)
                notes.append(f"  - {table}: {count} INSERT statement(s)")
        else:
            notes.append("  - No INSERT statements found")
        notes.append("")
    
    # Write to file
    release_notes_path = os.path.join(module_folder, "Release_notes.txt")
    with open(release_notes_path, "w", encoding="utf-8") as f:
        f.write("\n".join(notes))
    
    print(f"     Data release notes generated: {release_notes_path}")


def get_module_name(df):
    """Prompt user for module name and validate it exists in Excel.
    User can enter either a number (from the list) or the module name.
    """
    available_modules = sorted(df['MODULE'].unique())
    
    print("\n" + "="*60)
    print("Available Modules:")
    for i, module in enumerate(available_modules, 1):
        # Calculate unique table count for this module
        count = df[df['MODULE'] == module]['TABLE_NAME_NORMALIZED'].nunique()
        print(f"  {i}. {module} ({count} unique tables)")
    print("="*60)
    print("\nTIP: You can enter the number or the module name")
    
    while True:
        user_input = input("\nEnter module number or name: ").strip()
        if not user_input:
            print("ERROR: Input cannot be empty. Please try again.")
            continue
        
        # Try to parse as number first
        try:
            module_number = int(user_input)
            if 1 <= module_number <= len(available_modules):
                selected_module = available_modules[module_number - 1]
                print(f"SUCCESS: Selected module: {selected_module}")
                return selected_module
            else:
                print(f"WARNING: Number {module_number} is out of range. Please choose between 1 and {len(available_modules)}.")
                continue
        except ValueError:
            # Not a number, try name matching
            pass
        
        # Try exact match first
        if user_input in available_modules:
            return user_input
        
        # Try case-insensitive match
        input_lower = user_input.lower()
        matches = [m for m in available_modules if m.lower() == input_lower]
        if matches:
            print(f"SUCCESS: Using module: {matches[0]}")
            return matches[0]
        
        print(f"ERROR: '{user_input}' not found. Please enter a number (1-{len(available_modules)}) or a module name from the list above.")


def load_state():
    """Load the migration state from JSON file."""
    default_state = {
        "last_batch_number": 0,
        "processed_tables": [],
        "pending_constraints": []
    }
    if not os.path.exists(STATE_FILE):
        return default_state
    try:
        with open(STATE_FILE, 'r', encoding='utf-8') as f:
            state = json.load(f)
            # Ensure required keys exist
            for key in default_state:
                if key not in state:
                    state[key] = default_state[key]
            return state
    except Exception as e:
        print(f"       Warning: Could not load state file: {e}")
        return default_state


def save_state(state):
    """Save the migration state to JSON file."""
    try:
        # Sort processed_tables for readability
        state["processed_tables"] = sorted(list(set(state.get("processed_tables", []))))
        # Deduplicate pending_constraints
        state["pending_constraints"] = list(set(state.get("pending_constraints", [])))
        
        with open(STATE_FILE, 'w', encoding='utf-8') as f:
            json.dump(state, f, indent=4)
    except Exception as e:
        print(f"     ERROR: Could not save state file: {e}")


def resolve_pending_constraints(current_module_name, state, pending_constraints, screen_number=None):
    """
    Resolve pending constraints ONLY if the target table belongs to the current module.
    
    @description Ensures constraints are created only after their target tables exist.
    A constraint organization -> hrcs will only be resolved when processing hrcs.
    @param {str} current_module_name - The module currently being processed
    @param {dict} state - Global migration state object
    @param {list} pending_constraints - List of SQL constraint strings
    @returns {tuple} (updated_pending_list, bool_folder_created)
    """
    satisfied = []
    remaining = []
    processed_tables_global = set(state.get("processed_tables", []))
    
    for con in pending_constraints:
        target_table = get_referenced_table(con)
        if not target_table:
            remaining.append(con)
            continue
            
        # Clean target table name
        target_schema = target_table.split('.')[0].lower() if '.' in target_table else current_module_name.lower()
        
        # Normalize target table names for matching
        target_table_normalized = normalize(target_table)
        target_table_only_normalized = normalize(target_table.split('.')[-1] if '.' in target_table else target_table)
        
        # Check if target table exists in processed_tables_global (both full name and table-only name)
        target_exists = (
            target_table_normalized in processed_tables_global or
            target_table_only_normalized in processed_tables_global
        )
        
        # Rule: Resolve constraint if target table exists in processed_tables_global (was created)
        # This works for both same-module and cross-module constraints
        # For example: hrcs table referencing organization lookup table
        # The constraint should be resolved when the organization lookup table is created
        if target_exists:
            satisfied.append(con)
            con_table = get_constraint_table(con)
            print(f"        DEBUG: Resolving pending constraint: {con_table} -> {target_table}")
            print(f"          - target_exists: {target_exists}")
            print(f"          - target_schema: '{target_schema}'")
            print(f"          - current_module: '{current_module_name.lower()}'")
            print(f"          - target_table_normalized: '{target_table_normalized}'")
            print(f"          - target_table_only_normalized: '{target_table_only_normalized}'")
        else:
            remaining.append(con)
            
    if not satisfied:
        return remaining, False

    # CRITICAL: Group constraints by the TARGET table (where the target table was just created)
    # Constraints should be added as the NEXT batch AFTER the target table is created
    # For lookup tables: use format lookup_0005_table_name_add_constraints_001
    # For regular tables: use format migrations_00050_module_add_constraints_batch_001
    constraints_by_target = {}
    table_type_map = globals().get('table_type_map', {})
    
    for con in satisfied:
        target_table = get_referenced_table(con)
        if target_table:
            # Extract target table name and module
            if '.' in target_table:
                target_module = target_table.split('.')[0].lower()
                target_table_only = target_table.split('.')[-1]
            else:
                target_module = current_module_name.lower()
                target_table_only = target_table
            
            # Check if target table is a lookup table
            target_table_normalized = normalize(target_table_only)
            is_lookup = False
            if target_table_normalized in table_type_map:
                is_lookup = (table_type_map[target_table_normalized] == 'lookup')
            elif target_table_only.endswith('_lk'):
                is_lookup = True
            
            # Create key: (target_table_only, is_lookup, target_module)
            # This groups constraints by the specific target table
            key = (target_table_only, is_lookup, target_module)
            if key not in constraints_by_target:
                constraints_by_target[key] = []
            constraints_by_target[key].append(con)
        else:
            # Can't determine target - use current module as fallback
            key = (None, False, current_module_name.lower())
            if key not in constraints_by_target:
                constraints_by_target[key] = []
            constraints_by_target[key].append(con)
    
    # Create constraints batches for each target table (next batch after target table creation)
    folders_created = False
    for (target_table_only, is_lookup, target_module), module_constraints in constraints_by_target.items():
        # Assign globally unique batch number (this will be the NEXT batch after target table creation)
        batch_number = get_next_batch_number(state, f"constraints after target table '{target_table_only}' in module '{target_module}'")
        
        if is_lookup and target_table_only:
            # For lookup tables: use format lookup_0005_table_name_add_constraints_001
            # Get the screen number from the lookup table tracking
            lookup_table_screen_numbers = globals().get('lookup_table_screen_numbers', {})
            target_table_normalized_for_screen = normalize(target_table_only)
            lookup_screen_number = lookup_table_screen_numbers.get(target_table_normalized_for_screen, screen_number if screen_number else 1)
            table_clean = re.sub(r'[^a-z0-9_]', '', target_table_only.lower().replace(" ", "_"))
            folder_name = f"migrations_{batch_number:05d}_lookup_{lookup_screen_number:04d}_{table_clean}_add_constraints_001"
            print(f"     Creating constraints batch (next batch after lookup table creation): {folder_name}")
            print(f"       - Resolving {len(module_constraints)} constraint(s) that reference lookup table '{target_table_only}'")
            print(f"       - Using screen number {lookup_screen_number} from lookup table tracking")
        else:
            # For regular tables: use format migrations_00050_module_add_constraints_batch_001
            screen_str = f"_{screen_number:04d}" if screen_number else ""
            folder_name = f"migrations_{batch_number:05d}_{target_module}{screen_str}_add_constraints_batch_001"
            print(f"     Creating constraints batch (next batch after target table creation) for module '{target_module}': {folder_name}")
            print(f"       - Resolving {len(module_constraints)} constraint(s) that reference tables in '{target_module}' module")
        
        folder_abs = os.path.abspath(os.path.join(OUTPUT_FOLDER, folder_name))
        paths = {
            "scripts": os.path.join(folder_abs, "scripts", "ddl", "constraints"),
            "rollback": os.path.join(folder_abs, "rollback", "ddl", "constraints"),
        }
        for p in paths.values(): os.makedirs(p, exist_ok=True)

        with open(os.path.join(paths["scripts"], "001_create_foreign_keys.sql"), "w", encoding="utf-8") as f:
            for con in module_constraints: f.write(con + "\n\n")

        with open(os.path.join(paths["rollback"], "001_rollback_create_foreign_keys.sql"), "w", encoding="utf-8") as f:
            for con in reversed(module_constraints):
                rb = build_constraint_rollback(con)
                if rb: f.write(rb)
        
        folders_created = True

    return remaining, folders_created


"""
def update_master_changelog(folder_name):
    Update the master changelog with the new folder name.
    try:
        os.makedirs(os.path.dirname(MASTER_CHANGELOG), exist_ok=True)
        # Check if folder already in changelog to avoid duplicates
        existing_folders = []
        if os.path.exists(MASTER_CHANGELOG):
            with open(MASTER_CHANGELOG, 'r', encoding='utf-8') as f:
                for line in f:
                    if line.startswith('-- include: '):
                        existing_folders.append(line.replace('-- include: ', '').strip())
        
        if folder_name not in existing_folders:
            with open(MASTER_CHANGELOG, 'a', encoding='utf-8') as f:
                # Use Liquibase SQL include syntax if preferred, or just a comment
                f.write(f"-- include: {folder_name}\n")
                f.write(f"-- @include {folder_name}/scripts/ddl/tables/*.sql\n")
                f.write(f"-- @include {folder_name}/scripts/ddl/constraints/*.sql\n")
                f.write(f"-- @include {folder_name}/scripts/tenant_specific/tenant_1/dml/*.sql\n")
                f.write(f"-- @include {folder_name}/scripts/ddl/permissions/*.sql\n\n")
    except Exception as e:
        print(f"       Warning: Could not update master changelog: {e}")
"""


def scan_existing_batch_numbers():
    """
    Scan existing migration folders to find all batch numbers.
    
    @description Scans the output folder for existing migration folders and extracts
    all batch numbers to ensure sequential numbering without gaps.
    @returns {list} Sorted list of all batch numbers found in existing folders
    @author Aravind Sekar
    @created 24-01-2026
    """
    # @confidential
    batch_numbers = []
    output_path = os.path.abspath(OUTPUT_FOLDER)
    
    if not os.path.exists(output_path):
        return []
    
    for item in os.listdir(output_path):
        item_path = os.path.join(output_path, item)
        if os.path.isdir(item_path) and item.startswith("migrations_"):
            try:
                # Extract the 5-digit batch number (second part after "migrations_")
                # Pattern: migrations_#####_...
                parts = item.split("_")
                if len(parts) >= 2 and parts[0] == "migrations":
                    batch_num = int(parts[1])
                    batch_numbers.append(batch_num)
            except (ValueError, IndexError):
                continue
    
    return sorted(batch_numbers)


def sync_state_with_folders(state):
    """
    Synchronize state file with actual existing folders.
    
    @description Ensures the state file's last_batch_number matches the highest
    batch number found in existing folders, or starts from 0 if no folders exist.
    If 00001 is missing, sets state to 0 so next batch will be 00001.
    @param {dict} state - The state object to sync
    @returns {dict} Updated state object
    @author Aravind Sekar
    @created 24-01-2026
    """
    # @confidential
    existing_batches = scan_existing_batch_numbers()
    
    if not existing_batches:
        # No folders exist, start from 0 (next will be 00001)
        state["last_batch_number"] = 0
    else:
        # Check if 00001 is missing - if so, reset to 0 to fill the gap
        if 1 not in existing_batches:
            # 00001 is missing, set state to 0 so next batch will be 00001
            state["last_batch_number"] = 0
        else:
            # Use the highest batch number found in folders
            max_batch = max(existing_batches)
            state["last_batch_number"] = max_batch
    
    return state


def get_next_batch_number(state, caller_info=None):
    """
    Find the next available batch number, ensuring sequential numbering.
    
    @description Gets the next batch number by checking both the state file and
    existing folders to ensure sequential numbering starting from 00001.
    Ensures no gaps in the sequence and starts from 00001 if no folders exist.
    @param {dict} state - Global migration state object
    @param {str} caller_info - Optional info about who is calling this function
    @returns {int} Next available batch number (1, 2, 3, ...)
    @author Aravind Sekar
    @created 24-01-2026
    """
    # @confidential
    # Ensure last_batch_number exists
    if "last_batch_number" not in state:
        state["last_batch_number"] = 0
    
    # Get existing batch numbers to check for gaps
    existing_batches = scan_existing_batch_numbers()
    
    # If no folders exist, start from 00001
    if not existing_batches:
        batch_num = 1
    else:
        # ALWAYS check for gaps first, starting from 1
        # This ensures we fill missing batches (like 4 and 9) before using new numbers
        max_batch = max(existing_batches)
        batch_num = None
        
        # Find the first gap in the sequence starting from 1
        for i in range(1, max_batch + 2):
            if i not in existing_batches:
                batch_num = i
                break
        
        # If no gaps found, use max + 1
        if batch_num is None:
            batch_num = max_batch + 1
    
    # Update state to reflect the batch number we're about to use
    state["last_batch_number"] = batch_num
    # Save immediately to ensure persistence
    save_state(state)
    
    # Log batch 1 assignment for debugging
    if batch_num == 1:
        if caller_info:
            print(f"   DEBUG: Batch 00001 assigned to: {caller_info}")
        else:
            import traceback
            stack = traceback.extract_stack()
            if len(stack) >= 2:
                caller = stack[-2]
                print(f"   DEBUG: Batch 00001 assigned (called from {os.path.basename(caller.filename)}:{caller.lineno})")
    
    return batch_num


def update_last_batch_number(batch_num):
    """Update the batch number in state file."""
    state = load_state()
    state["last_batch_number"] = batch_num
    save_state(state)


def add_processed_table(table_name):
    """Add a table to the global registry of created tables."""
    state = load_state()
    normalized_table = normalize(table_name)
    if normalized_table not in state["processed_tables"]:
        state["processed_tables"].append(normalized_table)
        save_state(state)


def is_table_processed(table_name):
    """Check if a table has already been created."""
    state = load_state()
    return normalize(table_name) in state["processed_tables"]


def add_global_constraints(constraints_list):
    """Add constraints to the global collection."""
    if not constraints_list:
        return
    state = load_state()
    if "global_constraints" not in state:
        state["global_constraints"] = []
    for con in constraints_list:
        if con not in state["global_constraints"]:
            state["global_constraints"].append(con)
    save_state(state)


def generate_final_constraints_folder():
    """Generate a special final folder containing all collected constraints."""
    state = load_state()
    constraints = state.get("global_constraints", [])
    if not constraints:
        print("       No global constraints to generate.")
        return None

    # Use a very high batch number to ensure it runs last
    final_batch_number = 99999
    folder_name = f"migrations_{final_batch_number:05d}_global_foreign_keys_batch_001"
    
    # Paths
    folder_abs = os.path.abspath(os.path.join(OUTPUT_FOLDER, folder_name))
    scripts_dir = os.path.join(folder_abs, "scripts", "ddl", "constraints")
    rollback_dir = os.path.join(folder_abs, "rollback", "ddl", "constraints")
    
    os.makedirs(scripts_dir, exist_ok=True)
    os.makedirs(rollback_dir, exist_ok=True)
    
    # Write constraints
    constraint_file = os.path.join(scripts_dir, "001_all_modules_foreign_keys.sql")
    with open(constraint_file, "w", encoding="utf-8") as f:
        f.write("-- ============================================================================\n")
        f.write("-- GLOBAL FOREIGN KEY CONSTRAINTS\n")
        f.write("-- These constraints reference tables across multiple modules.\n")
        f.write("-- Run this folder after all module tables have been created.\n")
        f.write("-- ============================================================================\n\n")
        for con in sorted(constraints):
            f.write(con + "\n\n")
            
    # Write rollback
    rollback_file = os.path.join(rollback_dir, "001_rollback_all_foreign_keys.sql")
    with open(rollback_file, "w", encoding="utf-8") as f:
        for con in reversed(sorted(constraints)):
            rb = build_constraint_rollback(con)
            if rb:
                f.write(rb)
                
    print(f"\n  Created global constraints folder: {folder_name}")
    # update_master_changelog(folder_name)
    return folder_name


def create_permission_folder_name(batch_number, app_user_name, screen_name, screen_number, migration_type="permission", migration_number=1, table_name=None):
    """Create permission folder name using app_user name instead of module name.
    
    Format: migrations_{5 DIGIT SEQUENCE}_{app_user_name}_{4 DIGIT SCREEN_SEQUENCE}_{screen_name/table_name}_permission_batch_{3 DIGIT BATCH_SEQUENCE}
    """
    # Max length for Git compatibility (warn/shorten if exceeded)
    MAX_FOLDER_LEN = 100

    # Ensure batch_number is valid
    if batch_number is None or batch_number < 1:
        batch_number = 1
    
    # Ensure screen_number is valid (1-200)
    if screen_number is None or screen_number < 1:
        screen_number = 1
    elif screen_number > 200:
        screen_number = 200
    
    batch_str = f"{batch_number:05d}"  # 5-digit sequence number (00001-99999)
    screen_str = f"{screen_number:04d}"  # 4-digit screen number (0001-0200)
    migration_str = f"{migration_number:03d}"  # Batch number (001-999)
    
    # Clean app_user name: remove _app_user suffix and clean special chars
    app_user_clean = app_user_name.lower().replace(" ", "_")
    app_user_clean = re.sub(r'[^a-z0-9_]', '', app_user_clean)
    
    # Format target name (table_name takes priority over screen_name)
    target_clean = ""
    if table_name:
        target_clean = re.sub(r'[^a-z0-9_]', '', table_name.lower().replace(" ", "_"))
    elif screen_name and screen_name.lower() not in ['', 'default', 'none']:
        target_clean = re.sub(r'[^a-z0-9_]', '', screen_name.lower().replace(" ", "_"))
    
    type_name = migration_type.lower()  # permission
    
    # Build folder name
    if target_clean:
        folder_name = f"migrations_{batch_str}_{app_user_clean}_{screen_str}_{target_clean}_{type_name}_batch_{migration_str}"
    else:
        folder_name = f"migrations_{batch_str}_{app_user_clean}_{screen_str}_{type_name}_batch_{migration_str}"
    
    # If folder name is too long, abbreviate the target part
    if len(folder_name) > MAX_FOLDER_LEN:
        if target_clean:
            # Calculate allowed length for target_clean
            fixed_parts_len = len(f"migrations_{batch_str}_{app_user_clean}_{screen_str}__batch_{migration_str}") + len(type_name)
            allowed_target_len = MAX_FOLDER_LEN - fixed_parts_len
            
            # Use intelligent abbreviation aggressively
            target_clean = abbreviate_folder_table_name(target_clean, max_length=max(10, allowed_target_len))
            folder_name = f"migrations_{batch_str}_{app_user_clean}_{screen_str}_{target_clean}_{type_name}_batch_{migration_str}"
            
            # If STILL too long, abbreviate the app_user_clean part too
            if len(folder_name) > MAX_FOLDER_LEN:
                fixed_parts_len = len(f"migrations_{batch_str}___{screen_str}_{target_clean}_batch_{migration_str}") + len(type_name)
                allowed_user_len = MAX_FOLDER_LEN - fixed_parts_len
                app_user_clean = abbreviate_folder_table_name(app_user_clean, max_length=max(10, allowed_user_len))
                folder_name = f"migrations_{batch_str}_{app_user_clean}_{screen_str}_{target_clean}_{type_name}_batch_{migration_str}"
        else:
            # No target, shorten app_user_clean
            allowed_user_len = MAX_FOLDER_LEN - (len(f"migrations_{batch_str}__batch_{migration_str}") + len(screen_str) + len(type_name))
            app_user_clean = abbreviate_folder_table_name(app_user_clean, max_length=max(15, allowed_user_len))
            folder_name = f"migrations_{batch_str}_{app_user_clean}_{screen_str}_{type_name}_batch_{migration_str}"

    return folder_name


def create_folder_name(batch_number, module_name, screen_name, screen_number, migration_type="schema", migration_number=1):
    """Create folder name with length control using intelligent abbreviation."""
    MAX_FOLDER_LEN = 100

    # Ensure batch_number is valid
    if batch_number is None or batch_number < 1:
        batch_number = 1
    
    # Ensure screen_number is valid (1-200)
    if screen_number is None or screen_number < 1:
        screen_number = 1
    elif screen_number > 200:
        screen_number = 200
    
    batch_str = f"{batch_number:05d}"
    screen_str = f"{screen_number:04d}"
    migration_str = f"{migration_number:03d}"
    module_clean = module_name.lower().replace(" ", "_") if module_name else "unknown"
    type_name = migration_type.lower()
    
    if not screen_name or screen_name.lower() in ['', 'default', 'none']:
        screen_clean = ""
    else:
        screen_clean = re.sub(r'[^a-z0-9_]', '', screen_name.lower().replace(" ", "_"))
    
    if module_clean == screen_clean:
        screen_clean = ""
    
    # Build initial folder name
    if screen_clean:
        folder_name = f"migrations_{batch_str}_{module_clean}_{screen_str}_{screen_clean}_{type_name}_batch_{migration_str}"
    else:
        folder_name = f"migrations_{batch_str}_{module_clean}_{screen_str}_{type_name}_batch_{migration_str}"

    # If folder name is too long, abbreviate parts using syllable logic
    if len(folder_name) > MAX_FOLDER_LEN:
        # 1. Try to abbreviate screen_clean first
        if screen_clean:
            # Calculate remaining space
            fixed_len = len(f"migrations_{batch_str}_{module_clean}_{screen_str}__batch_{migration_str}") + len(type_name)
            allowed_screen_len = MAX_FOLDER_LEN - fixed_len
            screen_clean = abbreviate_folder_table_name(screen_clean, max_length=max(10, allowed_screen_len))
            folder_name = f"migrations_{batch_str}_{module_clean}_{screen_str}_{screen_clean}_{type_name}_batch_{migration_str}"

        # 2. If still too long, abbreviate module_clean
        if len(folder_name) > MAX_FOLDER_LEN:
            fixed_len = len(f"migrations_{batch_str}__batch_{migration_str}") + len(screen_str) + len(type_name) + (len(screen_clean) + 1 if screen_clean else 0)
            allowed_module_len = MAX_FOLDER_LEN - fixed_len
            module_clean = abbreviate_folder_table_name(module_clean, max_length=max(10, allowed_module_len))
            if screen_clean:
                folder_name = f"migrations_{batch_str}_{module_clean}_{screen_str}_{screen_clean}_{type_name}_batch_{migration_str}"
            else:
                folder_name = f"migrations_{batch_str}_{module_clean}_{screen_str}_{type_name}_batch_{migration_str}"
    
    return folder_name


def collect_all_sql_files(folder_path):
    """Recursively collect all SQL files from a folder and subfolders, sorted by numeric prefix."""
    sql_files = []
    
    if not os.path.exists(folder_path):
        return sql_files
    
    def extract_sort_key(filename):
        """Extract numeric prefix for sorting (e.g., '001_' -> 1, '010_' -> 10)."""
        match = re.match(r'^(\d+)_', filename)
        if match:
            return int(match.group(1))
        return 999999  # Files without numeric prefix go to end
    
    # Walk through folder and subfolders
    for root, dirs, files in os.walk(folder_path):
        # Sort directories to process in order
        dirs.sort(key=lambda d: extract_sort_key(d) if re.match(r'^\d+_', d) else 999999)
        
        for filename in sorted(files, key=extract_sort_key):
            if filename.endswith('.sql'):
                file_path = os.path.join(root, filename)
                sql_files.append((file_path, filename))
    
    return sql_files


def find_data_folder(data_folder, module_name, prompt_user=True):
    """Find data folder matching module name.
    Structure: <data_folder>/<numeric_prefix_folder>/<module_folder>/
    Example: ./002_client/001_organization/
    Returns folder path, or None if not found.
    If multiple matches found and prompt_user=True, asks user to select.
    """
    if not os.path.exists(data_folder):
        return None
    
    module_clean = module_name.lower().replace(" ", "_")
    module_name_lower = module_name.lower()
    
    matching_folders = []
    
    # Step 1: Find all folders with numeric prefixes (001_, 002_, 003_, etc.)
    # These are parent folders like "002_client"
    numeric_prefix_folders = []
    for item in os.listdir(data_folder):
        item_path = os.path.join(data_folder, item)
        if os.path.isdir(item_path) and re.match(r'^\d+_', item):
            numeric_prefix_folders.append(item_path)
    
    # Step 2: Look inside each numeric prefix folder for the module folder
    # Module folders can also have numeric prefixes like 001_organization, 002_organization, etc.
    for parent_folder in numeric_prefix_folders:
        parent_name = os.path.basename(parent_folder)
        
        # Look for module folder inside parent folder
        # Try exact matches first (with and without numeric prefix)
        possible_module_folders = [
            os.path.join(parent_folder, f"001_{module_clean}"),
            os.path.join(parent_folder, f"001_{module_name}"),
            os.path.join(parent_folder, f"002_{module_clean}"),
            os.path.join(parent_folder, f"002_{module_name}"),
            os.path.join(parent_folder, f"003_{module_clean}"),
            os.path.join(parent_folder, f"003_{module_name}"),
            os.path.join(parent_folder, module_clean),
            os.path.join(parent_folder, module_name),
        ]
        
        for module_folder in possible_module_folders:
            if os.path.exists(module_folder) and os.path.isdir(module_folder):
                matching_folders.append(module_folder)
        
        # Try flexible matching inside parent folder
        # Look for any folder with numeric prefix that contains module name
        if os.path.exists(parent_folder):
            for item in os.listdir(parent_folder):
                item_path = os.path.join(parent_folder, item)
                if not os.path.isdir(item_path):
                    continue
                
                if item_path in matching_folders:
                    continue
                
                item_lower = item.lower()
                # Remove numeric prefix for comparison (e.g., "001_organization" -> "organization")
                item_without_prefix = re.sub(r'^\d+_', '', item_lower)
                
                # Check if module name matches folder name (with or without prefix)
                if (module_name_lower == item_lower or
                    module_clean == item_lower or
                    module_name_lower == item_without_prefix or
                    module_clean == item_without_prefix or
                    module_name_lower in item_lower or
                    module_clean in item_lower or
                    item_without_prefix == module_name_lower or
                    item_without_prefix == module_clean):
                    matching_folders.append(item_path)
    
    # Step 3: Also try direct matches in data_folder (fallback for old structure)
    direct_folders = [
        os.path.join(data_folder, f"001_{module_clean}"),
        os.path.join(data_folder, f"001_{module_name}"),
        os.path.join(data_folder, f"002_{module_clean}"),
        os.path.join(data_folder, f"002_{module_name}"),
        os.path.join(data_folder, module_clean),
        os.path.join(data_folder, module_name),
    ]
    
    for folder in direct_folders:
        if os.path.exists(folder) and os.path.isdir(folder):
            if folder not in matching_folders:
                matching_folders.append(folder)
    
    # Step 4: If data_folder itself contains SQL files
    if any(f.endswith('.sql') for f in os.listdir(data_folder) if os.path.isfile(os.path.join(data_folder, f))):
        if data_folder not in matching_folders:
            matching_folders.append(data_folder)
    
    # Remove duplicates
    matching_folders = list(set(matching_folders))
    
    if not matching_folders:
        return None
    
    # If only one match, show it and return (or prompt if requested)
    if len(matching_folders) == 1:
        if prompt_user:
            selected_folder = matching_folders[0]
            rel_path = os.path.relpath(selected_folder, data_folder)
            sql_count = len(collect_all_sql_files(selected_folder))
            print(f"\n  Found data folder for module '{module_name}':")
            print(f"   {rel_path} ({sql_count} SQL files)")
        return matching_folders[0]
    
    # Multiple matches found - ask user to select
    if prompt_user:
        print(f"\n  Found {len(matching_folders)} matching folder(s) for module '{module_name}':")
        print("=" * 60)
        for i, folder in enumerate(matching_folders, 1):
            # Show full path relative to data_folder for clarity
            rel_path = os.path.relpath(folder, data_folder)
            sql_count = len(collect_all_sql_files(folder))
            print(f"  {i}. {rel_path} ({sql_count} SQL files)")
        print("=" * 60)
        
        while True:
            try:
                choice = input(f"\nSelect folder (1-{len(matching_folders)}): ").strip()
                choice_num = int(choice)
                if 1 <= choice_num <= len(matching_folders):
                    selected_folder = matching_folders[choice_num - 1]
                    rel_path = os.path.relpath(selected_folder, data_folder)
                    print(f"  Selected: {rel_path}")
                    return selected_folder
                else:
                    print(f"  Please enter a number between 1 and {len(matching_folders)}")
            except ValueError:
                print("  Please enter a valid number")
            except KeyboardInterrupt:
                print("\n\n    Cancelled by user")
                return None
    
    # If prompt_user=False, return first match
    return matching_folders[0]


def find_data_files(data_folder, module_name):
    """Find all SQL files in module data folder (e.g., 001_organization or organization folder).
    Excludes permission files (files with 'permission' in the name).
    For organization module, also includes user_onboarding files at the end.
    """
    if not os.path.exists(data_folder):
        return []
    
    # Find matching folder with flexible matching
    target_folder = find_data_folder(data_folder, module_name)
    
    if not target_folder:
        return []
    
    print(f"     Found data folder: {target_folder}")
    
    # Collect all SQL files recursively from module folder
    sql_files = collect_all_sql_files(target_folder)
    
    # Filter out permission files (they will be processed separately)
    data_files = [(fp, fn) for fp, fn in sql_files if 'permission' not in fn.lower()]
    permission_count = len(sql_files) - len(data_files)
    
    # For hrcs module, also include user_onboarding files at the end (moved from organization)
    if module_name.lower() == 'hrcs':
        # Find user_onboarding folder in the same parent directory
        parent_folder = os.path.dirname(target_folder)
        if os.path.exists(parent_folder):
            # Look for user_onboarding folder (flexible matching)
            user_onboarding_folders = []
            for item in os.listdir(parent_folder):
                item_path = os.path.join(parent_folder, item)
                if os.path.isdir(item_path):
                    item_lower = item.lower()
                    # Match user_onboarding, user_onboading (typo), or similar
                    if 'user' in item_lower and ('onboard' in item_lower or 'onboad' in item_lower):
                        user_onboarding_folders.append(item_path)
            
            if user_onboarding_folders:
                # Use the first matching folder
                user_onboarding_folder = user_onboarding_folders[0]
                print(f"     Found user_onboarding folder: {os.path.relpath(user_onboarding_folder, data_folder)}")
                
                # Collect SQL files from user_onboarding folder
                user_onboarding_files = collect_all_sql_files(user_onboarding_folder)
                # Filter out permission files
                user_onboarding_data = [(fp, fn) for fp, fn in user_onboarding_files if 'permission' not in fn.lower()]
                
                if user_onboarding_data:
                    print(f"     Found {len(user_onboarding_data)} user_onboarding file(s) to add to hrcs module")
                    # Add user_onboarding files at the end
                    data_files.extend(user_onboarding_data)
    
    if permission_count > 0:
        print(f"     Found {len(data_files)} total data file(s) (excluded {permission_count} permission file(s))")
    else:
        print(f"     Found {len(data_files)} total SQL file(s)")
    
    return data_files


def extract_all_tables_from_data_files(data_files):
    """
    Extract all table names that have INSERT statements in the data files.
    
    @description Scans all data files and extracts all unique table names that have INSERT statements.
    This is used for validation to ensure no tables are missing.
    Returns both original table names (as found in SQL) and normalized versions.
    
    @param {list} data_files - List of (file_path, filename) tuples
    @returns {dict} Dict mapping table_name -> dict with 'original_name' and 'files' set
    @author Aravind Sekar
    @created 20-01-2025
    """
    table_to_files = defaultdict(lambda: {'original_name': None, 'files': set()})
    
    for file_path, filename in data_files:
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Extract all INSERT statements with their table names
            # Pattern matches: INSERT INTO schema.table or INSERT INTO table
            # Use a more precise pattern that captures the full table name
            insert_pattern = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s*[\(]'
            insert_matches = re.findall(insert_pattern, content, re.I)
            
            # Also try pattern without parentheses (for multi-line INSERTs)
            if not insert_matches:
                insert_pattern2 = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s*(?:\(|VALUES)'
                insert_matches = re.findall(insert_pattern2, content, re.I)
            
            # Also try a more flexible pattern as fallback
            if not insert_matches:
                insert_pattern3 = r'INTO\s+["\']?([\w\.]+)["\']?\s*[\(]'
                insert_matches = re.findall(insert_pattern3, content, re.I)
            
            if not insert_matches:
                insert_pattern4 = r'INTO\s+["\']?([\w\.]+)["\']?\s*(?:\(|VALUES)'
                insert_matches = re.findall(insert_pattern4, content, re.I)
            
            # Track each table with original name
            for table_name in insert_matches:
                # Store original table name (as found in SQL)
                original_table_name = table_name.strip()
                table_normalized = normalize(original_table_name)
                
                # Store with normalized key, but preserve original name
                if table_normalized not in table_to_files or table_to_files[table_normalized]['original_name'] is None:
                    table_to_files[table_normalized]['original_name'] = original_table_name
                table_to_files[table_normalized]['files'].add((file_path, filename))
                
                # Also track table name without schema (for matching)
                table_name_only = normalize(original_table_name.split(".")[-1] if "." in original_table_name else original_table_name)
                if table_name_only != table_normalized:
                    if table_name_only not in table_to_files or table_to_files[table_name_only]['original_name'] is None:
                        table_to_files[table_name_only]['original_name'] = original_table_name
                    table_to_files[table_name_only]['files'].add((file_path, filename))
        except Exception as e:
            print(f"       Error reading file {filename} for validation: {e}")
    
    # Convert to simpler format for compatibility
    result = {}
    for table_key, data in table_to_files.items():
        result[table_key] = data['files']
    
    return result


def validate_all_tables_inserted(all_data_files, processed_tables_by_screen, module_name, full_df):
    """
    Validate that all tables with INSERT statements in source files are actually being inserted.
    
    @description Compares tables found in source data files with tables that are being processed
    and inserted. Reports any missing tables to ensure completeness.
    
    @param {list} all_data_files - List of all (file_path, filename) tuples from source
    @param {dict} processed_tables_by_screen - Dict mapping screen_name -> set of table names being inserted
    @param {string} module_name - Current module name
    @param {DataFrame} full_df - Full Excel mapping DataFrame
    @returns {bool} True if validation passes, False otherwise
    @author Aravind Sekar
    @created 20-01-2025
    """
    print(f"\n  Validating data completeness for module '{module_name}'...")
    
    # Extract all tables from source data files
    source_tables_dict = extract_all_tables_from_data_files(all_data_files)
    
    # Collect all processed tables across all screens
    all_processed_tables = set()
    for screen, tables in processed_tables_by_screen.items():
        all_processed_tables.update(tables)
    
    # Track tables by module for better reporting
    module_tables = []
    other_module_tables = []
    unknown_module_tables = []
    
    for table_name, files in source_tables_dict.items():
        # Check if this table is from the current module
        table_module = get_table_module(table_name, full_df) if full_df is not None else None
        
        if table_module:
            if table_module.lower() == module_name.lower():
                module_tables.append((table_name, files))
            else:
                other_module_tables.append((table_name, files))
        else:
            unknown_module_tables.append((table_name, files))
    
    # Check for missing tables (only for current module tables)
    missing_tables = []
    for table_name, files in module_tables:
        # Check if table is processed (using normalized matching)
        table_found = False
        table_normalized = normalize(table_name)
        table_name_only = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
        
        for processed_table in all_processed_tables:
            processed_normalized = normalize(processed_table)
            processed_only = normalize(processed_table.split(".")[-1] if "." in processed_table else processed_table)
            
            if (table_normalized == processed_normalized or
                table_name_only == processed_only or
                table_normalized == processed_only or
                table_name_only == processed_normalized):
                table_found = True
                break
        
        if not table_found:
            missing_tables.append((table_name, files))
    
    # Report summary
    print(f"     Summary:")
    print(f"      - Tables from '{module_name}' module: {len(module_tables)}")
    print(f"      - Tables from other modules: {len(other_module_tables)}")
    print(f"      - Tables with unknown module: {len(unknown_module_tables)}")
    print(f"      - Tables being inserted: {len(all_processed_tables)}")
    
    # Show unknown module tables if any
    if unknown_module_tables:
        print(f"\n       Tables with unknown module (NOT FOUND in Excel mapping file 'table_screen_mapping.xlsx'):")
        print(f"   {'='*80}")
        for idx, (table_name, files) in enumerate(unknown_module_tables, start=1):
            file_list = ', '.join([f for _, f in list(files)[:5]])  # Show first 5 files
            if len(files) > 5:
                file_list += f" (+{len(files) - 5} more file(s))"
            
            # Try to get original table name from source files
            original_table_name = table_name
            if files:
                # Read first file to get exact table name as it appears in SQL
                try:
                    first_file_path, first_filename = list(files)[0]
                    with open(first_file_path, 'r', encoding='utf-8') as f:
                        content = f.read()
                    # Find the exact INSERT statement
                    pattern = rf'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s*[\(]'
                    matches = re.findall(pattern, content, re.I)
                    if matches:
                        # Find the one that normalizes to our table_name
                        for match in matches:
                            if normalize(match.strip()) == normalize(table_name):
                                original_table_name = match.strip()
                                break
                except Exception:
                    pass
            
            print(f"\n   [{idx}] Table Name (normalized): {table_name}")
            print(f"       Table Name (as found in SQL): {original_table_name}")
            print(f"       Found in file(s): {file_list}")
            print(f"       Action Required: Add this table to 'table_screen_mapping.xlsx' with columns:")
            print(f"          - MODULE: <module_name> (e.g., 'dms', 'hrcs', 'organization')")
            print(f"          - TABLE_NAME: {original_table_name}")
            print(f"          - SCREEN_NAME: <screen_name>")
            print(f"          - SCREEN_ORDER: <screen_order_number>")
        print(f"\n   {'='*80}")
        print(f"\n     Tip: Add the table(s) listed above to the Excel mapping file (table_screen_mapping.xlsx)")
        print(f"      with the correct MODULE, TABLE_NAME, SCREEN_NAME, and SCREEN_ORDER columns.")
        print(f"      This will ensure proper validation and screen assignment.")
    
    # Report results
    if missing_tables:
        print(f"\n     Validation FAILED: Found {len(missing_tables)} table(s) with INSERT statements that are NOT being processed:")
        for table_name, files in missing_tables[:15]:  # Show first 15
            file_list = ', '.join([f for _, f in list(files)[:3]])
            if len(files) > 3:
                file_list += f" (+{len(files) - 3} more)"
            print(f"      - {table_name}")
            print(f"        Found in: {file_list}")
        if len(missing_tables) > 15:
            print(f"      ... and {len(missing_tables) - 15} more table(s)")
        print(f"\n       ACTION REQUIRED: Review the missing tables above and ensure they are included in the migration.")
        return False
    else:
        print(f"\n     Validation PASSED: All {len(module_tables)} table(s) from '{module_name}' module with INSERT statements are being processed")
        if other_module_tables:
            print(f"       Note: {len(other_module_tables)} table(s) from other modules are also included (expected)")
        return True


def split_lookup_predefined_file_by_screen(file_path, filename, screen_tables_map, full_df, current_module_name):
    """
    Split a lookup/predefined file by screen - each screen gets only INSERT statements for tables created in that screen.
    Handles cross-module references: if a same-module table references file IDs, includes DMS file insertions in that screen.
    
    @description Parses a lookup/predefined SQL file and splits it by screen. Each screen receives:
    - INSERT statements for same-module tables created in that screen's schema batch
    - DMS file insertions if same-module tables in that screen reference file IDs (VAR_FILE_ID_X)
    - Other-module insertions are added to all screens
    
    @param {string} file_path - Full path to the SQL file
    @param {string} filename - Name of the file
    @param {dict} screen_tables_map - Dict mapping screen names to list of (table_name, sql) tuples
    @param {DataFrame} full_df - Full Excel mapping DataFrame for module detection
    @param {string} current_module_name - Current module name being processed
    @returns {dict} Dict mapping screen names to dict with 'do_block', 'end_block', and 'inserts' list
    @author Aravind Sekar
    @created 20-01-2025
    """
    screen_inserts = {}  # Map screen -> list of INSERT statement strings
    dms_file_inserts = []  # Track DMS file insertions separately
    insert_statements_info = []  # Track all INSERT statements with metadata
    
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Extract DO block if present
        do_block = None
        do_block_match = re.search(r'(DO\s+\$\$.*?DECLARE.*?BEGIN)', content, re.I | re.DOTALL)
        if do_block_match:
            do_block = do_block_match.group(1)
        
        # Extract END $$ if present
        end_block = None
        end_block_match = re.search(r'(END\s+\$\$;?\s*$)', content, re.I | re.DOTALL)
        if end_block_match:
            end_block = end_block_match.group(1)
        
        # Find all INSERT statements with their complete content
        insert_pattern = r'INSERT\s+INTO\s+["\']?([\w\.]+)\s*(?:\(([^)]+)\))?\s*VALUES\s*'
        matches = list(re.finditer(insert_pattern, content, re.I | re.MULTILINE | re.DOTALL))
        
        # First pass: collect all INSERT statements with metadata
        for match in matches:
            table_name = match.group(1)
            start_pos = match.start()
            
            # Find the end of this INSERT statement (semicolon or next INSERT)
            end_pos = len(content)
            next_insert = re.search(r'INSERT\s+INTO', content[match.end():], re.I)
            if next_insert:
                end_pos = match.end() + next_insert.start()
            
            # Extract the complete INSERT statement
            insert_statement = content[start_pos:end_pos].rstrip()
            # Remove any END $$ statements from the INSERT statement (they'll be added separately)
            insert_statement = re.sub(r'END\s+\$\$;?\s*$', '', insert_statement, flags=re.I | re.MULTILINE).rstrip()
            # Ensure it ends with semicolon
            if not insert_statement.rstrip().endswith(';'):
                insert_statement = insert_statement.rstrip() + ';'
            
            # Determine which module this table belongs to
            table_module = None
            if full_df is not None and current_module_name:
                table_module = get_table_module(table_name, full_df)
            
            # Check if table is from current module
            is_from_current_module = (table_module and table_module.lower() == current_module_name.lower()) if table_module and current_module_name else False
            
            # Check if this is a DMS file insertion (dms.eqms_file)
            is_dms_file = (table_name.lower().startswith('dms.') and 'eqms_file' in table_name.lower())
            
            # Check if this INSERT statement references file IDs (VAR_FILE_ID_X)
            references_file_ids = bool(re.search(r'VAR_FILE_ID_\d+', insert_statement, re.I))
            
            # Check if this INSERT has RETURNING id INTO VAR_FILE_ID_X (file insertion)
            has_returning_file_id = bool(re.search(r'RETURNING\s+id\s+INTO\s+VAR_FILE_ID_\d+', insert_statement, re.I))
            
            insert_statements_info.append({
                'table_name': table_name,
                'insert_statement': insert_statement,
                'is_from_current_module': is_from_current_module,
                'is_dms_file': is_dms_file,
                'references_file_ids': references_file_ids,
                'has_returning_file_id': has_returning_file_id
            })
            
            # Track DMS file insertions separately
            if is_dms_file and has_returning_file_id:
                dms_file_inserts.append(insert_statement)
        
        # Build map of which screens need which file IDs
        # Map: file_id_var -> set of screen names that need it
        file_id_to_screens = defaultdict(set)
        
        # First, identify which screens need which file IDs based on same-module tables
        for info in insert_statements_info:
            if info['is_from_current_module'] and info['references_file_ids']:
                # Find which screen this table belongs to
                table_name = info['table_name']
                table_normalized = normalize(table_name)
                table_name_only = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
                
                target_screen = None
                for screen_name, screen_table_list in screen_tables_map.items():
                    for screen_table_name, _ in screen_table_list:
                        screen_table_normalized = normalize(screen_table_name)
                        screen_table_only = normalize(screen_table_name.split(".")[-1] if "." in screen_table_name else screen_table_name)
                        
                        if (screen_table_normalized == table_normalized or
                            screen_table_only == table_name_only or
                            normalize(screen_table_name) == table_name_only or
                            table_name_only == screen_table_only):
                            target_screen = screen_name
                            break
                    
                    if target_screen:
                        break
                
                # Extract all file ID variables referenced in this INSERT statement
                if target_screen:
                    file_id_refs = re.findall(r'VAR_FILE_ID_\d+', info['insert_statement'], re.I)
                    for file_id_var in file_id_refs:
                        file_id_to_screens[file_id_var].add(target_screen)
        
        # Second pass: assign INSERT statements to screens
        for info in insert_statements_info:
            table_name = info['table_name']
            insert_statement = info['insert_statement']
            is_from_current_module = info['is_from_current_module']
            is_dms_file = info['is_dms_file']
            references_file_ids = info['references_file_ids']
            
            # Re-check module membership to be absolutely sure
            table_module = None
            if full_df is not None and current_module_name:
                table_module = get_table_module(table_name, full_df)
            
            # Also check schema prefix as additional safety check
            table_schema_prefix = table_name.split(".")[0].lower() if "." in table_name else ""
            current_module_schema = current_module_name.lower() if current_module_name else ""
            is_same_module_by_schema = (table_schema_prefix == current_module_schema and table_schema_prefix != "")
            
            # Determine if this is really from current module
            # Use BOTH module detection AND schema prefix check
            is_really_from_current_module = (
                (table_module and table_module.lower() == current_module_name.lower()) if table_module and current_module_name else False
            ) or is_same_module_by_schema
            
            if is_really_from_current_module or is_from_current_module or is_same_module_by_schema:
                # For same-module tables: find which screen creates this table
                table_normalized = normalize(table_name)
                table_name_only = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
                
                # Find which screen this table belongs to
                # CRITICAL: Must find EXACT match - table should only exist in ONE screen's schema batch
                target_screen = None
                all_matching_screens = []  # Track all screens where this table might match
                
                for screen_name, screen_table_list in screen_tables_map.items():
                    for screen_table_name, _ in screen_table_list:
                        screen_table_normalized = normalize(screen_table_name)
                        screen_table_only = normalize(screen_table_name.split(".")[-1] if "." in screen_table_name else screen_table_name)
                        
                        # STRICT matching: table must match exactly (with or without schema prefix)
                        if screen_table_normalized == table_normalized:
                            # Exact match with schema - highest priority
                            if screen_name not in all_matching_screens:
                                all_matching_screens.append(screen_name)
                        elif screen_table_only == table_name_only:
                            # Match on table name only (schema might differ) - lower priority
                            if screen_name not in all_matching_screens:
                                all_matching_screens.append(screen_name)
                
                # Determine target screen: must be exactly ONE match
                if len(all_matching_screens) == 1:
                    # Perfect - table exists in exactly one screen
                    target_screen = all_matching_screens[0]
                elif len(all_matching_screens) > 1:
                    # Ambiguous - table found in multiple screens
                    # This should NOT happen, but if it does, skip to avoid duplicates
                    target_screen = None
                # If len == 0, target_screen remains None (table not found in any screen)
                
                # Add INSERT statement to the appropriate screen
                # CRITICAL: Only add if target_screen is found AND unambiguous
                # If target_screen is None, the table's schema is not created in any screen's batch
                # OR the table exists in multiple screens (ambiguous) - skip to avoid duplicates
                if target_screen:
                    if target_screen not in screen_inserts:
                        screen_inserts[target_screen] = []
                    screen_inserts[target_screen].append(insert_statement)
                # If target_screen is None, DO NOT add to any screen - skip this INSERT
                # This ensures data is only inserted when the schema is created in ONE specific screen
                # DO NOT fall through to the else branch - same-module tables must only go to their screen
                continue  # Explicitly skip to next INSERT statement
            elif is_dms_file:
                # For DMS file insertions: only add to screens that have same-module tables referencing these file IDs
                # Extract which file ID this insertion creates (VAR_FILE_ID_X)
                file_id_match = re.search(r'RETURNING\s+id\s+INTO\s+(VAR_FILE_ID_\d+)', insert_statement, re.I)
                if file_id_match:
                    file_id_var = file_id_match.group(1)
                    
                    # Get screens that need this file ID (from the map we built earlier)
                    screens_needing_this_file = file_id_to_screens.get(file_id_var, set())
                    
                    # Add DMS file insertion only to screens that need it
                    for screen_name in screens_needing_this_file:
                        if screen_name not in screen_inserts:
                            screen_inserts[screen_name] = []
                        if insert_statement not in screen_inserts[screen_name]:
                            # Insert at the beginning so file IDs are available when tables use them
                            screen_inserts[screen_name].insert(0, insert_statement)
                else:
                    # DMS file insertion without RETURNING - add to all screens (fallback)
                    for screen_name in screen_tables_map.keys():
                        if screen_name not in screen_inserts:
                            screen_inserts[screen_name] = []
                        if insert_statement not in screen_inserts[screen_name]:
                            screen_inserts[screen_name].append(insert_statement)
            else:
                # For other-module tables (non-DMS, non-file): add to all screens (they need to be inserted everywhere)
                # BUT: CRITICAL - Double-check that this is NOT a same-module table
                # Re-check module to ensure we're not misclassifying a same-module table
                table_module_recheck = None
                if full_df is not None and current_module_name:
                    table_module_recheck = get_table_module(table_name, full_df)
                
                # STRICT CHECK: Only add to all screens if:
                # 1. Module is confirmed to be from another module (not None, not same as current)
                # 2. AND the table name doesn't start with the current module's schema prefix
                table_schema = table_name.split(".")[0].lower() if "." in table_name else ""
                current_module_schema = current_module_name.lower() if current_module_name else ""
                
                is_confirmed_other_module = (
                    table_module_recheck and 
                    table_module_recheck.lower() != current_module_name.lower()
                )
                
                # Also check if table schema matches current module (additional safety check)
                is_same_module_schema = (table_schema == current_module_schema)
                
                # Only add to all screens if confirmed other module AND not same module schema
                if is_confirmed_other_module and not is_same_module_schema:
                    for screen_name in screen_tables_map.keys():
                        if screen_name not in screen_inserts:
                            screen_inserts[screen_name] = []
                        if insert_statement not in screen_inserts[screen_name]:
                            screen_inserts[screen_name].append(insert_statement)
                # If table_module_recheck is None, same as current_module, or schema matches current module: SKIP
                # This prevents same-module tables (including dnd.eqms_jig_item, dnd.eqms_equipment_item) 
                # from being added to all screens
        
        # Generate optimized DO blocks for each screen with only used variables
        result = {}
        for screen_name, inserts in screen_inserts.items():
            # Extract all variables used in INSERT statements for this screen
            used_variables = set()
            all_inserts_text = '\n'.join(inserts)
            
            # Always include standard variables (they're always used)
            standard_vars = ['VAR_TENANT_KEY', 'VAR_ORG_ID', 'VAR_BUCKET_NAME', 'VAR_USER_ID', 'VAR_USER_SUB']
            for var in standard_vars:
                if re.search(rf'\b{var}\b', all_inserts_text, re.I):
                    used_variables.add(var)
            
            # Extract all VAR_FILE_ID_X variables used
            file_id_vars = re.findall(r'\bVAR_FILE_ID_\d+\b', all_inserts_text, re.I)
            for var in file_id_vars:
                used_variables.add(var.upper())
            
            # Extract any other variables used (VAR_* pattern)
            other_vars = re.findall(r'\bVAR_\w+\b', all_inserts_text, re.I)
            for var in other_vars:
                used_variables.add(var.upper())
            
            # Generate optimized DO block with only used variables
            # Pass full content to extract SELECT statements from BEGIN section
            optimized_do_block = None
            if do_block:
                # Use the content we already read earlier in the function
                optimized_do_block = generate_optimized_do_block(do_block, used_variables, content)
            
            result[screen_name] = {
                'do_block': optimized_do_block if optimized_do_block else do_block,
                'end_block': end_block,
                'inserts': inserts
            }
        
        return result
    except Exception as e:
        print(f"       Error splitting file {filename}: {e}")
        return {}


def generate_optimized_do_block(original_do_block, used_variables, full_content=None):
    """
    Generate an optimized DO block with only the variables that are actually used.
    
    @description Parses the original DO block and extracts only variable declarations
    that are in the used_variables set. Preserves the structure and formatting.
    Also extracts SELECT INTO statements from the BEGIN section.
    
    @param {string} original_do_block - The original DO block with all variable declarations
    @param {set} used_variables - Set of variable names (uppercase) that are actually used
    @param {string} full_content - Optional full file content to extract SELECT statements from BEGIN section
    @returns {string} Optimized DO block with only used variables
    @author Aravind Sekar
    @created 20-01-2025
    """
    if not original_do_block:
        return None
    
    # Extract the parts: DO $$, DECLARE section, BEGIN
    do_match = re.match(r'(DO\s+\$\$)\s*(DECLARE.*?)(BEGIN)', original_do_block, re.I | re.DOTALL)
    if not do_match:
        # If pattern doesn't match, return original
        return original_do_block
    
    do_start = do_match.group(1)
    declare_section = do_match.group(2)
    begin_keyword = do_match.group(3)
    
    # Extract SELECT statements from BEGIN section if full_content is provided
    # SELECT statements are typically after BEGIN, not in DECLARE
    select_source = full_content if full_content else original_do_block
    
    # Parse variable declarations from DECLARE section
    # Handle patterns like:
    # VAR_NAME TYPE;
    # VAR_NAME TYPE := value;
    # VAR_NAME TYPE : = value;  (with spaces around :=)
    var_declarations = []
    lines = declare_section.split('\n')
    current_decl = None
    
    for line in lines:
        line_stripped = line.strip()
        if not line_stripped:
            continue
        
        # Check if this line contains a variable declaration
        # Pattern: VAR_NAME TYPE [:= or : =] [value];
        var_match = re.match(r'(\w+)\s+([A-Z_]+(?:\s*\([^)]+\))?)\s*(?::\s*=\s*|:=\s*)?([^;]*?);?$', line_stripped, re.I)
        if var_match:
            var_name = var_match.group(1).strip().upper()
            var_type = var_match.group(2).strip()
            var_value = var_match.group(3).strip() if var_match.group(3) else None
            
            # Check if this variable is used
            if var_name in used_variables:
                # Reconstruct the declaration preserving original format
                if var_value:
                    # Check original line for := or : = format
                    if ': =' in line:
                        decl = f"    {var_name} {var_type} : = {var_value};"
                    else:
                        decl = f"    {var_name} {var_type} := {var_value};"
                else:
                    decl = f"    {var_name} {var_type};"
                var_declarations.append(decl)
    
    # Also extract SELECT INTO statements (like VAR_USER_ID from VAR_USER_SUB)
    # These statements are typically in the BEGIN section, not DECLARE
    select_statements = []
    select_variables_used = set()  # Track variables used in SELECT statements (for WHERE clauses, etc.)
    
    # Find SELECT ... INTO VAR_NAME statements in the BEGIN section (from full_content if provided)
    # Pattern: SELECT ... INTO VAR_NAME FROM ... WHERE ...;
    select_pattern = r'(SELECT\s+.*?\s+INTO\s+(\w+)\s+.*?;)'
    select_matches = re.finditer(select_pattern, select_source, re.I | re.DOTALL)
    for match in select_matches:
        var_name = match.group(2).strip().upper()
        select_stmt = match.group(1).strip()
        
        # Extract all variables used in this SELECT statement (for WHERE clauses, etc.)
        select_vars = re.findall(r'\bVAR_\w+\b', select_stmt, re.I)
        for var in select_vars:
            select_variables_used.add(var.upper())
        
        if var_name in used_variables:
            if select_stmt not in select_statements:
                select_statements.append(select_stmt)
    
    # Add variables used in SELECT statements to used_variables
    # This ensures VAR_USER_SUB is declared when used in SELECT WHERE clause
    for var in select_variables_used:
        if var not in used_variables:
            used_variables.add(var)
    
    # CRITICAL: If VAR_USER_ID is used, we MUST include the SELECT statement to get it from VAR_USER_SUB
    # This is required for file insertions (dms.eqms_file) that use VAR_USER_ID
    if 'VAR_USER_ID' in used_variables:
        # Ensure VAR_USER_SUB is in used_variables (needed for SELECT WHERE clause)
        if 'VAR_USER_SUB' not in used_variables:
            used_variables.add('VAR_USER_SUB')
        
        # Check if we already have the SELECT statement
        has_user_id_select = any('VAR_USER_ID' in stmt.upper() and 'INTO' in stmt.upper() for stmt in select_statements)
        if not has_user_id_select:
            # Try to find the SELECT statement in the BEGIN section
            # Pattern: SELECT id INTO VAR_USER_ID FROM organization.eqms_users WHERE external_user_id = VAR_USER_SUB ...
            user_id_select_pattern = r'(SELECT\s+.*?\s+INTO\s+VAR_USER_ID\s+.*?FROM\s+.*?WHERE\s+.*?VAR_USER_SUB\s+.*?;)'
            user_id_match = re.search(user_id_select_pattern, select_source, re.I | re.DOTALL)
            if user_id_match:
                select_stmt = user_id_match.group(1).strip()
                if select_stmt not in select_statements:
                    select_statements.append(select_stmt)
            else:
                # Fallback: try simpler pattern
                user_id_select_pattern2 = r'(SELECT\s+.*?\s+INTO\s+VAR_USER_ID\s+.*?;)'
                user_id_match2 = re.search(user_id_select_pattern2, select_source, re.I | re.DOTALL)
                if user_id_match2:
                    select_stmt = user_id_match2.group(1).strip()
                    if select_stmt not in select_statements:
                        select_statements.append(select_stmt)
        
        # Also ensure VAR_USER_ID is declared (it might only be in SELECT INTO, not in INSERT statements)
        # VAR_USER_ID needs to be declared even if it's only used in SELECT INTO
        declared_var_names = [d.strip().split()[0].upper() for d in var_declarations if d.strip()]
        if 'VAR_USER_ID' not in declared_var_names:
            # Find VAR_USER_ID declaration in original
            for line in declare_section.split('\n'):
                if 'VAR_USER_ID' in line.upper() and ('INT' in line.upper() or 'UUID' in line.upper()):
                    var_match = re.match(r'(\w+)\s+([A-Z_]+(?:\s*\([^)]+\))?)\s*;', line.strip(), re.I)
                    if var_match and var_match.group(1).upper() == 'VAR_USER_ID':
                        var_type = var_match.group(2).strip()
                        var_declarations.append(f"    VAR_USER_ID {var_type};")
                        break
    
    # After processing SELECT statements, ensure all variables used in SELECT statements are declared
    # This includes variables used in WHERE clauses (like VAR_USER_SUB, VAR_TENANT_KEY, VAR_ORG_ID)
    declared_var_names = [d.strip().split()[0].upper() for d in var_declarations if d.strip()]
    for var in select_variables_used:
        if var not in declared_var_names and var in used_variables:
            # Find this variable's declaration in the original
            for line in declare_section.split('\n'):
                if var in line.upper():
                    var_match = re.match(r'(\w+)\s+([A-Z_]+(?:\s*\([^)]+\))?)\s*(?::\s*=\s*|:=\s*)?([^;]*?);?$', line.strip(), re.I)
                    if var_match and var_match.group(1).upper() == var:
                        var_type = var_match.group(2).strip()
                        var_value = var_match.group(3).strip() if var_match.group(3) else None
                        if var_value:
                            if ': =' in line:
                                decl = f"    {var} {var_type} : = {var_value};"
                            else:
                                decl = f"    {var} {var_type} := {var_value};"
                        else:
                            decl = f"    {var} {var_type};"
                        if decl not in var_declarations:
                            var_declarations.append(decl)
                        break
    
    # Reconstruct the optimized DO block
    optimized = f"{do_start}\nDECLARE\n"
    
    # Add variable declarations
    for decl in var_declarations:
        optimized += decl + "\n"
    
    optimized += "BEGIN\n"
    
    # Add SELECT INTO statements if any (they go after BEGIN)
    for select_stmt in select_statements:
        optimized += "\n" + select_stmt + "\n"
    
    return optimized


def _process_data_files_for_screen(all_data_files, data_paths, is_lookup_folder=False):
    """
    Helper function to process data files for a screen and create rollback files.
    
    @description Processes data files by copying them and generating rollback files.
    For lookup/predefined files, they should be pre-split by screen before calling this function.
    Returns a set of table names that were inserted in the processed files.
    
    @param {list} all_data_files - List of (file_path, filename) tuples
    @param {dict} data_paths - Dict with 'data' and 'rdata' paths
    @param {bool} is_lookup_folder - If True, this is processing for a lookup folder (don't skip lookup tables)
    @returns {set} Set of table names (normalized) that were inserted
    @author Aravind Sekar
    @created 20-01-2025
    """
    inserted_tables = set()
    
    for i, (file_path, original_filename) in enumerate(all_data_files, start=1):
        # CRITICAL FINAL CHECK: Skip files containing lookup table INSERTs
        # BUT: Only skip if we're NOT processing for a lookup folder
        # When processing for lookup folders, we WANT to include lookup table data
        if not is_lookup_folder:
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    content_pre_check = f.read()
                
                # Extract INSERT statements
                insert_pattern_pre = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?'
                insert_matches_pre = re.findall(insert_pattern_pre, content_pre_check, re.I | re.MULTILINE)
                
                # Check if file contains lookup tables WITH DEDICATED FOLDERS
                # Only exclude files containing lookup tables WITH dedicated folders
                # Regular lookup tables (without dedicated folders) should still be included in screen batches
                file_contains_dedicated_lookup_final = False
                lookup_tables_with_folders_final = globals().get('lookup_tables_with_dedicated_folders', set())
                
                for table_name_pre in insert_matches_pre:
                    table_name_only_pre = normalize(table_name_pre.lower().strip('"\'').split('.')[-1])
                    
                    # CRITICAL: Only exclude if this lookup table has a DEDICATED lookup folder
                    if table_name_only_pre in lookup_tables_with_folders_final:
                        file_contains_dedicated_lookup_final = True
                        if '010_seed_data.sql' in original_filename or 'design_transfer' in original_filename.lower() or 'menu' in original_filename.lower():
                            print(f"     DEBUG: _process_data_files_for_screen: Found lookup table WITH DEDICATED FOLDER '{table_name_only_pre}' in file '{original_filename}' - SKIPPING copy")
                        break
                
                if file_contains_dedicated_lookup_final:
                    print(f"     WARNING: Skipping file '{original_filename}' in _process_data_files_for_screen - contains lookup table(s) with dedicated folders")
                    continue
            except Exception as e:
                if '010_seed_data.sql' in original_filename or 'design_transfer' in original_filename.lower():
                    print(f"     DEBUG: Error in final check for '{original_filename}': {e}")
                # Continue processing if we can't read the file
        
        # New filename: 001_seed_data.sql, 002_seed_data.sql, etc.
        new_filename = f"{i:03}_seed_data.sql"
        dest_file = os.path.join(data_paths["data"], new_filename)
        
        # Ensure destination directory exists
        dest_dir = os.path.dirname(dest_file);
        if not os.path.exists(dest_dir):
            os.makedirs(dest_dir, exist_ok=True);
        
        # Copy file to destination
        try:
            shutil.copy2(file_path, dest_file);
            if is_lookup_folder:
                print(f"        DEBUG: Copied lookup data file '{original_filename}' to '{new_filename}' in lookup folder");
        except Exception as copy_error:
            print(f"        ERROR: Failed to copy file '{original_filename}' to '{new_filename}': {copy_error}");
            import traceback;
            traceback.print_exc();
            continue;
        
        # Create rollback file
        rollback_filename = f"{i:03}_rollback_seed_data.sql"
        rollback_file = os.path.join(data_paths["rdata"], rollback_filename)
        
        # Check if file contains GRANT statements (permissions) or INSERT statements (data)
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Check if file contains GRANT statements
            has_grants = bool(re.search(r'GRANT\s+', content, re.I))
            
            if has_grants:
                # Handle GRANT statements - generate REVOKE statements
                grant_statements = parse_grant_statements(content)
                revoke_statements = generate_revoke_statements(grant_statements)
                
                # Write rollback file for permissions
                with open(rollback_file, "w", encoding="utf-8") as f:
                    f.write(f"-- Rollback: Revoke permissions from file {original_filename}\n")
                    f.write(f"-- Original file: {original_filename}\n")
                    f.write(f"-- Seed data file: {new_filename}\n")
                    f.write("--\n")
                    f.write("-- Note: REVOKE statements are in REVERSE order of GRANT statements\n")
                    f.write("-- (Last granted first) to maintain proper rollback order\n")
                    f.write("--\n\n")
                    
                    if revoke_statements:
                        # Write REVOKE statements in REVERSE order
                        for revoke in reversed(revoke_statements):
                            f.write(f"{revoke}\n")
                    else:
                        f.write("-- Note: Could not parse GRANT statements\n")
                        f.write("-- Please manually add REVOKE statements\n")
            else:
                # Handle INSERT statements - generate DELETE statements
                # Extract DO block if present (for variable declarations)
                do_block = None
                do_block_match = re.search(r'(DO\s+\$\$.*?DECLARE.*?BEGIN)', content, re.I | re.DOTALL)
                if do_block_match:
                    do_block = do_block_match.group(1)
                
                # Extract INSERT statements (skip DO block)
                insert_content = content
                if do_block:
                    # Remove DO block from content for parsing INSERTs
                    insert_content = re.sub(r'DO\s+\$\$.*?DECLARE.*?BEGIN\s*', '', content, flags=re.I | re.DOTALL)
                    # Also remove END $$ at the end
                    insert_content = re.sub(r'END\s+\$\$;?\s*$', '', insert_content, flags=re.I | re.DOTALL)
                
                insert_statements = parse_insert_statements(insert_content)
                delete_statements = generate_delete_statements(insert_statements)
                
                # Track tables being inserted
                for insert_stmt in insert_statements:
                    table_name = insert_stmt.get('table', '')
                    if table_name:
                        inserted_tables.add(normalize(table_name))
                        # Also add table name without schema
                        table_name_only = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
                        if table_name_only != normalize(table_name):
                            inserted_tables.add(table_name_only)
                
                # Also extract from content directly as fallback
                insert_pattern = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)'
                insert_matches = re.findall(insert_pattern, content, re.I)
                if not insert_matches:
                    insert_pattern2 = r'INTO\s+["\']?([\w\.]+)'
                    insert_matches = re.findall(insert_pattern2, content, re.I)
                for table_name in insert_matches:
                    inserted_tables.add(normalize(table_name))
                    table_name_only = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
                    if table_name_only != normalize(table_name):
                        inserted_tables.add(table_name_only)
                
                # Write rollback file - REVERSE order of INSERT statements
                with open(rollback_file, "w", encoding="utf-8") as f:
                    f.write(f"-- Rollback: Delete seed data from file {original_filename}\n")
                    f.write(f"-- Original file: {original_filename}\n")
                    f.write(f"-- Seed data file: {new_filename}\n")
                    f.write("--\n")
                    f.write("-- Note: DELETE statements are in REVERSE order of INSERT statements\n")
                    f.write("-- (Last inserted first) to maintain referential integrity during rollback\n")
                    f.write("-- Each DELETE includes WHERE conditions matching the inserted data\n")
                    f.write("--\n\n")
                    
                    # Include DO block if present
                    if do_block:
                        f.write(do_block)
                        f.write("\n\n")
                    
                    if delete_statements:
                        # Write DELETE statements in REVERSE order
                        for delete in reversed(delete_statements):
                            f.write(f"-- Delete from {delete['table']}\n")
                            delete_stmt = delete['statement']
                            f.write(f"{delete_stmt}\n\n")
                    else:
                        # Fallback: try simple extraction
                        table_counts, tables_in_file = extract_table_insert_counts(file_path)
                        if tables_in_file:
                            f.write("-- Note: Could not parse INSERT statements in detail\n")
                            f.write("-- Generated simple DELETE statements - please review and update with WHERE conditions\n\n")
                            # Reverse order for fallback too
                            for table in reversed(tables_in_file):
                                count = table_counts.get(table, 0)
                                f.write(f"-- Delete {count} record(s) from {table}\n")
                                f.write(f"DELETE FROM {table} WHERE <add_condition_based_on_inserted_data>;\n\n")
                        else:
                            f.write("-- Note: Could not extract table names from source file\n")
                            f.write("-- Please manually add DELETE statements with WHERE conditions for the tables in this file\n")
                    
                    # Close DO block if present
                    if do_block:
                        f.write("END $$;\n")
        except Exception as e:
            # Fallback if parsing fails
            with open(rollback_file, "w", encoding="utf-8") as f:
                f.write(f"-- Rollback: Delete seed data from file {original_filename}\n")
                f.write(f"-- Error parsing file: {e}\n")
                f.write("-- Please manually add DELETE statements with WHERE conditions\n")
    
    return inserted_tables


def is_lookup_file(file_path, filename):
    """Check if a file is a lookup data file.
    A file is considered a lookup file if:
    - Its filename contains 'lookup' (case-insensitive)
    - Or it contains INSERT statements for lookup tables (lk tables - ending with '_lk' or containing '_lk_')
    """
    # Check filename first
    if 'lookup' in filename.lower():
        return True
    
    # Check file content for lookup tables (lk tables)
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Extract table names from INSERT statements
        insert_pattern = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)'
        insert_matches = re.findall(insert_pattern, content, re.I)
        
        # Also try a more flexible pattern
        if not insert_matches:
            insert_pattern2 = r'INTO\s+["\']?([\w\.]+)'
            insert_matches = re.findall(insert_pattern2, content, re.I)
        
        # Check if any table name is a lookup table (lk table)
        # Lookup tables typically end with '_lk' or contain '_lk_'
        for table_name in insert_matches:
            table_name_lower = table_name.lower()
            # Extract table name without schema
            table_name_only = table_name_lower.split(".")[-1] if "." in table_name_lower else table_name_lower
            # Check if it's a lookup table: ends with '_lk' or contains '_lk_'
            if table_name_only.endswith('_lk') or '_lk_' in table_name_only:
                return True
    except Exception:
        pass
    
    return False


def is_predefined_file(file_path, filename):
    """
    Check if a file is a predefined data file.
    
    @description A file is considered a predefined file if its filename contains 'predefined' (case-insensitive).
    @param {string} file_path - Full path to the file
    @param {string} filename - Name of the file
    @returns {boolean} True if the file is a predefined file, False otherwise
    @author Aravind Sekar
    @created 20-01-2025
    """
    # Check filename
    if 'predefined' in filename.lower():
        return True
    
    return False


def is_rbac_abac_workflow_file(file_path, filename):
    """
    Check if a file is RBAC, ABAC, or workflow configuration file.
    
    @description These files need to be inserted in Screen 1 regardless of which screen creates their schemas.
    Files are identified by containing 'rbac', 'abac', or 'workflow' in the filename (case-insensitive).
    @param {string} file_path - Full path to the file
    @param {string} filename - Name of the file
    @returns {boolean} True if the file is RBAC/ABAC/workflow configuration, False otherwise
    @author Aravind Sekar
    @created 20-01-2025
    """
    filename_lower = filename.lower()
    # Check if filename contains rbac, abac, or workflow
    if 'rbac' in filename_lower or 'abac' in filename_lower or 'workflow' in filename_lower:
        return True
    
    return False


def process_data_migrations(module_name, module_df, base_batch_number, sorted_screens, data_folder_path, screen_order_map=None, screen_tables=None, has_permission_files=False, full_df=None):
    """
    Process data files and create data migration folders.
    
    @description Processes data files and creates migration folders for each screen. Handles lookup/predefined
    files with special logic: same module tables only if in schema batch, other module tables always included.
    
    @param {string} module_name - Current module name being processed
    @param {DataFrame} module_df - DataFrame filtered to current module only
    @param {int} base_batch_number - Starting batch number
    @param {list} sorted_screens - List of screens to process. If empty, creates one folder for all data
    @param {string} data_folder_path - The path to the module data folder (already found in main)
    @param {dict} screen_order_map - Map of screen names to their order values
    @param {dict} screen_tables - Dict mapping screen names to list of (table_name, sql) tuples
    @param {boolean} has_permission_files - Whether permission files exist (not used anymore, kept for compatibility)
    @param {DataFrame} full_df - Full Excel mapping DataFrame for module detection
    @returns {int} Next batch number to use (increments only when folders are actually created)
    @author Aravind Sekar
    @created 20-01-2025
    """
    # CRITICAL: Store full_df in globals so _process_data_files_for_screen can access it
    if full_df is not None:
        globals()['full_df'] = full_df
    
    if not data_folder_path or not os.path.exists(data_folder_path):
        print(f"\n    Data folder not found or invalid: {data_folder_path}")
        print("   Skipping data migrations...")
        return base_batch_number  # Return unchanged batch number
    
    print(f"\n  Processing data migrations from: {os.path.relpath(data_folder_path, BASE_FOLDER)}")
    
    # Find all SQL files in the module data folder
    all_data_files = find_data_files(data_folder_path, module_name)
    
    if not all_data_files:
        print("       No SQL files found in data folder")
        return base_batch_number  # Return unchanged batch number
    
    print(f"     Found {len(all_data_files)} data file(s)")
    
    # If no screens specified (framework module), create one data folder
    if not sorted_screens:
        screen = "default"
        screen_num = 1
        # Framework: schema (base), data (base+1), permission (base+2)
        data_batch_number = base_batch_number + 1
        
        # Create folder for all data (lookup + non-lookup combined for framework)
        data_folder_name = create_folder_name(
            batch_number=data_batch_number,
            module_name=module_name,
            screen_name=screen,
            screen_number=screen_num,
            migration_type="data",
            migration_number=1
        )
        
        print(f"\n  Creating data migration folder: {data_folder_name}")
        print(f"   - Total files: {len(all_data_files)}")
        
        # Create folder structure for data migration
        data_paths = {
            "data": os.path.join(data_folder_name, "scripts", "tenant_specific", "tenant_1", "dml"),
            "rdata": os.path.join(data_folder_name, "rollback", "tenant_specific", "tenant_1", "dml"),
        }
        
        for p in data_paths.values():
            os.makedirs(p, exist_ok=True)
        
        # Process data files
        _process_data_files_for_screen(all_data_files, data_paths)
        
        print(f"     Created: {data_folder_name}")
        print(f"     Copied {len(all_data_files)} file(s) as 001_seed_data.sql to {len(all_data_files):03}_seed_data.sql")
        
        # Generate release notes
        generate_data_release_notes(all_data_files, data_folder_name)
        return base_batch_number + 1  # Return next batch number
    
    # Business module: 
    # 1. All non-lookup and non-predefined data goes in Screen 1's data folder
    # 2. Lookup and predefined data are distributed to screens based on which screen's tables they contain
    # Each screen: schema (offset 0), data (offset 1), permission (offset 2)
    # Screen 1: base + 0 (schema), base + 1 (data with all seed + lookup/predefined for screen 1), base + 2 (permission)
    # Screen 2: base + 3 (schema), base + 4 (data with lookup/predefined for screen 2), base + 5 (permission)
    
    # Classify files while preserving original order
    # Track file types and which files have been assigned to screens
    file_types = {}  # Maps (file_path, filename) -> 'lookup', 'predefined', or 'seed'
    seed_count = 0
    lookup_count = 0
    predefined_count = 0
    
    for file_path, filename in all_data_files:
        if is_lookup_file(file_path, filename):
            file_types[(file_path, filename)] = 'lookup'
            lookup_count += 1
        elif is_predefined_file(file_path, filename):
            file_types[(file_path, filename)] = 'predefined'
            predefined_count += 1
        else:
            file_types[(file_path, filename)] = 'seed'
            seed_count += 1
    
    print(f"     Found {seed_count} seed file(s), {lookup_count} lookup file(s), and {predefined_count} predefined file(s)")
    
    # Track which files have been assigned to screens (to avoid duplicates)
    assigned_files = set()
    
    # Use the passed batch number (which is already tracking dynamically from schema folders)
    current_batch_number = base_batch_number
    
    # Process each screen separately
    for screen_idx, screen in enumerate(sorted_screens, start=1):
        # Use SCREEN_ORDER from Excel for folder numbering
        screen_order_from_excel = screen_order_map.get(screen, 9999) if screen_order_map else 9999
        if screen_order_from_excel == 9999 or screen_order_from_excel < 1:
            # Fallback to sequential numbering if SCREEN_ORDER is missing/invalid
            screen_num = screen_idx
        else:
            # Use SCREEN_ORDER value from Excel
            screen_num = screen_order_from_excel
        
        # Batch number will be assigned only if data files are found for this screen
        
        # Get screen's table set for filtering lookup/predefined files
        screen_tables_set = set()
        if screen_tables and screen in screen_tables:
            screen_table_list = screen_tables[screen]
            for table_name, _ in screen_table_list:
                screen_tables_set.add(normalize(table_name))
                # Also add table name without schema
                table_name_only = table_name.split(".")[-1] if "." in table_name else table_name
                screen_tables_set.add(normalize(table_name_only))
        
        # Collect data files for this screen, preserving original order from all_data_files
        screen_data_files = []
        
        # Get lookup files assigned to lookup folders (from current module processing)
        # These should be excluded from screen batches to avoid duplication
        lookup_files_in_lookup_folders = set()
        if 'lookup_files_assigned_to_lookup_folders' in globals():
            lookup_files_in_lookup_folders = globals()['lookup_files_assigned_to_lookup_folders']
        
        # Iterate through all_data_files in original order
        for file_path, filename in all_data_files:
            # Skip if already assigned
            if (file_path, filename) in assigned_files:
                continue
            
            # Skip lookup files that are already assigned to lookup folders (by filename classification)
            # These are files explicitly named as lookup files (e.g., 001_LOOKUP.sql)
            lookup_files_excluded = globals().get('lookup_files_assigned_to_lookup_folders', set())
            normalized_file_path = os.path.abspath(file_path)
            if (normalized_file_path, filename) in lookup_files_excluded or (file_path, filename) in lookup_files_excluded:
                print(f"     DEBUG: Skipping lookup file '{filename}' (classified by filename/content) - should only be in lookup folders")
                continue
            
            # Skip lookup files that are already assigned to lookup folders
            if (file_path, filename) in lookup_files_in_lookup_folders:
                continue
            
            file_type = file_types.get((file_path, filename), 'seed')
            
            # CRITICAL: Skip lookup files - they should ONLY be inserted in lookup batch folders, not in screen data batches
            # Also check if filename contains 'lookup' as an additional safety check
            if file_type == 'lookup' or 'lookup' in filename.lower():
                print(f"     DEBUG: Skipping lookup file '{filename}' (file_type='{file_type}') - should only be in lookup folders")
                continue
            
            # All files (seed, predefined) are assigned to screens based on screen's tables
            # BUT: CRITICAL - Double-check that file doesn't contain lookup table INSERTs
            # Even if filter_data_files_by_screen returns True, exclude if it contains lookup tables
            if screen_tables_set:
                # Check if this file contains tables from this screen
                file_type_for_filter = file_types.get((file_path, filename), 'seed')
                is_lookup = False  # Lookup files are already skipped above
                is_predefined = (file_type_for_filter == 'predefined')
                
                # First check if file contains lookup tables (direct content check)
                # This is a CRITICAL safety check - even if pre-scan missed it, exclude files with lookup tables
                file_contains_lookup_direct = False
                try:
                    with open(file_path, 'r', encoding='utf-8') as f:
                        content_check = f.read()
                    insert_pattern_check = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?'
                    insert_matches_check = re.findall(insert_pattern_check, content_check, re.I | re.MULTILINE)
                    
                    table_type_map_check = globals().get('table_type_map', {})
                    
                    # DEBUG: Check if this is the problematic file
                    if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                        print(f"     DEBUG: Direct content check for file '{filename}'")
                        print(f"       - Found {len(insert_matches_check)} INSERT statement(s)")
                        print(f"       - table_type_map_check has {len(table_type_map_check)} entries")
                        print(f"       - full_df available: {full_df is not None}")
                    
                    for table_name_check in insert_matches_check:
                        table_name_lower_check = table_name_check.lower().strip('"\'')
                        table_name_only_check = normalize(table_name_lower_check.split('.')[-1])
                        
                        # DEBUG: Print table being checked
                        if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                            print(f"       - Checking table: '{table_name_check}' -> normalized: '{table_name_only_check}'")
                        
                        # Check if it's a lookup table (using TABLE_TYPE from Excel, NOT TBL_TYPE)
                        # First check local table_type_map
                        # CRITICAL: Only exclude if this lookup table has a DEDICATED lookup folder
                        lookup_tables_with_folders_direct = globals().get('lookup_tables_with_dedicated_folders', set())
                        if table_name_only_check in lookup_tables_with_folders_direct:
                            file_contains_lookup_direct = True
                            if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower() or 'menu' in filename.lower():
                                print(f"         - FOUND LOOKUP TABLE WITH DEDICATED FOLDER: '{table_name_only_check}' - will exclude file")
                            break
                except Exception as e:
                    if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower() or 'menu' in filename.lower():
                        print(f"     DEBUG: Error in direct content check: {e}")
                    pass  # If we can't read, continue with normal filtering
                
                # CRITICAL: Skip file ONLY if it contains lookup tables WITH dedicated folders
                # Regular lookup tables (without dedicated folders) should still be included in screen batches
                if file_contains_lookup_direct:
                    print(f"     DEBUG: Skipping file '{filename}' - direct check found lookup table(s) with dedicated folders")
                    continue
                
                if filter_data_files_by_screen([(file_path, filename)], screen_tables_set, module_df, 
                                                is_lookup_file_flag=is_lookup, is_predefined_file_flag=is_predefined,
                                                full_df=full_df, current_module_name=module_name):
                    screen_data_files.append((file_path, filename))
                    assigned_files.add((file_path, filename))
            # If no screen tables info, assign seed files to Screen 1 only
            # BUT: Exclude files that contain lookup table INSERTs (they should only be in lookup folders)
            elif file_type == 'seed' and screen_idx == 1:
                # CRITICAL: Multiple exclusion checks
                # 1. Check if filename contains 'lookup' (safety check)
                if 'lookup' in filename.lower():
                    print(f"     DEBUG: Skipping seed file '{filename}' for Screen 1 - filename contains 'lookup'")
                    continue
                
                # 2. Double-check: Skip if file contains lookup table INSERTs
                lookup_files_excluded_check = globals().get('lookup_files_assigned_to_lookup_folders', set())
                normalized_file_path_check = os.path.abspath(file_path)
                if (normalized_file_path_check, filename) not in lookup_files_excluded_check and (file_path, filename) not in lookup_files_excluded_check:
                    screen_data_files.append((file_path, filename))
                    assigned_files.add((file_path, filename))
                else:
                    print(f"     DEBUG: Skipping seed file '{filename}' for Screen 1 - contains lookup table INSERTs")
        
        if screen_data_files:
            seed_added = sum(1 for f, n in screen_data_files if file_types.get((f, n)) == 'seed')
            lookup_added = sum(1 for f, n in screen_data_files if file_types.get((f, n)) == 'lookup')
            predefined_added = sum(1 for f, n in screen_data_files if file_types.get((f, n)) == 'predefined')
            print(f"     Screen {screen_idx}: Adding {len(screen_data_files)} file(s) in original order ({seed_added} seed, {lookup_added} lookup, {predefined_added} predefined)")
        
        if not screen_data_files:
            # Silently skip if no data files found for this screen (as requested by user)
            continue  # Skip this screen's data folder, don't increment batch number
        
        # Assign batch number and increment for next screen
        data_batch_number = current_batch_number
        current_batch_number += 1
        
        # Create folder name for this screen's data migration
        data_folder_name = create_folder_name(
            batch_number=data_batch_number,
            module_name=module_name,
            screen_name=screen,
            screen_number=screen_num,
            migration_type="data",
            migration_number=1
        )
        
        print(f"\n  Creating data migration folder for screen '{screen}': {data_folder_name}")
        print(f"   - Total data files for this screen: {len(screen_data_files)}")
        
        # Create folder structure for data migration
        data_paths = {
            "data": os.path.join(data_folder_name, "scripts", "tenant_specific", "tenant_1", "dml"),
            "rdata": os.path.join(data_folder_name, "rollback", "tenant_specific", "tenant_1", "dml"),
        }
        
        for p in data_paths.values():
            os.makedirs(p, exist_ok=True)
        
        # Process data files for this screen
        _process_data_files_for_screen(screen_data_files, data_paths)
        
        print(f"     Created: {data_folder_name}")
        print(f"     Copied {len(screen_data_files)} file(s) as 001_seed_data.sql to {len(screen_data_files):03}_seed_data.sql")
        
        # Generate release notes for this screen's data
        generate_data_release_notes(screen_data_files, data_folder_name)
    
    # Return the next batch number to use (for permission migrations)
    return current_batch_number


def find_permission_files(data_folder, module_name):
    """Find permission files in module data folder.
    Looks for files with 'permission' in the filename (case-insensitive).
    """
    if not os.path.exists(data_folder):
        return []
    
    # Find matching folder with flexible matching
    target_folder = find_data_folder(data_folder, module_name)
    
    if not target_folder:
        return []
    
    permission_files = []
    
    # Search for files with 'permission' in the name
    for root, dirs, files in os.walk(target_folder):
        for file in files:
            if 'permission' in file.lower() and file.lower().endswith('.sql'):
                file_path = os.path.join(root, file)
                permission_files.append((file_path, file))
    
    return permission_files


def process_permission_migrations(module_name, module_df, base_batch_number, sorted_screens, data_folder_path, screen_order_map=None, screen_tables=None):
    """Process permission files and create permission migration folders.
    data_folder_path: The path to the module data folder (already found in main).
    sorted_screens: List of screens to process. If empty, creates one folder for all permissions.
    screen_order_map: Map of screen names to their order values.
    screen_tables: Dict mapping screen names to list of (table_name, sql) tuples.
    
    base_batch_number: Starting batch number (should be after all schema and data folders).
    """
    if not data_folder_path or not os.path.exists(data_folder_path):
        print(f"\n    Data folder not found or invalid: {data_folder_path}")
        print("   Skipping permission migrations...")
        return base_batch_number  # Return unchanged batch number
    
    print(f"\n  Processing permission migrations from: {os.path.relpath(data_folder_path, BASE_FOLDER)}")
    
    # Find all permission files in the module data folder
    all_permission_files = find_permission_files(data_folder_path, module_name)
    
    if not all_permission_files:
        print("       No permission files found in data folder - skipping permission migrations")
        print("       This will not affect batch number sequence")
        return base_batch_number  # Return unchanged batch number
    
    # If no screens specified (framework module), create one permission folder
    if not sorted_screens:
        screen = "default"
        screen_num = 1
        # Calculate batch number for permission migration
        # Framework: schema (base), data (base+1), permission (base+2)
        permission_batch_number = base_batch_number
    else:
        # For business modules: create separate permission folder for each screen
        # Track which permission files have been assigned to screens (to avoid duplicates)
        assigned_permission_files = set()
        
        # Track current batch number (increments only when folders are created)
        current_batch_number = base_batch_number
        
        # Process each screen separately
        for screen_idx, screen in enumerate(sorted_screens, start=1):
            # Use SCREEN_ORDER from Excel for folder numbering
            screen_order_from_excel = screen_order_map.get(screen, 9999) if screen_order_map else 9999
            if screen_order_from_excel == 9999 or screen_order_from_excel < 1:
                # Fallback to sequential numbering if SCREEN_ORDER is missing/invalid
                screen_num = screen_idx
            else:
                # Use SCREEN_ORDER value from Excel
                screen_num = screen_order_from_excel
            
            # Batch number will be assigned only if permission files are found for this screen
            
            # Filter permission files to only include those relevant to this screen
            screen_permission_files = []
            if screen_tables and screen in screen_tables:
                screen_table_list = screen_tables[screen]
                # Create set of normalized table names for this screen
                screen_tables_set = set()
                for table_name, _ in screen_table_list:
                    screen_tables_set.add(normalize(table_name))
                    # Also add table name without schema
                    table_name_only = table_name.split(".")[-1] if "." in table_name else table_name
                    screen_tables_set.add(normalize(table_name_only))
                    # Also add with schema prefix if it exists
                    if "." in table_name:
                        schema_name = table_name.split(".")[0]
                        screen_tables_set.add(normalize(f"{schema_name}.{table_name_only}"))
                
                # Get permission files that haven't been assigned yet and contain this screen's tables
                # Screen 1 can include schema-wide grants, other screens only get table-specific grants
                available_permission = [(f, n) for f, n in all_permission_files if (f, n) not in assigned_permission_files]
                include_schema_grants = (screen_idx == 1)  # Only Screen 1 gets schema-wide grants
                
                if available_permission:
                    screen_permission_files = filter_permission_files_by_screen(available_permission, screen_tables_set, module_df, include_schema_grants=include_schema_grants)
                    
                    # Mark these files as assigned
                    for file_tuple in screen_permission_files:
                        assigned_permission_files.add(file_tuple)
            else:
                # If no screen_tables info, skip this screen
                pass
            
            if not screen_permission_files:
                # Silently skip if no permission files found for this screen (as requested by user)
                continue  # Skip this screen's permission folder, don't increment batch number
            
            # Assign batch number and increment for next screen
            permission_batch_number = current_batch_number
            current_batch_number += 1
            
            # Create folder name for this screen's permission migration
            permission_folder_name = create_folder_name(
                batch_number=permission_batch_number,
                module_name=module_name,
                screen_name=screen,
                screen_number=screen_num,
                migration_type="permission",
                migration_number=1
            )
            
            print(f"\n  Creating permission migration folder for screen '{screen}': {permission_folder_name}")
            print(f"   - Total files for this screen: {len(screen_permission_files)} (filtered from {len(all_permission_files)} total)")
            
            # Create folder structure for permission migration
            permission_paths = {
                "scripts": os.path.join(permission_folder_name, "scripts", "migrations"),
                "rollback": os.path.join(permission_folder_name, "rollback", "migrations"),
            }
            
            for p in permission_paths.values():
                os.makedirs(p, exist_ok=True)
            
            # Skip copying existing permission files - only batch permission file will be generated
            # _process_permission_files_for_screen(screen_permission_files, permission_paths)
            
            print(f"\n  Permission migration folder created: {permission_folder_name}")
        
        # Return the current batch number (all permission folders have been created)
        return current_batch_number
    
    # Framework module: single permission folder
    # Calculate batch number for permission migration
    permission_batch_number = base_batch_number
    
    # Create folder name for permission migration
    permission_folder_name = create_folder_name(
        batch_number=permission_batch_number,
        module_name=module_name,
        screen_name=screen,
        screen_number=screen_num,
        migration_type="permission",
        migration_number=1
    )
    
    print(f"\n  Creating permission migration folder: {permission_folder_name}")
    print(f"   - Total files: {len(all_permission_files)}")
    
    # Create folder structure for permission migration
    # Structure: scripts/migrations/ and rollback/migrations/
    permission_paths = {
        "scripts": os.path.join(permission_folder_name, "scripts", "migrations"),
        "rollback": os.path.join(permission_folder_name, "rollback", "migrations"),
    }
    
    for p in permission_paths.values():
        os.makedirs(p, exist_ok=True)
    
    # Skip copying existing permission files - only batch permission file will be generated
    # _process_permission_files_for_screen(all_permission_files, permission_paths)
    
    print(f"\n  Permission migration folder created: {permission_folder_name}")
    
    return base_batch_number + 1  # Return next batch number


def _process_permission_files_for_screen(permission_files, permission_paths):
    """Helper function to process permission files for a screen and create rollback files."""
    for i, (file_path, original_filename) in enumerate(permission_files, start=1):
        # New filename: 001_alter_tables.sql, 002_alter_tables.sql, etc. (matching schema migration naming)
        new_filename = f"{i:03}_alter_tables.sql"
        dest_file = os.path.join(permission_paths["scripts"], new_filename)
        shutil.copy2(file_path, dest_file)
        
        # Create rollback file
        rollback_filename = f"{i:03}_rollback_alter_tables.sql"
        rollback_file = os.path.join(permission_paths["rollback"], rollback_filename)
        
        # Check if file contains GRANT statements and generate REVOKE statements
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Check if file contains GRANT statements
            has_grants = bool(re.search(r'GRANT\s+', content, re.I))
            
            if has_grants:
                # Handle GRANT statements - generate REVOKE statements
                grant_statements = parse_grant_statements(content)
                revoke_statements = generate_revoke_statements(grant_statements)
                
                # Write rollback file for permissions
                with open(rollback_file, "w", encoding="utf-8") as f:
                    f.write(f"-- Rollback: Revoke permissions from file {original_filename}\n")
                    f.write(f"-- Original file: {original_filename}\n")
                    f.write(f"-- Permission file: {new_filename}\n")
                    f.write("--\n")
                    f.write("-- Note: REVOKE statements are in REVERSE order of GRANT statements\n")
                    f.write("-- (Last granted first) to maintain proper rollback order\n")
                    f.write("--\n\n")
                    
                    if revoke_statements:
                        # Write REVOKE statements in REVERSE order
                        for revoke in reversed(revoke_statements):
                            f.write(f"{revoke}\n")
                    else:
                        f.write("-- Note: Could not parse GRANT statements\n")
                        f.write("-- Please manually add REVOKE statements\n")
            else:
                # No GRANT statements found
                with open(rollback_file, "w", encoding="utf-8") as f:
                    f.write(f"-- Rollback: Permission file {original_filename}\n")
                    f.write(f"-- Original file: {original_filename}\n")
                    f.write(f"-- Permission file: {new_filename}\n")
                    f.write("--\n")
                    f.write("-- Note: No GRANT statements found in source file\n")
                    f.write("-- Please manually add REVOKE statements if needed\n")
        except Exception as e:
            # Fallback if parsing fails
            with open(rollback_file, "w", encoding="utf-8") as f:
                f.write(f"-- Rollback: Permission file {original_filename}\n")
                f.write(f"-- Error parsing file: {e}\n")
                f.write("-- Please manually add REVOKE statements\n")
        
        print(f"     Copied: {original_filename} -> {new_filename}")


def extract_foreign_key_tables(screen_tables, screen_constraints, module_name):
    """
    Extract all foreign key referenced tables from a screen's constraints.
    
    @description Extracts table names that are referenced by foreign keys in the current screen's schema batch.
    These tables need table-level permissions granted. Excludes foreign keys from the same schema.
    
    @param {list} screen_tables - List of (table_name, sql) tuples for tables in this screen
    @param {list} screen_constraints - List of constraint SQL statements for this screen
    @param {string} module_name - Current module name
    
    @returns {set} Set of normalized table names (with schema) that are referenced by foreign keys (excluding same schema)
    @author Aravind Sekar
    @created 28-12-2024
    """
    fk_tables = set()
    current_schema = module_name.lower()
    
    # Extract all foreign key constraints
    for constraint in screen_constraints:
        if is_foreign_key_constraint(constraint):
            ref_table = get_referenced_table(constraint)
            if ref_table:
                # Check if the referenced table is from a different schema
                # Parse the table name to extract schema
                if '.' in ref_table:
                    ref_schema = ref_table.split('.')[0].lower()
                    # Only include if it's from a different schema
                    if ref_schema != current_schema:
                        fk_tables.add(ref_table)
                else:
                    # If no schema prefix, assume it's from current schema, so skip it
                    pass
    
    return fk_tables


def read_app_user_mapping():
    """
    Read app user mapping from app_user.txt file.
    
    @description Reads the app_user.txt file and returns a dictionary mapping module names to app user names.
    Handles special cases like hrcs (multiple users) and dnd specification screen.
    
    @returns {dict} Dictionary mapping module names (lowercase) to list of app user names
    @author Aravind Sekar
    @created 28-12-2024
    """
    module_user_mapping = {}
    
    if not os.path.exists(APP_USER_FILE):
        print(f"       App user file not found: {APP_USER_FILE}")
        return module_user_mapping
    
    try:
        with open(APP_USER_FILE, 'r', encoding='utf-8') as f:
            lines = f.readlines()
        
        # Skip header lines: line 1 (empty) and line 2 ("Module	App_user_name")
        # Start from line 3 (index 2)
        for line in lines[2:]:
            line = line.strip()
            if not line or line.startswith('#'):
                continue
            
            # Split by tab
            parts = line.split('\t')
            if len(parts) < 1:
                continue
            
            module_name = parts[0].strip().lower()
            # Skip if no module name, or if it starts with comma (comment/continuation line)
            # or contains " - for" (comment line)
            if not module_name or module_name.startswith(',') or ' - for' in module_name:
                continue
            
            # Get app user names (skip empty columns and comments)
            app_users = []
            for part in parts[1:]:
                part = part.strip()
                if not part:
                    continue
                
                # Split by comma to handle comma-separated values in the same column
                # e.g., "magic_read_app_user,magic_save_app_user"
                comma_separated = part.split(',')
                
                for user_raw in comma_separated:
                    user = user_raw.strip()
                    # Remove leading commas
                    if user.startswith(','):
                        user = user[1:].strip()
                    # Remove trailing commas
                    if user.endswith(','):
                        user = user[:-1].strip()
                    
                    if user and not user.startswith('for'):
                        # Check if this user has a " - for" comment (conditional user)
                        # For dnd, magic users with " - for specifications" should NOT be in base mapping
                        # They will be added conditionally in get_module_app_users()
                        if ' - ' in user:
                            # This is a conditional user (e.g., "magic_read_app_user - for specifications")
                            # Skip it from base mapping - it will be handled conditionally
                            continue
                        # Include magic_ users (they are valid app users for hrcs and dnd)
                        if user and user not in app_users:
                            app_users.append(user)
            
            if app_users:
                module_user_mapping[module_name] = app_users
            else:
                module_user_mapping[module_name] = []
    
    except Exception as e:
        print(f"       Error reading app_user.txt: {e}")
    
    return module_user_mapping


def get_module_app_users(module_name, screen_name=None):
    """
    Get app user name(s) for a given module based on app_user.txt mapping.
    
    @description Returns the app user name(s) for a module. For dnd specification screen,
    also includes magic_read_app_user and magic_save_app_user.
    
    @param {string} module_name - Module name (normalized to lowercase)
    @param {string} screen_name - Optional screen name (for special cases like dnd specification)
    
    @returns {list} List of app user names for this module
    @author Aravind Sekar
    @created 28-12-2025
    """
    # Read mapping from file (cache it in a global variable to avoid reading multiple times)
    if 'app_user_mapping_cache' not in globals():
        globals()['app_user_mapping_cache'] = read_app_user_mapping()
        # Debug: print loaded mappings
        print(f"     Loaded app_user mappings for {len(globals()['app_user_mapping_cache'])} module(s)")
    
    module_normalized = module_name.lower().strip()
    app_users = globals()['app_user_mapping_cache'].get(module_normalized, []).copy()
    
    # Debug output
    if app_users:
        print(f"     Found {len(app_users)} app user(s) for module '{module_name}': {app_users}")
    else:
        print(f"       No app users found for module '{module_name}' in app_user.txt")
    
    # Special handling: For dnd specification screen, add magic users
    if module_normalized == 'dnd' and screen_name and 'specification' in screen_name.lower():
        if 'magic_read_app_user' not in app_users:
            app_users.append('magic_read_app_user')
        if 'magic_save_app_user' not in app_users:
            app_users.append('magic_save_app_user')
        print(f"     Added magic users for dnd specification screen: {app_users}")
    
    return app_users


def extract_user_name_from_permission_files(permission_files):
    """
    Extract user name from existing permission files.
    
    @description Searches existing permission files for GRANT statements to extract the user/role name.
    Falls back to default pattern if not found.
    
    @param {list} permission_files - List of (file_path, filename) tuples
    
    @returns {string} User/role name to grant permissions to
    @author Aravind Sekar
    @created 28-12-2024
    """
    # Try to extract from existing permission files
    for file_path, _ in permission_files:
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            # Look for GRANT ... TO pattern
            match = re.search(r'GRANT\s+.+?\s+TO\s+([^\s;]+)', content, re.I)
            if match:
                user_name = match.group(1).strip()
                return user_name
        except Exception:
            continue
    
    # Default fallback - user can override
    return 'app-user_name'


def generate_batch_permission_sql(module_name, screen_tables, screen_constraints, permission_files, app_user, screen_name=None):
    """
    Generate batch-wise permission SQL file for a specific app_user.
    
    @description Generates a comprehensive permission SQL file for a screen that includes:
    - GRANT USAGE ON SCHEMA for current module
    - GRANT SELECT, INSERT, UPDATE, DELETE on individual tables in the schema
    - Grants permissions to a single app_user
    
    @param {string} module_name - Current module name (schema name)
    @param {list} screen_tables - List of (table_name, sql) tuples for tables in this screen
    @param {list} screen_constraints - List of constraint SQL statements for this screen
    @param {list} permission_files - List of existing permission files (not used, kept for compatibility)
    @param {string} app_user - App user name to grant permissions to
    @param {string} screen_name - Optional screen name (not used, kept for compatibility)
    
    @returns {string} Generated permission SQL content
    @author Aravind Sekar
    @created 28-12-2024
    """
    # Extract table names from screen_tables - use actual schema from dump.sql
    screen_table_names = []
    schemas_used = set()  # Track all schemas used by tables in this screen
    
    for table_name, _ in screen_tables:
        # Use the actual table name with schema from dump.sql (not module_name)
        if '.' in table_name:
            # Table already has schema from dump.sql - use it as-is
            schema = table_name.split('.')[0].lower()
            schemas_used.add(schema)
            screen_table_names.append(table_name.lower())
        else:
            # No schema prefix - use module_name as fallback
            schema = module_name.lower()
            schemas_used.add(schema)
            screen_table_names.append(f"{schema}.{table_name.lower()}")
    
    # Build SQL content
    sql_lines = []
    sql_lines.append("-- ============================================================================")
    sql_lines.append(f"-- Batch-wise Permissions for {module_name.upper()} Module")
    sql_lines.append("-- ============================================================================")
    sql_lines.append(f"-- This file grants schema and table access permissions to: {app_user}")
    sql_lines.append("-- Generated automatically for this screen's schema batch")
    sql_lines.append("-- Schemas and table names come from dump.sql file")
    sql_lines.append("-- ============================================================================")
    sql_lines.append("")
    
    # Grant USAGE on all schemas used by tables (from dump.sql)
    for schema in sorted(schemas_used):
        sql_lines.append(f"GRANT USAGE ON SCHEMA {schema} TO {app_user};")
    sql_lines.append("")
    
    # Grant permissions on individual tables in the schema
    if screen_table_names:
        sql_lines.append("-- Grant permissions on tables in the current module's schema")
        for table_name in sorted(screen_table_names):
            sql_lines.append(f"GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE {table_name} TO {app_user};")
    sql_lines.append("")
    
    return "\n".join(sql_lines)


def generate_batch_permission_rollback(module_name, screen_tables, screen_constraints, permission_files, app_user, screen_name=None):
    """
    Generate rollback SQL for batch-wise permissions for a specific app_user.
    
    @description Generates REVOKE statements in reverse order of GRANT statements.
    
    @param {string} module_name - Current module name (schema name)
    @param {list} screen_tables - List of (table_name, sql) tuples for tables in this screen
    @param {list} screen_constraints - List of constraint SQL statements for this screen
    @param {list} permission_files - List of existing permission files (not used, kept for compatibility)
    @param {string} app_user - App user name to revoke permissions from
    @param {string} screen_name - Optional screen name (not used, kept for compatibility)
    
    @returns {string} Generated rollback SQL content
    @author Aravind Sekar
    @created 28-12-2024
    """
    # Extract table names from screen_tables - use actual schema from dump.sql
    screen_table_names = []
    schemas_used = set()  # Track all schemas used by tables in this screen
    
    for table_name, _ in screen_tables:
        # Use the actual table name with schema from dump.sql (not module_name)
        if '.' in table_name:
            # Table already has schema from dump.sql - use it as-is
            schema = table_name.split('.')[0].lower()
            schemas_used.add(schema)
            screen_table_names.append(table_name.lower())
        else:
            # No schema prefix - use module_name as fallback
            schema = module_name.lower()
            schemas_used.add(schema)
            screen_table_names.append(f"{schema}.{table_name.lower()}")
    
    # Build rollback SQL (reverse order)
    sql_lines = []
    sql_lines.append("-- ============================================================================")
    sql_lines.append(f"-- Rollback: Batch-wise Permissions for {module_name.upper()} Module")
    sql_lines.append("-- ============================================================================")
    sql_lines.append(f"-- This file revokes permissions granted to: {app_user}")
    sql_lines.append("-- Generated automatically for this screen's schema batch")
    sql_lines.append("-- Schemas and table names come from dump.sql file")
    sql_lines.append("-- ============================================================================")
    sql_lines.append("")
    sql_lines.append("-- Note: REVOKE statements are in REVERSE order of GRANT statements")
    sql_lines.append("-- (Last granted first) to maintain proper rollback order")
    sql_lines.append("")
    
    # Revoke permissions on individual tables in the schema (reverse order)
    if screen_table_names:
        sql_lines.append(f"-- Revoke permissions on tables in schema from {app_user}")
        for table_name in reversed(sorted(screen_table_names)):
            sql_lines.append(f"REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE {table_name} FROM {app_user};")
        sql_lines.append("")
    
    # Revoke schema usage (last, in reverse order of schemas)
    sql_lines.append(f"-- Revoke schema usage from {app_user}")
    for schema in reversed(sorted(schemas_used)):
        sql_lines.append(f"REVOKE USAGE ON SCHEMA {schema} FROM {app_user};")
    sql_lines.append("")
    
    return "\n".join(sql_lines)


def process_module_wise_permissions(module_name, processed_tables, current_batch_counter, app_users):
    """
    Read Module Wise tables.xlsx and grant permissions to 'other' tables.
    
    @description Identifies tables in the Excel for this module that were not created
    in the current run, and generates a separate permission folder for them.
    @param {str} module_name - Name of the current module
    @param {set} processed_tables - Set of normalized table names created in this run
    @param {int} current_batch_counter - Current sequence number
    @param {list} app_users - List of app users for the module
    @returns {int} Updated batch counter
    @author Aravind Sekar
    @created 24-01-2026
    """
    if not os.path.exists(MODULE_WISE_TABLES_FILE):
        print(f"\n    Module Wise tables.xlsx not found at {MODULE_WISE_TABLES_FILE}. Skipping extra permissions.")
        return current_batch_counter

    try:
        df_extra = pd.read_excel(MODULE_WISE_TABLES_FILE)
        # Normalize columns
        df_extra.columns = df_extra.columns.str.strip()
        
        # Determine columns
        table_col = 'tablename' if 'tablename' in df_extra.columns else 'TABLE NAME'
        schema_col = 'Schema Name' if 'Schema Name' in df_extra.columns else 'MODULE'
        
        if table_col not in df_extra.columns or schema_col not in df_extra.columns:
            print(f"       Required columns not found in Module Wise tables.xlsx. Found: {list(df_extra.columns)}")
            return current_batch_counter
            
        # Filter for current module
        module_rows = df_extra[df_extra[schema_col].astype(str).str.lower() == module_name.lower()]
        
        if module_rows.empty:
            print(f"       No extra tables found for module '{module_name}' in Module Wise tables.xlsx")
            return current_batch_counter
            
        extra_tables = module_rows[table_col].dropna().unique().tolist()
        
        # Filter out tables that were already processed in this run
        other_tables = []
        for t in extra_tables:
            norm_t = normalize(t.split('.')[-1] if '.' in t else t)
            if norm_t not in processed_tables:
                # Ensure it has schema prefix if missing
                if '.' not in t:
                    other_tables.append(f"{module_name.lower()}.{t.lower()}")
                else:
                    other_tables.append(t.lower())
        
        if not other_tables:
            print(f"       All extra tables for module '{module_name}' were already processed.")
            return current_batch_counter
            
        print(f"\n  Found {len(other_tables)} 'other' table(s) needing extra permissions for module '{module_name}'")
        
        # Create a new batch number for these permissions
        batch_number = get_next_batch_number()
        
        # Create folder name
        # We'll use a generic "permissions" type for these
        folder_name = f"migrations_{batch_number:05d}_{module_name.lower()}_fk_permissions_batch_001"
        folder_abs = os.path.abspath(os.path.join(OUTPUT_FOLDER, folder_name))
        
        # Create paths
        paths = {
            "scripts": os.path.join(folder_abs, "scripts", "ddl", "permissions"),
            "rollback": os.path.join(folder_abs, "rollback", "ddl", "permissions"),
        }
        for p in paths.values():
            os.makedirs(p, exist_ok=True)
            
        # Generate permissions for each app user
        for idx, app_user in enumerate(app_users, start=1):
            sql_lines = [
                "-- ============================================================================",
                f"-- FK Permissions for {module_name.upper()} Module (Other Tables)",
                "-- ============================================================================",
                f"-- Grants permissions to: {app_user}",
                "-- Generated from Module Wise tables.xlsx",
                "-- ============================================================================",
                "",
                f"GRANT USAGE ON SCHEMA {module_name.lower()} TO {app_user};"
            ]
            
            # Check for other schemas if any tables are cross-schema
            extra_schemas = set()
            for t in other_tables:
                if '.' in t:
                    sch = t.split('.')[0].lower()
                    if sch != module_name.lower():
                        extra_schemas.add(sch)
            
            for sch in sorted(extra_schemas):
                sql_lines.append(f"GRANT USAGE ON SCHEMA {sch} TO {app_user};")
            
            sql_lines.append("")
            sql_lines.append("-- Grant permissions on other tables")
            for t in sorted(other_tables):
                sql_lines.append(f"GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE {t} TO {app_user};")
                
            grant_sql = "\n".join(sql_lines)
            
            # Generate rollback
            rb_lines = [
                "-- ============================================================================",
                f"-- ROLLBACK: FK Permissions for {module_name.upper()} Module",
                "-- ============================================================================",
                ""
            ]
            for t in reversed(sorted(other_tables)):
                rb_lines.append(f"REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE {t} FROM {app_user};")
            
            revoke_sql = "\n".join(rb_lines)
            
            # Write files
            with open(os.path.join(paths["scripts"], f"{idx:03}_grant_permissions.sql"), "w", encoding="utf-8") as f:
                f.write(grant_sql)
            with open(os.path.join(paths["rollback"], f"{idx:03}_rollback_grant_permissions.sql"), "w", encoding="utf-8") as f:
                f.write(revoke_sql)
                
        print(f"     Created FK permissions folder: {folder_name}")
        
        return batch_number
        
    except Exception as e:
        print(f"     ERROR processing extra permissions: {e}")
        import traceback
        traceback.print_exc()
        return current_batch_counter


def main(df=None):
    # Change to output folder where migration folders will be created
    output_path = os.path.abspath(OUTPUT_FOLDER)
    if not os.path.exists(output_path):
        os.makedirs(output_path, exist_ok=True)
    os.chdir(output_path)
    
    # Read Excel mapping if not provided
    if df is None:
        df = read_excel_mapping()
    
    # Track folder names for each table (table_name -> list of folder names)
    # This will be used to update the FOLDER_NAME column in Excel
    # Key: normalized table name (without schema), Value: set of folder names
    table_folder_mapping = defaultdict(set)  # Use set to avoid duplicates
    
    # Get module name from user
    module_name = get_module_name(df)
    
    if not module_name:
        return None
    
    # ================= CHECK DATA FOLDER FIRST =================
    # Check if data folder exists before processing schema
    # Structure: <BASE_FOLDER>/<numeric_prefix_folder>/<module_folder>/
    # Example: ./002_client/001_organization/
    
    # First, try to find numeric prefix folders at root level (like 002_client)
    data_folder_found = find_data_folder(BASE_FOLDER, module_name)
    
    # If not found at root, try the old structure (module_name folder)
    if not data_folder_found:
        data_folder = os.path.join(BASE_FOLDER, module_name)
        data_folder_found = find_data_folder(data_folder, module_name)
    
    if not data_folder_found:
        print(f"\n  ERROR: Data folder not found for module '{module_name}'")
        print(f"   Searched in: {BASE_FOLDER}")
        print(f"   Looking for structure: <numeric_prefix_folder>/<module_folder>/")
        print(f"   Example: 002_client/001_organization/")
        print(f"   Or old structure: {module_name}/")
        print(f"\n    Schema migrations will NOT be created without data folder.")
        print("   Please ensure the data folder exists before running the script.")
        return None
    
    print(f"\n  Data folder found: {os.path.relpath(data_folder_found, BASE_FOLDER)}")
    print("   Proceeding with schema and data migrations...\n")
    
    # Filter by module
    module_df = df[df['MODULE'] == module_name].copy()
    print(f"  Found {len(module_df)} tables for module '{module_name}'")
    
    # Load state to track what tables exist across all modules
    state = load_state()
    # We no longer clear processed_tables - we need to know what exists globally
    # to resolve cross-module constraints and permissions.
    processed_tables_global = set(state.get("processed_tables", []))
    pending_constraints = state.get("pending_constraints", [])
    
    # Track modules that were executed BEFORE this run started (for "future module" permissions).
    # When a module runs, its app_users get permissions on tables from these executed modules (first batch).
    executed_from_state = state.get("executed_modules", [])
    if executed_from_state:
        modules_executed_before_run = set(m.lower() for m in executed_from_state)
    else:
        # Derive from existing schema/data folders so future runs get correct permissions
        modules_executed_before_run = set(m.lower() for m in get_executed_modules_from_folders())
    
    # Read dump file
    with open(DUMP_FILE, "r", encoding="utf-8") as f:
        dump = f.read()

    # Extract all tables and constraints from dump
    creates = extract_create_tables(dump)
    constraints = extract_constraints(dump)
    
    # Build mapping of normalized table names to their SQL, screen info, and table type
    # Note: Schema comes from dump.sql only, TABLE_TYPE comes from CLIENT_DB_DATA_MODEL sheet
    table_sql_map = {}
    table_screen_map = {}
    table_type_map = {}  # Maps normalized table name -> TABLE_TYPE from CLIENT_DB_DATA_MODEL sheet
    matched_count = 0
    unmatched_samples = []
    
    # Build set of all tables that exist in dump.sql (for constraint validation)
    # Constraints should only reference tables that exist in dump.sql
    all_tables_in_dump = set()
    for c in creates:
        t = get_table(c)
        if t:
            all_tables_in_dump.add(normalize(t))
            all_tables_in_dump.add(normalize(t.split('.')[-1]))
    
    for c in creates:
        t = get_table(c)
        if t:
            table_sql_map[t] = c
            # Extract just table name (without schema) for matching
            # t is in format "schema.table" or just "table"
            table_name_only = t.split(".")[-1] if "." in t else t
            t_normalized = normalize(table_name_only)
            
            # Try to match with Excel table names
            # Excel might have full "schema.table" or just "table"
            # Try matching with both full name and table-only name
            matching_rows = module_df[
                (module_df['TABLE_NAME_NORMALIZED'] == normalize(t)) |
                (module_df['TABLE_NAME_ONLY_NORMALIZED'] == t_normalized)
            ]
            
            if not matching_rows.empty:
                screen_name = matching_rows.iloc[0]['SCREEN_NAME']
                # Get SCREEN_ORDER - it's already converted to int in read_excel_mapping
                screen_order = matching_rows.iloc[0]['SCREEN_ORDER'] if 'SCREEN_ORDER' in matching_rows.columns else 9999
                # Ensure it's an integer
                try:
                    screen_order = int(screen_order) if pd.notna(screen_order) else 9999
                except (ValueError, TypeError):
                    screen_order = 9999
                table_screen_map[t] = (screen_name if screen_name else 'default', screen_order)
                
                # Get TABLE_TYPE from CLIENT_DB_DATA_MODEL sheet (schema comes from dump.sql only)
                table_type_raw = matching_rows.iloc[0]['TABLE_TYPE'] if 'TABLE_TYPE' in matching_rows.columns else 'regular'
                excel_table_name = matching_rows.iloc[0]['TABLE_NAME'] if 'TABLE_NAME' in matching_rows.columns else ''
                
                # Debug: Print raw TABLE_TYPE value before processing
                print(f"  DEBUG TABLE_TYPE: Table '{table_name_only}' (Excel: '{excel_table_name}') - Raw TABLE_TYPE='{table_type_raw}' (type: {type(table_type_raw)})")
                
                if pd.notna(table_type_raw):
                    table_type = str(table_type_raw).strip().lower()
                else:
                    table_type = 'regular'
                
                # Debug: Show processed TABLE_TYPE value
                print(f"  DEBUG TABLE_TYPE: Table '{table_name_only}' - Processed TABLE_TYPE='{table_type}' (normalized: '{t_normalized}')")
                
                # Debug: Show what TABLE_TYPE was found (especially for lookup tables)
                if table_type == 'lookup' or 'lookup' in str(table_type).lower():
                    print(f"  DEBUG: Table '{table_name_only}' (Excel: '{excel_table_name}') - TABLE_TYPE='{table_type}' (normalized: '{t_normalized}') - LOOKUP DETECTED!")
                
                # Store table type using normalized table name (without schema) as key
                # Note: Schema for tables comes from dump.sql, TABLE_TYPE comes from CLIENT_DB_DATA_MODEL sheet
                table_type_map[t_normalized] = table_type
                
                # Also store in globals so it's accessible in process_data_migrations and other functions
                globals()['table_type_map'] = table_type_map
                
                matched_count += 1
            else:
                # Collect samples for debugging
                if len(unmatched_samples) < 5:
                    unmatched_samples.append((t, table_name_only))
    
    # Store table_type_map in globals for access in other functions
    globals()['table_type_map'] = table_type_map
    
    # Debug output
    print(f"\n  Matching results:")
    print(f"  - Total tables in dump: {len(table_sql_map)}")
    print(f"  - Matched with Excel: {matched_count}")
    print(f"  - Total TABLE_TYPE entries: {len(table_type_map)}")
    lookup_count = sum(1 for t in table_type_map.values() if t == 'lookup')
    print(f"  - Lookup tables found in TABLE_TYPE: {lookup_count}")
    
    # Debug: Show all unique TABLE_TYPE values found
    unique_table_types = set(table_type_map.values())
    print(f"  - DEBUG: Unique TABLE_TYPE values found: {sorted(unique_table_types)}")
    
    # Debug: Show tables with 'lk' in name and their TABLE_TYPE
    lk_tables = [(k, v) for k, v in table_type_map.items() if 'lk' in k.lower()]
    if lk_tables:
        print(f"  - DEBUG: Tables with 'lk' in name and their TABLE_TYPE:")
        for table_name, table_type in lk_tables[:10]:
            print(f"      '{table_name}' -> TABLE_TYPE='{table_type}'")
        if len(lk_tables) > 10:
            print(f"      ... and {len(lk_tables) - 10} more")
    
    if lookup_count > 0:
        lookup_tables_list = [k for k, v in table_type_map.items() if v == 'lookup']
        print(f"  - Lookup table names: {', '.join(lookup_tables_list[:10])}{'...' if len(lookup_tables_list) > 10 else ''}")
    if unmatched_samples:
        print(f"\n    Sample unmatched tables (first 5):")
        for full_name, table_only in unmatched_samples:
            print(f"    - Dump: {full_name} (table part: {table_only})")
        print(f"    - Excel sample table names:")
        excel_samples = module_df['TABLE_NAME'].head(5).tolist()
        for sample in excel_samples:
            print(f"      - {sample}")
    
    # Group tables by screen and collect screen order information
    screen_tables = defaultdict(list)
    screen_order_map = {}  # Map screen name to its order value
    
    for table_name in table_screen_map.keys():
        screen_info = table_screen_map[table_name]
        if isinstance(screen_info, tuple):
            screen, screen_order = screen_info
        else:
            # Backward compatibility - if not tuple, treat as screen name
            screen = screen_info
            screen_order = 9999
        
        screen_tables[screen].append((table_name, table_sql_map[table_name]))
        # Store the order for this screen (use the first valid order found, or minimum if multiple)
        # For each screen, all tables should have the same SCREEN_ORDER, so we just need one value
        if screen not in screen_order_map:
            screen_order_map[screen] = screen_order
        elif screen_order != 9999 and screen_order < screen_order_map[screen]:
            # Only update if we found a smaller valid order
            screen_order_map[screen] = screen_order
    
    # Detect if this is a framework module (no screens or all screens are empty/default)
    # Framework module: no screens OR all screens are empty/default (not just missing SCREEN_ORDER)
    # If screens have names (even without SCREEN_ORDER), treat as business module
    has_valid_screens = any(
        screen and screen.lower() not in ['', 'default', 'none']
        for screen in screen_tables.keys()
    )
    is_framework_module = not has_valid_screens
    
    if is_framework_module:
        print(f"\n  Framework module detected (no SCREEN_ORDER). Using FK-based ordering for all tables.")
        print(f"   Total tables: {len(table_screen_map)}")
        
        # For framework modules: treat all tables as one group, use FK-based ordering
        all_tables_list = [(t, table_sql_map[t]) for t in table_screen_map.keys()]
        
        # Get all constraints for all tables
        all_table_set = {t for t in table_screen_map.keys()}
        all_constraints = []
        for con in constraints:
            if is_primary_key_constraint(con):
                continue
            con_table = get_constraint_table(con)
            if con_table and con_table in all_table_set:
                all_constraints.append(con)
        
        # Sort all tables by FK dependencies
        sorted_all_tables = topological_sort_tables(all_tables_list, all_constraints)
        
        # Sort constraints
        all_tables_set = {t for t, _ in sorted_all_tables}
        sorted_all_constraints = topological_sort_constraints(all_constraints, all_tables_set)
        
        # Create a single folder for framework module
        screen_folder_name = create_folder_name(
            batch_number=base_batch_number,
            module_name=module_name,
            screen_name="",  # No screen name for framework
            screen_number=1,  # Always 1 for framework
            migration_type="schema",
            migration_number=1
        )
        
        print(f"\n  Processing framework module -> {screen_folder_name}")
        print(f"   - Tables: {len(sorted_all_tables)}")
        print(f"   - Constraints: {len(sorted_all_constraints)}")
        
        # Create folder structure for framework module
        paths = {
            "tables": os.path.join(screen_folder_name, "scripts", "ddl", "tables"),
            "rollback_tables": os.path.join(screen_folder_name, "rollback", "ddl", "tables"),
            "constraints": os.path.join(screen_folder_name, "scripts", "ddl", "constraints"),
            "rollback_constraints": os.path.join(screen_folder_name, "rollback", "ddl", "constraints"),
        }
        
        for p in paths.values():
            os.makedirs(p, exist_ok=True)
        
        # Write CREATE TABLE files
        for i, (table_name, sql) in enumerate(sorted_all_tables, start=1):
            name = table_name.split(".")[-1] if "." in table_name else table_name
            # Track folder name for this table
            table_folder_mapping[normalize(name)].add(screen_folder_name)
            table_file = os.path.join(paths["tables"], f"{i:03}_create_table_{name}.sql")
            rollback_file = os.path.join(paths["rollback_tables"], f"{i:03}_rollback_create_table_{name}.sql")
            
            with open(table_file, "w", encoding="utf-8") as f:
                # Add schema creation statement to the first table file
                if i == 1:
                    schema_name = module_name.lower()
                    f.write(f"-- Create schema\n")
                    f.write(f"CREATE SCHEMA IF NOT EXISTS {schema_name};\n\n")
                f.write(sql)
            
            with open(rollback_file, "w", encoding="utf-8") as f:
                f.write(build_table_rollback(sql))
                # Add schema drop statement to the first table rollback file
                if i == 1:
                    schema_name = module_name.lower()
                    f.write(f"\n-- Drop schema\n")
                    f.write(f"DROP SCHEMA IF EXISTS {schema_name};\n")
        
        # Write ALTER TABLE (constraints) files - single file for all foreign keys
        constraint_file = os.path.join(paths["constraints"], "001_create_foreign_keys.sql")
        rollback_file = os.path.join(paths["rollback_constraints"], "001_rollback_create_foreign_keys.sql")
        
        with open(constraint_file, "w", encoding="utf-8") as f:
            # Write constraints in forward order
            for con in sorted_all_constraints:
                f.write(con + "\n\n")
        
        with open(rollback_file, "w", encoding="utf-8") as f:
            # Write rollback constraints in reverse order
            for con in reversed(sorted_all_constraints):
                rb = build_constraint_rollback(con)
                if rb:
                    f.write(rb)
        
        print(f"     Created: {screen_folder_name}")
        print(f"\n  Created framework module migration folder for '{module_name}'")
        
        # Check if permission files exist for framework module
        all_permission_files = find_permission_files(data_folder_found, module_name) if data_folder_found else []
        has_permission_files = len(all_permission_files) > 0
        
        # Process data and permission migrations for framework module
        process_data_migrations(module_name, module_df, base_batch_number, [], data_folder_found, None, None, has_permission_files, full_df=df)
        if has_permission_files:
            process_permission_migrations(module_name, module_df, base_batch_number, [], data_folder_found, None, None)
        
        return
    
    # Business module: use SCREEN_ORDER for screen ordering
    print(f"\n  Tables grouped into {len(screen_tables)} screen(s):")
    
    # FIRST: Update screen_order_map with values from module_df to ensure accuracy
    # Get SCREEN_ORDER from module_df - use the most common value if multiple exist
    print(f"\n  Screen order mapping (from SCREEN_ORDER column in Excel):")
    for screen in screen_tables.keys():
        screen_rows = module_df[module_df['SCREEN_NAME'] == screen]
        if not screen_rows.empty and 'SCREEN_ORDER' in screen_rows.columns:
            # Get all SCREEN_ORDER values for this screen
            orders = screen_rows['SCREEN_ORDER'].dropna().unique()
            if len(orders) > 0:
                # Use the most common order value (mode), or first if all are same
                # Since all rows for a screen should have same SCREEN_ORDER, use first valid one
                try:
                    order = int(orders[0])
                    if order != 9999 and order >= 1:
                        screen_order_map[screen] = order
                        print(f"   - '{screen}': SCREEN_ORDER = {order}  ")
                    else:
                        print(f"   - '{screen}': SCREEN_ORDER = {order} (invalid, will use sequential)")
                except (ValueError, TypeError) as e:
                    print(f"   - '{screen}': SCREEN_ORDER conversion failed: {e} (will use sequential)")
            else:
                print(f"   - '{screen}': No valid SCREEN_ORDER found in Excel (will use sequential)")
        else:
            print(f"   - '{screen}': No SCREEN_ORDER column or screen not found in Excel (will use sequential)")
    
    # THEN: Sort screens by SCREEN_ORDER (now that screen_order_map is updated)
    # Sort by SCREEN_ORDER first, then alphabetically as tiebreaker
    sorted_screens = sorted(screen_tables.keys(), key=lambda s: (screen_order_map.get(s, 9999), s))
    
    # Display sorted screens
    print(f"\n  Screens sorted by SCREEN_ORDER:")
    for screen in sorted_screens:
        order = screen_order_map.get(screen, 9999)
        print(f"  - {screen} (SCREEN_ORDER: {order if order != 9999 else 'N/A'}): {len(screen_tables[screen])} tables")
    
    if not sorted_screens:
        print("  No mapped tables matched.")
        return
    
    print(f"\n  Creating folders for {len(sorted_screens)} screen(s) based on SCREEN_ORDER from Excel...")
    print(f"   Folders will use SCREEN_ORDER values for screen numbering in folder names")
    
    # ================= PREPARE DATA AND PERMISSION FILES =================
    # Load all data and permission files once before processing screens
    all_data_files = []
    all_permission_files = []
    lookup_files = []
    predefined_files = []
    seed_files = []
    assigned_lookup_files = set()
    assigned_predefined_files = set()
    assigned_seed_files = set()  # Track seed files assigned to Screen 1
    assigned_permission_files = set()
    all_data_files = []
    file_types_main = {}  # Maps (file_path, filename) -> 'lookup', 'predefined', or 'seed'
    
    if data_folder_found and os.path.exists(data_folder_found):
        # Find all data files
        all_data_files = find_data_files(data_folder_found, module_name)
        # Store in globals so lookup table processing can access it
        globals()['all_data_files_for_lookup'] = all_data_files
        if all_data_files:
            print(f"\n  Found {len(all_data_files)} data file(s)")
            # Classify files while preserving original order
            seed_count_main = 0
            lookup_count_main = 0
            predefined_count_main = 0
            
            for file_path, filename in all_data_files:
                if is_lookup_file(file_path, filename):
                    file_types_main[(file_path, filename)] = 'lookup'
                    lookup_files.append((file_path, filename))
                    lookup_count_main += 1
                elif is_predefined_file(file_path, filename):
                    file_types_main[(file_path, filename)] = 'predefined'
                    predefined_files.append((file_path, filename))
                    predefined_count_main += 1
                else:
                    file_types_main[(file_path, filename)] = 'seed'
                    seed_files.append((file_path, filename))
                    seed_count_main += 1
            print(f"     Found {seed_count_main} seed file(s), {lookup_count_main} lookup file(s), and {predefined_count_main} predefined file(s)")
        
        # Find all permission files
        all_permission_files = find_permission_files(data_folder_found, module_name)
        if all_permission_files:
            print(f"\n  Found {len(all_permission_files)} permission file(s)")
    
    # ================= PRE-SCAN DATA FILES FOR LOOKUP TABLE INSERTs =================
    # This must happen BEFORE processing any screens to prevent lookup data from being included in screen batches
    # Lookup tables should ONLY be inserted in their dedicated lookup folders, not in regular screen batches
    # CRITICAL: Initialize exclusion set and mark files already classified as 'lookup' type FIRST
    if 'lookup_files_assigned_to_lookup_folders' not in globals():
        globals()['lookup_files_assigned_to_lookup_folders'] = set()
    
    # STEP 1: Mark files already classified as lookup type (by filename containing 'lookup' or content check)
    # These should be excluded from screen batches immediately
    lookup_files_by_classification = 0
    for file_path, filename in all_data_files:
        file_type = file_types_main.get((file_path, filename), 'seed')
        if file_type == 'lookup':
            normalized_file_path = os.path.abspath(file_path)
            globals()['lookup_files_assigned_to_lookup_folders'].add((normalized_file_path, filename))
            lookup_files_by_classification += 1
            print(f"     Pre-marked lookup file (by filename/content): '{filename}' - will be excluded from screen batches")
    
    if lookup_files_by_classification > 0:
        print(f"  Pre-marked {lookup_files_by_classification} lookup file(s) by classification (filename/content check)")
    
    # STEP 2: Pre-scan ALL data files (including seed files) for lookup table INSERTs based on TABLE_TYPE
    if all_data_files:
        # CRITICAL: Use FULL Excel DataFrame (df) to check TABLE_TYPE for ALL tables across ALL modules
        # Don't use module_df which only contains current module's tables
        # Build a global lookup table map from the FULL Excel file
        global_lookup_table_map = {}
        if df is not None and 'TABLE_TYPE' in df.columns:
            # Use normalized columns if available (created in read_excel_mapping)
            if 'TABLE_NAME_ONLY_NORMALIZED' in df.columns:
                # Use the normalized column for efficient lookup
                lookup_rows = df[df['TABLE_TYPE'].astype(str).str.strip().str.lower() == 'lookup']
                for _, row in lookup_rows.iterrows():
                    table_normalized = row.get('TABLE_NAME_ONLY_NORMALIZED', '')
                    if pd.notna(table_normalized):
                        global_lookup_table_map[table_normalized] = 'lookup'
            else:
                # Fallback: manually normalize if normalized columns don't exist
                for _, row in df.iterrows():
                    table_name = row.get('TABLE_NAME', '')
                    table_type = row.get('TABLE_TYPE', 'regular')
                    if pd.notna(table_name) and pd.notna(table_type):
                        table_name_str = str(table_name).strip()
                        table_type_str = str(table_type).strip().lower()
                        # Extract table name without schema
                        table_name_only = table_name_str.split('.')[-1] if '.' in table_name_str else table_name_str
                        table_normalized = normalize(table_name_only)
                        if table_type_str == 'lookup':
                            global_lookup_table_map[table_normalized] = 'lookup'
        
        # Also check the current module's table_type_map (already built)
        table_type_map_local = globals().get('table_type_map', {})
        # Merge both maps (global takes precedence for completeness)
        combined_lookup_map = {**table_type_map_local, **global_lookup_table_map}
        
        print(f"\n  Pre-scanning {len(all_data_files)} data file(s) for lookup table INSERTs...")
        print(f"     Using lookup table map with {len(combined_lookup_map)} entries ({len(table_type_map_local)} from current module, {len(global_lookup_table_map)} from full Excel)")
        lookup_files_found_count = 0
        if 'lookup_files_assigned_to_lookup_folders' not in globals():
            globals()['lookup_files_assigned_to_lookup_folders'] = set()
        
        for file_path, filename in all_data_files:
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    file_content = f.read()
                
                # Extract table names from INSERT statements
                # Pattern should match: INSERT INTO schema.table or INSERT INTO table (with optional quotes and whitespace)
                insert_pattern = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s*[\(]'
                insert_matches = re.findall(insert_pattern, file_content, re.I | re.MULTILINE)
                
                # Also try a more flexible pattern if first pattern doesn't match
                if not insert_matches:
                    insert_pattern2 = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?'
                    insert_matches = re.findall(insert_pattern2, file_content, re.I | re.MULTILINE)
                
                # Check if ANY INSERT is for a lookup table (using TABLE_TYPE from Excel, NOT TBL_TYPE)
                file_contains_lookup = False
                lookup_tables_found = []
                
                # DEBUG: Check if this is the problematic file
                if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                    print(f"     DEBUG: Pre-scan checking file '{filename}'")
                    print(f"       - Found {len(insert_matches)} INSERT statement(s): {insert_matches}")
                    print(f"       - combined_lookup_map has {len(combined_lookup_map)} entries")
                    print(f"       - table_type_map_local has {len(table_type_map_local)} entries")
                    print(f"       - global_lookup_table_map has {len(global_lookup_table_map)} entries")
                
                for table_name in insert_matches:
                    table_name_lower = table_name.lower().strip('"\'')
                    table_name_only = table_name_lower.split('.')[-1]
                    table_normalized = normalize(table_name_only)
                    
                    # DEBUG: Print table being checked
                    if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                        print(f"       - Checking table: '{table_name}' -> normalized: '{table_normalized}'")
                        print(f"         - table_name_only: '{table_name_only}'")
                        print(f"         - In combined_lookup_map: {table_normalized in combined_lookup_map}")
                        if table_normalized in combined_lookup_map:
                            print(f"         - TABLE_TYPE value: '{combined_lookup_map[table_normalized]}'")
                    
                    # Check if this table is a lookup table (using TABLE_TYPE from CLIENT_DB_DATA_MODEL sheet, NOT TBL_TYPE)
                    # Check both current module's map and global map
                    if table_normalized in combined_lookup_map:
                        t_type = combined_lookup_map[table_normalized]
                        if t_type == 'lookup':
                            file_contains_lookup = True
                            lookup_tables_found.append(table_name_only)
                            if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                                print(f"         - FOUND LOOKUP TABLE: '{table_name_only}' (TABLE_TYPE='{t_type}')")
                    # Also check if table name ends with '_lk' as a fallback (for lookup tables)
                    elif table_name_only.endswith('_lk') or '_lk_' in table_name_only:
                        # Double-check by looking up in full Excel DataFrame
                        if df is not None and 'TABLE_NAME' in df.columns and 'TABLE_TYPE' in df.columns:
                            # Use normalized columns if available
                            if 'TABLE_NAME_ONLY_NORMALIZED' in df.columns:
                                matching_rows = df[df['TABLE_NAME_ONLY_NORMALIZED'] == table_normalized]
                            else:
                                matching_rows = df[
                                    (df['TABLE_NAME_NORMALIZED'] == normalize(table_name)) |
                                    (df['TABLE_NAME'].astype(str).str.lower().str.strip() == table_name.lower().strip())
                                ]
                            if not matching_rows.empty:
                                # CRITICAL: Use TABLE_TYPE column, NOT TBL_TYPE
                                table_type_from_excel = matching_rows.iloc[0].get('TABLE_TYPE', 'regular')
                                if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                                    print(f"         - Found in Excel DataFrame, TABLE_TYPE='{table_type_from_excel}'")
                                if pd.notna(table_type_from_excel) and str(table_type_from_excel).strip().lower() == 'lookup':
                                    file_contains_lookup = True
                                    lookup_tables_found.append(table_name_only)
                                    if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                                        print(f"         - FOUND LOOKUP TABLE: '{table_name_only}' (TABLE_TYPE='lookup' from Excel)")
                        else:
                            # If Excel DataFrame not available, treat '_lk' tables as lookup by default
                            # This is a safety fallback to prevent lookup data from being included in screen batches
                            file_contains_lookup = True
                            lookup_tables_found.append(f"{table_name_only} (detected by '_lk' suffix)")
                            if '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                                print(f"         - FOUND LOOKUP TABLE: '{table_name_only}' (detected by '_lk' suffix, fallback)")
                
                # NOTE: We do NOT mark files here anymore
                # Instead, we rely on checks during screen processing that check against 'lookup_tables_with_dedicated_folders'
                # Only lookup tables WITH dedicated folders should be excluded from screen batches
                # Regular lookup tables (without dedicated folders) should still be included in screen batches
                if file_contains_lookup:
                    lookup_files_found_count += 1
                    print(f"     Pre-scanned: File '{filename}' contains lookup table(s): {', '.join(lookup_tables_found)}")
                    print(f"        NOTE: File will only be excluded if lookup table(s) have dedicated folders (checked during screen processing)")
                elif '010_seed_data.sql' in filename or 'design_transfer' in filename.lower():
                    print(f"     DEBUG: Pre-scan: File '{filename}' does NOT contain lookup tables")
            except Exception as e:
                # If we can't read the file, continue (don't skip)
                print(f"     WARNING: Could not pre-scan file '{filename}': {e}")
                pass
        print(f"  Pre-scan complete: Found {lookup_files_found_count} file(s) containing lookup table INSERTs")
    
    # Use sequential batch numbers to ensure globally unique numbers across all modules
    # Process screens in SCREEN_ORDER order, but assign batch numbers sequentially
    # This ensures unique sequential numbers: 00001, 00002, 00003, ... (no duplicates)
    
    # Initialize lookup table counter for lookup tables across all screens
    if 'lookup_table_counter' not in globals():
        globals()['lookup_table_counter'] = 0
    
    # Track all tables being inserted across all screens for validation
    processed_tables_by_screen = defaultdict(set)
    
    # Show initial batch state before processing any screens
    initial_batch = state.get("last_batch_number", 0)
    next_available_batch = initial_batch + 1
    print(f"\n{'='*70}")
    print(f"  MODULE: {module_name.upper()}")
    print(f"  Initial batch state: {initial_batch} (next available: {next_available_batch:05d})")
    print(f"  Total screens to process: {len(sorted_screens)}")
    print(f"{'='*70}\n")
    
    # CRITICAL: Pre-scan ALL screens to identify lookup tables that will get dedicated folders
    # This must happen BEFORE processing any data batches, so we can exclude files containing these lookup tables
    print(f"\n  Pre-scanning all screens to identify lookup tables with dedicated folders...")
    if 'lookup_tables_with_dedicated_folders' not in globals():
        globals()['lookup_tables_with_dedicated_folders'] = set()
    
    for screen_idx, screen in enumerate(sorted_screens, start=1):
        screen_table_list = screen_tables[screen]
        
        # Identify lookup tables in this screen that will get dedicated folders
        for table, sql in screen_table_list:
            table_name_only = table.split(".")[-1] if "." in table else table
            table_normalized = normalize(table_name_only)
            
            # Check if this is a lookup table (using TABLE_TYPE from Excel)
            is_lookup = False
            if table_normalized in table_type_map:
                t_type = table_type_map[table_normalized]
                is_lookup = (t_type == 'lookup')
            elif 'lookup_type_map_cache' in globals():
                t_type = globals()['lookup_type_map_cache'].get(table_normalized, '')
                is_lookup = (t_type == 'lookup')
            
            # If it's a lookup table, track it as having a dedicated folder
            if is_lookup:
                globals()['lookup_tables_with_dedicated_folders'].add(table_normalized)
                print(f"     Pre-tracked lookup table '{table_name_only}' (normalized: '{table_normalized}') from screen '{screen}' - will have dedicated folder")
    
    print(f"  Pre-scan complete: Found {len(globals()['lookup_tables_with_dedicated_folders'])} lookup table(s) that will have dedicated folders")
    
    # Process each screen separately: schema   data   permission
    for screen_idx, screen in enumerate(sorted_screens, start=1):
        screen_table_list = screen_tables[screen]
        
        # Use SCREEN_ORDER from Excel for folder numbering
        # Priority: 1) screen_order_map (already validated), 2) module_df, 3) sequential
        screen_order_from_excel = screen_order_map.get(screen, 9999)
        
        # If not in screen_order_map, try to get from module_df directly
        if screen_order_from_excel == 9999 or screen_order_from_excel < 1:
            screen_rows = module_df[module_df['SCREEN_NAME'] == screen]
            if not screen_rows.empty and 'SCREEN_ORDER' in screen_rows.columns:
                try:
                    # Get first valid SCREEN_ORDER value
                    orders = screen_rows['SCREEN_ORDER'].dropna().unique()
                    if len(orders) > 0:
                        screen_order_from_excel = int(orders[0])
                except (ValueError, TypeError):
                    screen_order_from_excel = 9999
        
        # Determine screen number for folder name
        if screen_order_from_excel == 9999 or screen_order_from_excel < 1:
            # Fallback to sequential numbering if SCREEN_ORDER is missing/invalid
            screen_number_for_folder = screen_idx
            print(f"       Using sequential number ({screen_idx}) instead of SCREEN_ORDER")
        else:
            # Use SCREEN_ORDER value from Excel (this is the primary method)
            screen_number_for_folder = screen_order_from_excel
        
        # Get constraints for tables in this screen
        screen_table_set = {t for t, _ in screen_table_list}
        screen_constraints = []
        for con in constraints:
            if is_primary_key_constraint(con):
                continue
            con_table = get_constraint_table(con)
            if con_table and con_table in screen_table_set:
                screen_constraints.append(con)
        
        # Store screen_constraints in a module-level dict for later use in permission generation
        if 'screen_constraints_by_screen' not in globals():
            globals()['screen_constraints_by_screen'] = {}
        globals()['screen_constraints_by_screen'][screen] = screen_constraints
        
        # Sort tables within screen by FK dependencies
        sorted_screen_tables = topological_sort_tables(screen_table_list, screen_constraints)
        
        # Identify lookup tables based on TABLE_TYPE column from CLIENT_DB_DATA_MODEL sheet
        lookup_tables_in_screen = []
        regular_tables_in_screen = []
        
        for table, sql in sorted_screen_tables:
            table_name_only = table.split(".")[-1] if "." in table else table
            table_normalized = normalize(table_name_only)
            
            # Use TABLE_TYPE from CLIENT_DB_DATA_MODEL sheet (table_type_map)
            # TABLE_TYPE column should have value 'lookup' for lookup tables
            is_lookup = False
            if table_normalized in table_type_map:
                t_type = table_type_map[table_normalized]
                is_lookup = (t_type == 'lookup')
                if is_lookup:
                    print(f"     DEBUG: Table '{table_name_only}' (normalized: '{table_normalized}') identified as lookup (TABLE_TYPE='{t_type}')")
                else:
                    # Debug: Show why it's not lookup (especially for tables with 'lk' in name)
                    if 'lk' in table_name_only.lower() or 'lookup' in table_name_only.lower():
                        print(f"     DEBUG: Table '{table_name_only}' (normalized: '{table_normalized}') has 'lk' in name but TABLE_TYPE='{t_type}' (not 'lookup')")
            else:
                # Fallback: check TABLE_LIST1 cache if table not found in main sheet
                print(f"     DEBUG: Table '{table_name_only}' (normalized: '{table_normalized}') NOT FOUND in table_type_map")
                if 'lk' in table_name_only.lower() or 'lookup' in table_name_only.lower():
                    print(f"     DEBUG: WARNING: Table '{table_name_only}' has 'lk' in name but not in table_type_map!")
                    print(f"     DEBUG: Available keys in table_type_map (first 20): {list(table_type_map.keys())[:20]}")
                if 'lookup_type_map_cache' in globals():
                    t_type = globals()['lookup_type_map_cache'].get(table_normalized, '')
                    is_lookup = (t_type == 'lookup')
                    if is_lookup:
                        print(f"     DEBUG: Table '{table_name_only}' identified as lookup from TABLE_LIST1 cache")
            
            if is_lookup:
                lookup_tables_in_screen.append((table, sql))
            else:
                regular_tables_in_screen.append((table, sql))
        
        # Log current batch state and lookup table identification
        current_batch = state.get("last_batch_number", 0)
        next_batch = current_batch + 1
        print(f"\n  ===== Screen '{screen}' Processing (Current batch state: {current_batch}, Next will be: {next_batch:05d}) =====")
        
        if lookup_tables_in_screen:
            lookup_names = [t.split(".")[-1] for t, _ in lookup_tables_in_screen]
            print(f"  INFO: Found {len(lookup_tables_in_screen)} lookup table(s) in screen '{screen}': {', '.join(lookup_names[:3])}{'...' if len(lookup_names) > 3 else ''}")
            print(f"   NOTE: These lookup tables will get batch numbers first (before regular schema)")
            if next_batch == 1:
                print(f"   WARNING: First lookup table will consume batch 00001, regular schema will get 00002")
        else:
            print(f"  INFO: No lookup tables found in screen '{screen}'")
            if next_batch == 1:
                print(f"   INFO: Regular schema batch will get batch 00001")
            elif next_batch > 1:
                print(f"   INFO: Regular schema batch will get batch {next_batch:05d} (batch 00001 was used by previous module/lookup)")
        
        # ================= PROCESS LOOKUP TABLES FIRST (if any) =================
        if lookup_tables_in_screen:
            print(f"\n  Processing {len(lookup_tables_in_screen)} lookup table(s) for screen '{screen}'")
            
            # Initialize global tracking for lookup files assigned to lookup folders (to prevent duplication in screen batches)
            if 'lookup_files_assigned_to_lookup_folders' not in globals():
                globals()['lookup_files_assigned_to_lookup_folders'] = set()
            
            # CRITICAL: Track lookup tables that get dedicated lookup folders
            # Only files containing THESE lookup tables should be excluded from screen batches
            # Regular lookup tables (without dedicated folders) should still be included in screen batches
            if 'lookup_tables_with_dedicated_folders' not in globals():
                globals()['lookup_tables_with_dedicated_folders'] = set()
            
            # CRITICAL: Track lookup table -> screen number mapping for constraint folder naming
            if 'lookup_table_screen_numbers' not in globals():
                globals()['lookup_table_screen_numbers'] = {}
            
            for table_idx, (table, sql) in enumerate(lookup_tables_in_screen, start=1):
                table_name_only = table.split(".")[-1] if "." in table else table
                
                # Validate that this is actually a lookup table before consuming batch number
                # Check TABLE_TYPE from main client sheet first, then fallback to TABLE_LIST1 cache
                table_normalized = normalize(table_name_only)
                is_actually_lookup = False
                if table_normalized in table_type_map:
                    t_type = table_type_map[table_normalized]
                    is_actually_lookup = (t_type == 'lookup')
                elif 'lookup_type_map_cache' in globals():
                    # Fallback to TABLE_LIST1 cache if not found in main sheet
                    t_type = globals()['lookup_type_map_cache'].get(table_normalized, '')
                    is_actually_lookup = (t_type == 'lookup')
                
                # Only process if it's confirmed as a lookup table
                if not is_actually_lookup:
                    print(f"     WARNING: Table '{table_name_only}' was identified as lookup but TABLE_TYPE is not 'lookup'. Skipping lookup processing.")
                    # Add to regular tables instead
                    regular_tables_in_screen.append((table, sql))
                    continue
                
                # Get batch number only after validation
                schema_batch_number = get_next_batch_number(state, f"lookup table '{table_name_only}' in screen '{screen}'")
                if schema_batch_number == 1:
                    print(f"   INFO: First lookup table '{table_name_only}' assigned batch 00001")
                
                table_clean = re.sub(r'[^a-z0-9_]', '', table_name_only.lower().replace(" ", "_"))
                
                # UPDATED FORMAT: migrations_{5 DIGIT SEQUENCE}_{LOOKUP}_{4 DIGIT SCREEN_SEQUENCE}_{TABLE_NAME}_{TYPE}_batch_{3 DIGIT BATCH_SEQUENCE}
                screen_str = f"{screen_number_for_folder:04d}"
                table_folder_name = f"migrations_{schema_batch_number:05d}_lookup_{screen_str}_{table_clean}_schema_batch_001"
                
                if len(table_folder_name) > 100:
                    table_clean = abbreviate_folder_table_name(table_clean, max_length=40)
                    table_folder_name = f"migrations_{schema_batch_number:05d}_lookup_{screen_str}_{table_clean}_schema_batch_001"
                
                table_folder_mapping[normalize(table_name_only)].add(table_folder_name)
                print(f"     Creating lookup folder: {table_folder_name}")
                
                # Create folder structure for this lookup table
                current_dir = os.getcwd()
                table_folder_abs = os.path.abspath(os.path.join(current_dir, table_folder_name))
                
                paths = {
                    "tables": os.path.join(table_folder_abs, "scripts", "ddl", "tables"),
                    "cons": os.path.join(table_folder_abs, "scripts", "ddl", "constraints"),
                    "rtables": os.path.join(table_folder_abs, "rollback", "ddl", "tables"),
                    "rcons": os.path.join(table_folder_abs, "rollback", "ddl", "constraints"),
                    "data": os.path.join(table_folder_abs, "scripts", "tenant_specific", "tenant_1", "dml"),
                    "rdata": os.path.join(table_folder_abs, "rollback", "tenant_specific", "tenant_1", "dml"),
                    "permissions": os.path.join(table_folder_abs, "scripts", "ddl", "permissions"),
                    "rpermissions": os.path.join(table_folder_abs, "rollback", "ddl", "permissions"),
                }
                
                # ... (rest of path creation) ...
                for p in paths.values():
                    os.makedirs(p, exist_ok=True)
                
                # Get constraints for this specific table
                table_constraints = []
                for con in screen_constraints:
                    con_table = get_constraint_table(con)
                    if con_table and con_table.lower() == table.lower():
                        # Filter constraints: only include if referenced table exists
                        ref_table = get_referenced_table(con)
                        if ref_table:
                            # Check if referenced table exists in dump.sql (must exist)
                            ref_table_normalized = normalize(ref_table)
                            ref_table_only_normalized = normalize(ref_table.split('.')[-1] if '.' in ref_table else ref_table)
                            ref_exists_in_dump = (
                                ref_table_normalized in all_tables_in_dump or
                                ref_table_only_normalized in all_tables_in_dump
                            )
                            
                            # Check if referenced table exists in processed tables (from any module)
                            ref_exists_globally = (
                                ref_table_normalized in processed_tables_global or
                                ref_table_only_normalized in processed_tables_global
                            )
                            
                            # Include constraint ONLY if:
                            # 1. Referenced table exists in dump.sql (must exist), AND
                            # 2. Referenced table exists in global registry (already created)
                            if ref_exists_in_dump and ref_exists_globally:
                                table_constraints.append(con)
                                print(f"        Including FK constraint: {con_table} -> {ref_table} (referenced table exists)")
                            else:
                                # Add to pending_constraints if referenced table doesn't exist yet
                                pending_constraints.append(con)
                                print(f"        Deferring FK constraint: {con_table} -> {ref_table} (referenced table not yet created)")
                        else:
                            # No referenced table (UNIQUE constraint, CHECK constraint, etc.) - always include
                            table_constraints.append(con)
                
                # Collect constraints for global generation
                add_global_constraints(table_constraints)
                
                # (Write table creation file logic stays similar, but skip writing constraints locally)
                name = table.split(".")[-1] if "." in table else table
                tables_dir_abs = os.path.abspath(paths["tables"])
                rtables_dir_abs = os.path.abspath(paths["rtables"])
                
                os.makedirs(tables_dir_abs, exist_ok=True)
                os.makedirs(rtables_dir_abs, exist_ok=True)
                
                create_filename, rollback_filename = generate_matching_filenames(name, prefix='001')
                table_file_path = os.path.abspath(os.path.join(tables_dir_abs, create_filename))
                rollback_file_path = os.path.abspath(os.path.join(rtables_dir_abs, rollback_filename))
                
                table_file_path_long = get_long_path(table_file_path)
                with open(table_file_path_long, "w", encoding="utf-8") as f:
                    if table_idx == 1 and screen_idx == 1:
                        schema_name = module_name.lower()
                        f.write(f"-- Create schema\n")
                        f.write(f"CREATE SCHEMA IF NOT EXISTS {schema_name};\n\n")
                    f.write(format_create(sql))
                
                rollback_file_path_long = get_long_path(rollback_file_path)
                with open(rollback_file_path_long, "w", encoding="utf-8") as f:
                    f.write(f"DROP TABLE IF EXISTS {table};\n")
                    if table_idx == 1 and screen_idx == 1:
                        schema_name = module_name.lower()
                        f.write(f"\n-- Drop schema\n")
                        f.write(f"DROP SCHEMA IF EXISTS {schema_name};\n")
                
                # Write constraints for lookup tables in their specific lookup folders
                if table_constraints:
                    cons_dir_abs = os.path.abspath(paths["cons"])
                    rcons_dir_abs = os.path.abspath(paths["rcons"])
                    # Use long paths for Windows
                    cons_dir_long = get_long_path(cons_dir_abs)
                    rcons_dir_long = get_long_path(rcons_dir_abs)
                    try:
                        os.makedirs(cons_dir_long, exist_ok=True)
                        os.makedirs(rcons_dir_long, exist_ok=True)
                    except OSError as e:
                        print(f"     ERROR: Could not create constraint directories: {e}")
                        raise
                    
                    constraint_file = os.path.abspath(os.path.join(cons_dir_abs, "001_create_foreign_keys.sql"))
                    constraint_file_long = get_long_path(constraint_file)
                    with open(constraint_file_long, "w", encoding="utf-8") as f:
                        for con in table_constraints:
                            f.write(con + "\n\n")
                    
                    rollback_constraint_file = os.path.abspath(os.path.join(rcons_dir_abs, "001_rollback_create_foreign_keys.sql"))
                    rollback_constraint_file_long = get_long_path(rollback_constraint_file)
                    with open(rollback_constraint_file_long, "w", encoding="utf-8") as f:
                        for con in reversed(table_constraints):
                            rb = build_constraint_rollback(con)
                            if rb:
                                f.write(rb)
                    print(f"     Created local constraints for lookup table '{name}'")
                
                # Optional: Keep global collection commented out for future use if needed
                # add_global_constraints(table_constraints)
                # ... (rest of lookup processing remains mostly same) ...
                
                # Process data files for this lookup table
                # Get all_data_files from globals (set in main function) or use empty list
                # IMPORTANT: Use ALL data files, including lookup files - they need to be processed for lookup folders
                all_data_files = globals().get('all_data_files_for_lookup', [])
                print(f"     DEBUG: Processing data files for lookup table '{table_name_only}' - found {len(all_data_files)} total data file(s) available")
                if all_data_files:
                    table_name_only_for_data = table.split(".")[-1] if "." in table else table
                    table_data_files = []
                    
                    for file_path, filename in all_data_files:
                        try:
                            with open(file_path, 'r', encoding='utf-8') as f:
                                content = f.read()
                            
                            # Check for INSERT statements using robust detection
                            patterns = [
                                r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s*\(',
                                r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s*(?:VALUES|SELECT)',
                                r'INTO\s+["\']?([\w\.]+)["\']?\s*\('
                            ]
                            insert_matches = []
                            for p in patterns:
                                insert_matches.extend(re.findall(p, content, re.I))
                            
                            file_tables = set()
                            for match in insert_matches:
                                match_table = match.lower().strip('"\'')
                                match_table_only = match_table.split(".")[-1]
                                file_tables.add(normalize(match_table))
                                file_tables.add(normalize(match_table_only))
                                if "." in match_table:
                                    file_tables.add(normalize(f"{module_name.lower()}.{match_table_only}"))
                            
                            # Only include data relevant to this specific lookup table
                            target_table_only = table.split(".")[-1] if "." in table else table
                            target_table_normalized = normalize(target_table_only)
                            target_table_variants = {
                                normalize(table),
                                target_table_normalized,
                                normalize(f"{module_name.lower()}.{target_table_only}"),
                                normalize(table.lower()),
                                normalize(target_table_only.lower())
                            }
                            
                            # Also check if table name (without _lk suffix) matches
                            if target_table_normalized.endswith('_lk'):
                                base_name = target_table_normalized[:-3];
                                target_table_variants.add(base_name);
                                target_table_variants.add(normalize(base_name));
                            
                            # Check if any detected table in the file matches our target lookup table
                            has_match = any(t in target_table_variants for t in file_tables)
                            
                            # Additional check: if file_tables is empty but filename suggests it's for this lookup table
                            if not has_match and not file_tables:
                                # Try to match by filename
                                filename_lower = filename.lower();
                                table_name_lower = target_table_only.lower();
                                if table_name_lower in filename_lower or target_table_normalized in filename_lower:
                                    has_match = True;
                            
                            if has_match:
                                # Track original lookup file (to prevent duplication in screen batches)
                                globals()['lookup_files_assigned_to_lookup_folders'].add((file_path, filename))
                                
                                # Check if file contains ONLY this table (and maybe standard vars)
                                if file_tables.issubset(target_table_variants):
                                    # File contains ONLY the target table - include original file
                                    table_data_files.append((file_path, filename))
                                    print(f"        Found data file '{filename}' containing ONLY table '{target_table_only}'")
                                else:
                                    # File contains this table and OTHERS - extract ONLY INSERTs for this specific lookup table
                                    print(f"        Extracting ONLY table '{target_table_only}' data from '{filename}' (file contains multiple tables)")
                                    
                                    try:
                                        # Parse INSERT statements from file and filter to ONLY include this lookup table
                                        # Use multiple patterns to catch different INSERT formats
                                        insert_patterns = [
                                            r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s*[\(]',
                                            r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s+[\(]',
                                            r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?',
                                            r'INTO\s+["\']?([\w\.]+)["\']?\s*[\(]'
                                        ];
                                        insert_matches_full = [];
                                        for pattern in insert_patterns:
                                            matches = list(re.finditer(pattern, content, re.I));
                                            if matches:
                                                insert_matches_full.extend(matches);
                                                break;  # Use first pattern that finds matches
                                        # If no matches found, try a more general pattern
                                        if not insert_matches_full:
                                            general_pattern = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?';
                                            insert_matches_full = list(re.finditer(general_pattern, content, re.I));
                                        
                                        # Extract DO block if present
                                        do_block_match = re.search(r'(DO\s+\$\$.*?DECLARE.*?BEGIN)', content, re.I | re.DOTALL)
                                        has_do_block = bool(do_block_match)
                                        
                                        # Separate INSERTs for this lookup table vs other tables
                                        lookup_inserts = []
                                        other_tables_found = []
                                        
                                        for match in insert_matches_full:
                                            insert_table = match.group(1).lower().strip('"\'')
                                            insert_table_normalized = normalize(insert_table.split('.')[-1])
                                            
                                            # Find the end of this INSERT statement
                                            # Look for the semicolon that ends this INSERT, or the next INSERT statement
                                            start_pos = match.start()
                                            # Search for semicolon after this INSERT
                                            semicolon_match = re.search(r';\s*(?:\n|$)', content[match.end():], re.I | re.MULTILINE);
                                            if semicolon_match:
                                                end_pos = match.end() + semicolon_match.end();
                                            else:
                                                # Fallback: look for next INSERT
                                                end_pos = len(content);
                                                next_insert = re.search(r'INSERT\s+(?:INTO|INTO\s+ONLY)', content[match.end():], re.I);
                                                if next_insert:
                                                    end_pos = match.end() + next_insert.start();
                                            
                                            insert_stmt = content[start_pos:end_pos].rstrip()
                                            
                                            # Remove any trailing END $$; from INSERT statement (will be added once at the end)
                                            insert_stmt = re.sub(r'END\s+\$\$;?\s*$', '', insert_stmt, flags=re.I | re.MULTILINE).rstrip()
                                            
                                            # Ensure INSERT statement ends with semicolon
                                            if insert_stmt and not insert_stmt.rstrip().endswith(';'):
                                                insert_stmt = insert_stmt.rstrip() + ';'
                                            
                                            # Check if this INSERT is for our target lookup table
                                            # Use multiple matching strategies
                                            target_table_normalized_check = normalize(target_table_only);
                                            if (insert_table_normalized == target_table_normalized_check or
                                                insert_table_normalized == normalize(table) or
                                                insert_table_normalized == normalize(f"{module_name.lower()}.{target_table_only}") or
                                                (target_table_normalized_check.endswith('_lk') and 
                                                 insert_table_normalized == target_table_normalized_check[:-3])):
                                                lookup_inserts.append(insert_stmt)
                                            else:
                                                other_tables_found.append(insert_table_normalized)
                                        
                                        # Only create split file if we found INSERTs for this lookup table
                                        if lookup_inserts:
                                            # Create a temporary split file with ONLY this lookup table's INSERTs
                                            temp_dir = tempfile.mkdtemp()
                                            split_filename = f"lookup_only_{filename}"
                                            split_file_path = os.path.join(temp_dir, split_filename)
                                            
                                            with open(split_file_path, 'w', encoding='utf-8') as f_split:
                                                # Include DO block if present
                                                if has_do_block:
                                                    f_split.write(do_block_match.group(1) + '\n\n')
                                                
                                                # Write INSERT statements (they already have semicolons, END $$ removed)
                                                for insert_stmt in lookup_inserts:
                                                    f_split.write(insert_stmt + '\n')
                                                
                                                # Include END $$ ONLY ONCE if DO block was present
                                                if has_do_block:
                                                    f_split.write('\nEND $$;\n')
                                            
                                            # Verify the split file was created and has content
                                            if os.path.exists(split_file_path):
                                                file_size = os.path.getsize(split_file_path);
                                                print(f"        Extracted {len(lookup_inserts)} INSERT statement(s) for lookup table '{target_table_only}' from '{filename}' (split file size: {file_size} bytes)");
                                                table_data_files.append((split_file_path, split_filename));
                                            else:
                                                print(f"        ERROR: Split file was not created at '{split_file_path}'");
                                            
                                            if other_tables_found:
                                                other_tables_list = list(set(other_tables_found))
                                                other_tables_display = other_tables_list[:5]
                                                print(f"        NOTE: File also contains INSERTs for other tables: {', '.join(other_tables_display)}{'...' if len(other_tables_list) > 5 else ''} (these will be handled in their own batches)")
                                        else:
                                            print(f"        WARNING: No INSERT statements found for lookup table '{target_table_only}' in file '{filename}'")
                                    except Exception as e:
                                        print(f"        ERROR processing file '{filename}': {e}")
                                        import traceback
                                        traceback.print_exc()
                                        continue
                        except Exception:
                            continue
                    
                    # If no data files found by matching, try to find lookup files by filename pattern
                    if not table_data_files:
                        # Try to find files that might contain this lookup table data by filename
                        lookup_filename_patterns = [
                            table_name_only_for_data.lower(),
                            table_name_only_for_data.lower().replace('_lk', ''),
                            normalize(table_name_only_for_data).lower()
                        ];
                        for file_path, filename in all_data_files:
                            filename_lower = filename.lower();
                            # Check if filename contains any of our patterns
                            if any(pattern in filename_lower for pattern in lookup_filename_patterns if pattern):
                                # Double-check: read file and verify it contains this table
                                try:
                                    with open(file_path, 'r', encoding='utf-8') as f:
                                        content_check = f.read();
                                    # Check if file contains INSERT for this table
                                    target_table_variants_check = {
                                        normalize(table),
                                        normalize(table_name_only_for_data),
                                        normalize(f"{module_name.lower()}.{table_name_only_for_data}")
                                    };
                                    insert_pattern_check = r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?';
                                    insert_matches_check = re.findall(insert_pattern_check, content_check, re.I);
                                    for match_table in insert_matches_check:
                                        match_normalized = normalize(match_table.lower().strip('"\'').split('.')[-1]);
                                        if match_normalized in target_table_variants_check:
                                            table_data_files.append((file_path, filename));
                                            globals()['lookup_files_assigned_to_lookup_folders'].add((file_path, filename));
                                            print(f"        Found data file '{filename}' for lookup table '{table_name_only_for_data}' by filename pattern");
                                            break;
                                except Exception:
                                    continue;
                    
                    if table_data_files:
                        if not os.path.exists(paths["data"]):
                            os.makedirs(paths["data"], exist_ok=True)
                        if not os.path.exists(paths["rdata"]):
                            os.makedirs(paths["rdata"], exist_ok=True)
                        
                        data_paths = {
                            "data": paths["data"],
                            "rdata": paths["rdata"],
                        }
                        
                        print(f"     Processing {len(table_data_files)} data file(s) for lookup table '{table_name_only_for_data}'")
                        print(f"     Seed data will be created in: {paths['data']}")
                        # Debug: List the files being processed
                        for idx, (fp, fn) in enumerate(table_data_files, 1):
                            file_exists = os.path.exists(fp) if fp else False;
                            print(f"        File {idx}: '{fn}' (path exists: {file_exists})");
                        # CRITICAL: Pass is_lookup_folder=True so lookup data files are NOT skipped
                        _process_data_files_for_screen(table_data_files, data_paths, is_lookup_folder=True)
                        # Verify files were created
                        if os.path.exists(paths["data"]):
                            created_files = [f for f in os.listdir(paths["data"]) if f.endswith('_seed_data.sql')];
                            print(f"     DEBUG: Created {len(created_files)} seed data file(s) in lookup folder: {', '.join(created_files)}");
                        else:
                            print(f"     ERROR: Data folder was not created at {paths['data']}");
                        generate_data_release_notes(table_data_files, table_folder_name)
                        # Note: Original lookup files are already tracked when they match the lookup table (above)
                        # Split files are temporary and don't need to be tracked separately
                        
                        # Track lookup files assigned to this lookup folder (to prevent duplication in screen batches)
                        for file_path, filename in table_data_files:
                            globals()['lookup_files_assigned_to_lookup_folders'].add((file_path, filename))
                            # Also track original files if this was a split file
                            if filename.startswith('split_'):
                                # Try to find original file
                                original_filename = filename.replace('split_', '')
                                for orig_file_path, orig_filename in all_data_files:
                                    if orig_filename == original_filename:
                                        globals()['lookup_files_assigned_to_lookup_folders'].add((orig_file_path, orig_filename))
                                        break
                    else:
                        # No data files found - skip creating seed data files (only create when there's actual data)
                        print(f"     WARNING: No data files found for lookup table '{table_name_only_for_data}' - skipping seed data file creation");
                        print(f"        DEBUG: Checked {len(all_data_files)} total data file(s) but none matched this lookup table");
                else:
                    # No all_data_files available at all
                    print(f"     WARNING: No data files available for lookup table '{table_name_only}' - all_data_files is empty");
                
                # Process permissions for this lookup table
                # Get app_users for this module
                app_users = get_module_app_users(module_name, screen)
                
                # Separate magic users from regular users for this lookup table
                magic_users_lookup = []
                regular_users_lookup = []
                for app_user in app_users:
                    if app_user in ['magic_read_app_user', 'magic_save_app_user']:
                        magic_users_lookup.append(app_user)
                    else:
                        regular_users_lookup.append(app_user)
                
                # Process regular users - stay in lookup folder
                permission_counter = 1
                if regular_users_lookup:
                    for app_user in regular_users_lookup:
                        table_list = [(table, sql)]
                        permission_sql = generate_batch_permission_sql(module_name, table_list, table_constraints, [], app_user, screen)
                        permission_rollback_sql = generate_batch_permission_rollback(module_name, table_list, table_constraints, [], app_user, screen)
                        
                        perm_file = os.path.join(paths["permissions"], f"{permission_counter:03}_grant_permissions.sql")
                        rperm_file = os.path.join(paths["rpermissions"], f"{permission_counter:03}_rollback_grant_permissions.sql")
                        
                        with open(perm_file, "w", encoding="utf-8") as f:
                            f.write(permission_sql if permission_sql else "-- No permissions to grant\n")
                        with open(rperm_file, "w", encoding="utf-8") as f:
                            f.write(permission_rollback_sql if permission_rollback_sql else "-- No permissions to revoke\n")
                        
                        permission_counter += 1
                        print(f"     Generated permission files for {app_user} in lookup folder")
                
                # Magic users (magic_read, magic_save, auth) for lookup tables are created by
                # process_global_users_permissions (called below); skip separate folders here to avoid duplication.
                
                # If no app users at all, create empty ones in lookup folder
                if not app_users:
                    perm_file = os.path.join(paths["permissions"], f"{permission_counter:03}_grant_permissions.sql")
                    rperm_file = os.path.join(paths["rpermissions"], f"{permission_counter:03}_rollback_grant_permissions.sql")
                    with open(perm_file, "w", encoding="utf-8") as f:
                        f.write(f"-- No app users defined for module '{module_name}'\n-- No permissions to grant\n")
                    with open(rperm_file, "w", encoding="utf-8") as f:
                        f.write(f"-- No app users defined for module '{module_name}'\n-- No permissions to revoke\n")
                    print(f"       No app users found - generated empty permission files")
                
                generate_release_notes([(table, sql)], table_constraints, table_folder_name)
                print(f"     Created lookup table: {table_folder_name}")
                
                # ================= GLOBAL USERS PERMISSIONS (AFTER LOOKUP TABLE FOLDER) =================
                # Check global users permissions for EVERY lookup table batch (all modules)
                process_global_users_permissions(
                    module_name,
                    state,
                    [table],
                    screen_number=screen_number_for_folder,
                    screen_order_map=screen_order_map,
                    full_df=df,
                    schema_batch_number=schema_batch_number,
                    modules_executed_before_run=modules_executed_before_run,
                    screen_name=screen
                )
                
                # If target module (e.g. DND) was already executed: create its app_user permission folder
                # after this lookup table schema folder (do not pass schema_batch_number so it gets next number).
                process_external_permissions_to_current_tables(
                    module_name,
                    state,
                    [table],
                    screen_number=screen_number_for_folder,
                    screen_order_map=screen_order_map,
                    full_df=df,
                    schema_batch_number=None
                )
                
                # CRITICAL: Track this lookup table as having a dedicated folder
                # Only files containing lookup tables WITH dedicated folders should be excluded from screen batches
                # Regular lookup tables (without dedicated folders) should still be included in screen batches
                table_normalized_for_tracking = normalize(table_name_only)
                if 'lookup_tables_with_dedicated_folders' not in globals():
                    globals()['lookup_tables_with_dedicated_folders'] = set()
                globals()['lookup_tables_with_dedicated_folders'].add(table_normalized_for_tracking)
                
                # CRITICAL: Track screen number for this lookup table (for constraint folder naming)
                if 'lookup_table_screen_numbers' not in globals():
                    globals()['lookup_table_screen_numbers'] = {}
                globals()['lookup_table_screen_numbers'][table_normalized_for_tracking] = screen_number_for_folder
                print(f"     DEBUG: Tracked lookup table '{table_name_only}' (normalized: '{table_normalized_for_tracking}') as having dedicated folder")
                print(f"       - Screen number: {screen_number_for_folder}")
                
                # CRITICAL: Add lookup table to global registry IMMEDIATELY after creation
                # This ensures constraints referencing this lookup table can be included in subsequent batches
                table_normalized_full = normalize(table)
                table_normalized_only = normalize(table.split('.')[-1])
                processed_tables_global.add(table_normalized_full)
                processed_tables_global.add(table_normalized_only)
                print(f"     DEBUG: Added lookup table '{table}' to processed_tables_global")
                print(f"       - Full normalized: '{table_normalized_full}'")
                print(f"       - Table-only normalized: '{table_normalized_only}'")
            
            # CRITICAL: After all lookup tables in this screen are created, resolve pending constraints
            # that reference these lookup tables (from other modules)
            if lookup_tables_in_screen:
                pending_constraints, constraints_resolved = resolve_pending_constraints(
                    module_name, state, pending_constraints, screen_number=screen_idx
                )
                if constraints_resolved:
                    print(f"     Resolved pending constraints after creating lookup tables in screen '{screen}'")
                # Update state after resolving constraints
                state["pending_constraints"] = pending_constraints
                save_state(state)
        
        # Prepare for regular table processing
        # Prepare for regular table processing
        sorted_screen_tables = regular_tables_in_screen
        
        # Log if no lookup tables found
        if not lookup_tables_in_screen and regular_tables_in_screen:
            print(f"\n  INFO: No lookup tables found in screen '{screen}' - regular schema will get batch 00001")
        
        if sorted_screen_tables:
            # Sort constraints for this screen
            screen_tables_set = {t.lower() for t, _ in regular_tables_in_screen}
            filtered_screen_constraints = []
            for con in screen_constraints:
                con_table = get_constraint_table(con)
                if con_table and con_table.lower() in screen_tables_set:
                    filtered_screen_constraints.append(con)
            
            sorted_screen_constraints = topological_sort_constraints(filtered_screen_constraints, screen_tables_set)
            
            # ================= SCHEMA BATCH (FIRST) =================
            schema_batch_number = get_next_batch_number(state, f"regular schema batch for screen '{screen}'")
            
            print(f"\n  Processing regular tables for screen '{screen}' (position: {screen_idx}/{len(sorted_screens)})")
            print(f"   - Schema batch number: {schema_batch_number:05d}")
            if schema_batch_number == 1:
                print(f"   INFO: Regular schema batch assigned batch 00001 (no lookup tables in this screen)")
            elif schema_batch_number == 2 and screen_idx == 1:
                print(f"   INFO: Regular schema batch assigned batch 00002 (lookup table(s) got batch 00001)")
            
            screen_folder_name = create_folder_name(
                batch_number=schema_batch_number,
                module_name=module_name,
                screen_name=screen,
                screen_number=screen_number_for_folder,
                migration_type="schema",
                migration_number=1
            )
        screen_permission_files = []
        if all_permission_files and screen_tables and screen in screen_tables:
            screen_table_list_for_permission = screen_tables[screen]
            screen_tables_set_for_permission = set()
            for table_name, _ in screen_table_list_for_permission:
                screen_tables_set_for_permission.add(normalize(table_name))
                table_name_only = table_name.split(".")[-1] if "." in table_name else table_name
                screen_tables_set_for_permission.add(normalize(table_name_only))
                if "." in table_name:
                    schema_name = table_name.split(".")[0]
                    screen_tables_set_for_permission.add(normalize(f"{schema_name}.{table_name_only}"))
            
            available_permission = [(f, n) for f, n in all_permission_files if (f, n) not in assigned_permission_files]
            include_schema_grants = (screen_idx == 1)  # Only Screen 1 gets schema-wide grants
            
            if available_permission:
                screen_permission_files = filter_permission_files_by_screen(available_permission, screen_tables_set_for_permission, module_df, include_schema_grants=include_schema_grants)
                for file_tuple in screen_permission_files:
                    assigned_permission_files.add(file_tuple)
        
        # Check if this is a lookup module
        is_lookup_module = module_name.lower() == 'lookup'
        
        # Identify which tables in this screen are regular vs lookup STRICTLY based on TABLE_LIST1
        regular_tables_in_screen = []
        lookup_tables_in_screen = []
        
        for table, sql in sorted_screen_tables:
            table_only = table.split('.')[-1]
            
            # Use the cache from TABLE_LIST1 sheet
            is_table_lookup = is_lookup_module
            if not is_table_lookup and 'lookup_type_map_cache' in globals():
                t_type = globals()['lookup_type_map_cache'].get(normalize(table_only), '')
                is_table_lookup = (t_type == 'lookup')
            
            if is_table_lookup:
                lookup_tables_in_screen.append((table, sql))
            else:
                regular_tables_in_screen.append((table, sql))
        
        if lookup_tables_in_screen:
            # Process lookup tables (one folder per table)
            # Combine the lists if it's the lookup module (everything is a lookup)
            # or just process the identified lookup tables
            tables_to_process_as_lookups = sorted_screen_tables if is_lookup_module else lookup_tables_in_screen
            
            if 'lookup_table_counter' not in globals():
                globals()['lookup_table_counter'] = 0
            
            print(f"\n  Processing {len(tables_to_process_as_lookups)} LOOKUP table(s) in separate folders")
            
            # Process each table separately
            for table_idx, (table, sql) in enumerate(tables_to_process_as_lookups, start=1):
                # Increment lookup table counter for unique screen number per table
                globals()['lookup_table_counter'] += 1
                lookup_table_screen_number = globals()['lookup_table_counter']
                # Extract table name (without schema prefix)
                table_name_only = table.split(".")[-1] if "." in table else table
                
                # Assign sequential batch number for this table's schema folder
                schema_batch_number = get_next_batch_number(state, f"lookup table '{table_name_only}' schema (alternate path)")
                
                # Re-assign batch_str after any potential logic additions
                batch_str = f"{schema_batch_number:05d}"
                screen_str = f"{lookup_table_screen_number:04d}"
                table_clean = re.sub(r'[^a-z0-9_]', '', table_name_only.lower().replace(" ", "_"))
                migration_str = "001"
                
                # Truncate table name in folder if it's too long to avoid Windows path length issues
                # Windows MAX_PATH is 260, so we need to leave room for base path + subdirectories + filename
                # Abbreviate table name in folder to avoid Git path length issues
                # Fixed folder structure: migrations_ (11) + batch (5) + _lookup_ (7) + screen (4) + _ (1) + _schema_batch_ (14) + migration (3) = ~45 chars
                # Git/GitHub path limit: need to leave room for /rollback/ddl/tables/ (22) + filename (~80) = ~102 chars
                # So folder name should be max 80-90 chars to stay safe
                max_folder_name_length = 85  # Conservative limit for Git compatibility
                
                # Build initial folder name to check total length
                table_folder_name = f"migrations_{batch_str}_lookup_{screen_str}_{table_clean}_schema_batch_{migration_str}"
                
                # Always abbreviate if folder name exceeds limit
                if len(table_folder_name) > max_folder_name_length:
                    table_clean_original = table_clean
                    # Calculate how much we need to reduce
                    excess = len(table_folder_name) - max_folder_name_length
                    # Calculate available space for table name
                    fixed_structure = len(f"migrations_{batch_str}_lookup_{screen_str}__schema_batch_{migration_str}")
                    max_table_name_length = max_folder_name_length - fixed_structure
                    new_max = max(15, max_table_name_length)  # Ensure at least 15 chars for table name
                    
                    table_clean = abbreviate_folder_table_name(table_clean, max_length=new_max)
                    table_folder_name = f"migrations_{batch_str}_lookup_{screen_str}_{table_clean}_schema_batch_{migration_str}"
                    
                    # If still too long after abbreviation, use hash fallback
                    if len(table_folder_name) > max_folder_name_length:
                        import hashlib
                        digest = hashlib.sha1(table_clean_original.encode()).hexdigest()[:8]
                        # Keep first part of table name and hash
                        first_part = table_clean_original.split('_')[0] if '_' in table_clean_original else table_clean_original[:10]
                        table_clean = f"{first_part}_x{digest}"
                        table_folder_name = f"migrations_{batch_str}_lookup_{screen_str}_{table_clean}_schema_batch_{migration_str}"
                        print(f"       Table name in folder heavily abbreviated using hash ({len(table_clean_original)}   {len(table_clean)} chars): {table_clean}")
                    else:
                        print(f"       Table name in folder abbreviated ({len(table_clean_original)}   {len(table_clean)} chars): {table_clean}")
                
                # Final verification - try one more aggressive abbreviation if still too long
                if len(table_folder_name) > max_folder_name_length:
                    # Try even more aggressive abbreviation before hash
                    fixed_structure = len(f"migrations_{batch_str}_lookup_{screen_str}__schema_batch_{migration_str}")
                    max_table_name_length = max_folder_name_length - fixed_structure
                    # Try with even smaller limit
                    table_clean = abbreviate_folder_table_name(table_clean, max_length=max(30, max_table_name_length))
                    table_folder_name = f"migrations_{batch_str}_lookup_{screen_str}_{table_clean}_schema_batch_{migration_str}"
                    
                    # Only use hash as absolute last resort
                    if len(table_folder_name) > max_folder_name_length:
                        import hashlib
                        table_clean_original_full = table.split('.')[-1] if '.' in table else table
                        table_clean_original_full = re.sub(r'[^a-z0-9_]', '', table_clean_original_full.lower().replace(" ", "_"))
                        digest = hashlib.sha1(table_clean_original_full.encode()).hexdigest()[:8]
                        first_part = table_clean_original_full.split('_')[0] if '_' in table_clean_original_full else table_clean_original_full[:8]
                        table_clean = f"{first_part}_x{digest}"
                        table_folder_name = f"migrations_{batch_str}_lookup_{screen_str}_{table_clean}_schema_batch_{migration_str}"
                        print(f"       WARNING: Folder name forced to hash format (last resort): {table_folder_name} ({len(table_folder_name)} chars)")
                    else:
                        print(f"       Folder name further abbreviated: {table_folder_name} ({len(table_folder_name)} chars)")
                
                # Track folder name for this table
                table_name_only = table.split(".")[-1] if "." in table else table
                table_folder_mapping[normalize(table_name_only)].add(table_folder_name)
                
                # Check for potential Windows path length issues
                current_dir = os.getcwd()
                full_path = os.path.abspath(os.path.join(current_dir, table_folder_name))
                # Estimate full file path length (folder + rollback/ddl/tables/ + filename)
                # Generate matching filenames with abbreviation
                _, rollback_filename_est = generate_matching_filenames(table_name_only, prefix='001')
                estimated_file_path = os.path.join(full_path, "rollback", "ddl", "tables", rollback_filename_est)
                estimated_length = len(estimated_file_path)
                
                if estimated_length > 260:
                    print(f"       WARNING: Estimated path length ({estimated_length} chars) exceeds Windows MAX_PATH (260)")
                    print(f"       Full path: {estimated_file_path[:100]}...")
                    print(f"       Consider enabling Windows long path support or using shorter paths")
                
                print(f"     Creating folder for table '{table_name_only}': {table_folder_name}")
                
                # Create folder structure for this table (no permissions for lookup modules)
                # Include DML folder inside same schema batch folder for lookup modules
                # Use absolute paths to avoid any path resolution issues
                # Get current working directory (should be OUTPUT_FOLDER)
                current_dir = os.getcwd()
                table_folder_abs = os.path.abspath(os.path.join(current_dir, table_folder_name))
                
                # Debug: Print paths to help diagnose issues
                if len(table_folder_abs) > 200:
                    print(f"       Long path detected: {len(table_folder_abs)} characters")
                
                paths = {
                    "tables": os.path.join(table_folder_abs, "scripts", "ddl", "tables"),
                    "cons": os.path.join(table_folder_abs, "scripts", "ddl", "constraints"),
                    "rtables": os.path.join(table_folder_abs, "rollback", "ddl", "tables"),
                    "rcons": os.path.join(table_folder_abs, "rollback", "ddl", "constraints"),
                    "data": os.path.join(table_folder_abs, "scripts", "tenant_specific", "tenant_1", "dml"),
                    "rdata": os.path.join(table_folder_abs, "rollback", "tenant_specific", "tenant_1", "dml"),
                }
                
                # Ensure all directories are created before writing files
                # Create directories explicitly using absolute paths
                for p in paths.values():
                    try:
                        # Create directory and all parent directories
                        os.makedirs(p, exist_ok=True)
                        # Verify directory was actually created
                        if not os.path.exists(p):
                            # Try again without exist_ok
                            os.makedirs(p, exist_ok=False)
                        # Final verification
                        if not os.path.isdir(p):
                            raise OSError(f"Directory verification failed: {p}")
                    except OSError as e:
                        print(f"       Error: Could not create directory")
                        print(f"       Path: {p}")
                        print(f"       Path length: {len(p)} characters")
                        print(f"       Error details: {e}")
                        raise
                
                # Get constraints for this specific table
                # Separation: Only write FKs that point to tables WITHIN this module
                # We take schema reference from SQL dump only (not Excel)
                internal_constraints = []
                for con in sorted_screen_constraints:
                    con_table = get_constraint_table(con)
                    if con_table and con_table.lower() == table.lower():
                        target_table = get_referenced_table(con)
                        if target_table:
                            if '.' in target_table:
                                target_schema = target_table.split('.')[0].lower()
                                if target_schema == module_name.lower():
                                    internal_constraints.append(con)
                                else:
                                    # Cross-module constraint (based on SQL schema prefix)
                                    if con not in pending_constraints:
                                        pending_constraints.append(con)
                            else:
                                # No schema prefix means it belongs to current module
                                internal_constraints.append(con)
                        else:
                            internal_constraints.append(con)
                
                # ================= TABLE SCRIPT =================
                # Extract only table name (without schema prefix)
                name = table.split(".")[-1] if "." in table else table
                
                # Ensure directories exist right before writing (double-check)
                tables_dir = paths["tables"]
                rtables_dir = paths["rtables"]
                
                # Verify and create directories if needed
                if not os.path.exists(tables_dir) or not os.path.isdir(tables_dir):
                    try:
                        os.makedirs(tables_dir, exist_ok=True)
                        if not os.path.isdir(tables_dir):
                            raise OSError(f"Failed to create tables directory: {tables_dir}")
                    except OSError as e:
                        print(f"       Error creating tables directory: {e}")
                        raise
                        
                if not os.path.exists(rtables_dir) or not os.path.isdir(rtables_dir):
                    try:
                        os.makedirs(rtables_dir, exist_ok=True)
                        if not os.path.isdir(rtables_dir):
                            raise OSError(f"Failed to create rollback tables directory: {rtables_dir}")
                    except OSError as e:
                        print(f"       Error creating rollback tables directory: {e}")
                        print(f"       Path length: {len(rtables_dir)} characters")
                        raise
                
                # Use absolute paths consistently
                tables_dir_abs = os.path.abspath(tables_dir)
                rtables_dir_abs = os.path.abspath(rtables_dir)
                
                # Ensure directories exist using absolute paths
                if not os.path.exists(tables_dir_abs) or not os.path.isdir(tables_dir_abs):
                    os.makedirs(tables_dir_abs, exist_ok=True)
                if not os.path.exists(rtables_dir_abs) or not os.path.isdir(rtables_dir_abs):
                    os.makedirs(rtables_dir_abs, exist_ok=True)
                
                # Generate matching filenames with smart abbreviation for Git/GitHub compatibility
                # This ensures both create and rollback files have matching names for Liquibase
                create_filename, rollback_filename = generate_matching_filenames(name, prefix='001')
                table_file_path = os.path.join(tables_dir_abs, create_filename)
                rollback_file_path = os.path.join(rtables_dir_abs, rollback_filename)
                
                # Log if filename was abbreviated
                if create_filename != f'001_create_table_{name}.sql':
                    print(f"       Filename abbreviated for Git compatibility: {create_filename}")
                
                # Final check - if path still too long, we have a problem
                if len(rollback_file_path) > 260:
                    print(f"     ERROR: Path still exceeds 260 characters after truncation!")
                    print(f"   Path length: {len(rollback_file_path)}")
                    print(f"   Path: {rollback_file_path[:150]}...")
                    raise OSError(f"Path length ({len(rollback_file_path)}) exceeds Windows MAX_PATH (260). Please enable long path support or use shorter base path.")
                
                with open(
                    table_file_path,
                    "w",
                    encoding="utf-8",
                ) as f:
                    # Add schema creation statement to the first table file of the first screen
                    if table_idx == 1 and screen_idx == 1:
                        schema_name = module_name.lower()
                        f.write(f"-- Create schema\n")
                        f.write(f"CREATE SCHEMA IF NOT EXISTS {schema_name};\n\n")
                    f.write(format_create(sql))
                
                # Ensure parent directory exists for rollback file RIGHT BEFORE writing
                # This is critical - Python's open() requires the parent directory to exist
                rollback_parent_dir = os.path.dirname(rollback_file_path)
                
                # Check for Windows path length limit
                if len(rollback_parent_dir) > 260:
                    print(f"       WARNING: Path length ({len(rollback_parent_dir)}) exceeds Windows MAX_PATH limit (260)")
                    print(f"   Path: {rollback_parent_dir[:100]}...")
                    print(f"   This may cause directory creation to fail on Windows")
                
                # Create directory with error handling - try multiple times if needed
                max_retries = 3
                for attempt in range(max_retries):
                    try:
                        # Always try to create, even if it might exist (handles edge cases)
                        os.makedirs(rollback_parent_dir, exist_ok=True)
                        
                        # Verify it was actually created
                        if os.path.isdir(rollback_parent_dir):
                            break  # Success!
                        else:
                            # If verification fails, try creating again without exist_ok
                            if attempt < max_retries - 1:
                                os.makedirs(rollback_parent_dir, exist_ok=False)
                            else:
                                raise OSError(f"Directory verification failed after {max_retries} attempts")
                    except OSError as e:
                        if attempt == max_retries - 1:
                            # Final attempt failed - provide detailed error info
                            print(f"     CRITICAL ERROR: Cannot create rollback directory")
                            print(f"   Path: {rollback_parent_dir}")
                            print(f"   Path length: {len(rollback_parent_dir)} characters")
                            print(f"   Windows MAX_PATH limit: 260 characters")
                            if len(rollback_parent_dir) > 260:
                                print(f"       Path exceeds Windows MAX_PATH limit!")
                                print(f"   Solution: Enable long path support in Windows or use shorter folder names")
                            print(f"   Error: {e}")
                            raise OSError(f"Failed to create directory after {max_retries} attempts: {rollback_parent_dir}") from e
                        # Wait a tiny bit before retry (helps with race conditions)
                        import time
                        time.sleep(0.01)
                
                # Final check - if directory still doesn't exist, we can't proceed
                if not os.path.isdir(rollback_parent_dir):
                    raise OSError(f"Directory verification failed: {rollback_parent_dir}")
                
                # Now write the file - parent directory is guaranteed to exist
                # One final check before opening the file
                if not os.path.isdir(rollback_parent_dir):
                    # Last resort: try creating one more time
                    os.makedirs(rollback_parent_dir, exist_ok=True)
                    if not os.path.isdir(rollback_parent_dir):
                        raise OSError(f"Directory still does not exist: {rollback_parent_dir}")
                
                try:
                    with open(
                        rollback_file_path,
                        "w",
                        encoding="utf-8",
                    ) as f:
                        f.write(f"DROP TABLE IF EXISTS {table};\n")
                        # Add schema drop statement to the first table rollback file of the first screen
                        if table_idx == 1 and screen_idx == 1:
                            schema_name = module_name.lower()
                            f.write(f"\n-- Drop schema (only if empty)\n")
                            f.write(f"DROP SCHEMA IF EXISTS {schema_name};\n")
                except FileNotFoundError as e:
                    # If file creation fails, it's likely a directory issue
                    print(f"     File creation failed - directory may not exist")
                    print(f"   Directory: {rollback_parent_dir}")
                    print(f"   Directory exists: {os.path.exists(rollback_parent_dir)}")
                    print(f"   Directory is dir: {os.path.isdir(rollback_parent_dir) if os.path.exists(rollback_parent_dir) else 'N/A'}")
                    print(f"   File path: {rollback_file_path}")
                    print(f"   File path length: {len(rollback_file_path)} characters")
                    raise
                
                # ================= CONSTRAINT SCRIPTS =================
                # Ensure constraint directories exist before writing
                if internal_constraints:
                    if not os.path.exists(paths["cons"]):
                        os.makedirs(paths["cons"], exist_ok=True)
                    if not os.path.exists(paths["rcons"]):
                        os.makedirs(paths["rcons"], exist_ok=True)
                    constraint_file = os.path.join(paths["cons"], "001_create_foreign_keys.sql")
                    with open(constraint_file, "w", encoding="utf-8") as f:
                        for con in internal_constraints:
                            f.write(con + "\n\n")
                    
                    rollback_constraint_file = os.path.join(paths["rcons"], "001_rollback_create_foreign_keys.sql")
                    with open(rollback_constraint_file, "w", encoding="utf-8") as f:
                        for con in reversed(internal_constraints):
                            rb = build_constraint_rollback(con)
                            if rb:
                                f.write(rb)
                
                # No permissions for lookup modules
                # Generate release notes for this table
                generate_release_notes([(table, sql)], internal_constraints, table_folder_name)
                
                # ================= PROCESS DATA MIGRATION FOR THIS TABLE =================
                # Process data files directly into DML folder within same schema batch folder for lookup modules
                if all_data_files:
                    # Find data files for this specific table
                    table_name_only_for_data = table.split(".")[-1] if "." in table else table
                    table_data_files = []
                    
                    for file_path, filename in all_data_files:
                        try:
                            with open(file_path, 'r', encoding='utf-8') as f:
                                content = f.read()
                            
                            # Improved detection using robust patterns
                            patterns = [
                                r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s*\(',
                                r'INSERT\s+(?:INTO|INTO\s+ONLY)\s+["\']?([\w\.]+)["\']?\s*(?:VALUES|SELECT)',
                                r'INTO\s+["\']?([\w\.]+)["\']?\s*\('
                            ]
                            insert_matches = []
                            for p in patterns:
                                insert_matches.extend(re.findall(p, content, re.I))
                            
                            file_tables = set()
                            for match in insert_matches:
                                match_table = match.lower().strip('"\'')
                                match_table_only = match_table.split(".")[-1]
                                file_tables.add(normalize(match_table))
                                file_tables.add(normalize(match_table_only))
                                if "." in match_table:
                                    file_tables.add(normalize(f"{module_name.lower()}.{match_table_only}"))
                            
                            target_table_only = table.split(".")[-1] if "." in table else table
                            target_table_variants = {
                                normalize(table),
                                normalize(target_table_only),
                                normalize(f"{module_name.lower()}.{target_table_only}")
                            }
                            
                            has_match = any(t in target_table_variants for t in file_tables)
                            
                            if has_match:
                                if file_tables.issubset(target_table_variants):
                                    table_data_files.append((file_path, filename))
                                    print(f"        Found data file '{filename}' containing ONLY table '{target_table_only}'")
                                else:
                                    # Split data file
                                    print(f"        Splitting data file '{filename}' to extract ONLY table '{target_table_only}'")
                                    fake_screen_tables_map = {screen: [(table, sql)]}
                                    split_result = split_lookup_predefined_file_by_screen(
                                        file_path, filename, fake_screen_tables_map, df, module_name
                                    )
                                    if screen in split_result and split_result[screen]['inserts']:
                                        temp_dir = tempfile.mkdtemp()
                                        split_filename = f"split_{filename}"
                                        split_file_path = os.path.join(temp_dir, split_filename)
                                        with open(split_file_path, 'w', encoding='utf-8') as f_split:
                                            if split_result[screen]['do_block']:
                                                f_split.write(split_result[screen]['do_block'] + '\n\n')
                                            for stmt in split_result[screen]['inserts']:
                                                f_split.write(stmt + '\n')
                                            if split_result[screen]['end_block']:
                                                f_split.write('\n' + split_result[screen]['end_block'] + '\n')
                                        table_data_files.append((split_file_path, split_filename))
                                        print(f"        Successfully extracted relevant data from '{filename}'")
                        except Exception:
                            continue
                    
                    if table_data_files:
                        # DML directories should already exist from paths creation above
                        # But ensure they exist before processing
                        if not os.path.exists(paths["data"]):
                            os.makedirs(paths["data"], exist_ok=True)
                        if not os.path.exists(paths["rdata"]):
                            os.makedirs(paths["rdata"], exist_ok=True)
                        
                        # Process data files for this table into DML folder within same schema batch folder
                        data_paths = {
                            "data": paths["data"],
                            "rdata": paths["rdata"],
                        }
                        
                        print(f"     Processing {len(table_data_files)} data file(s) for table '{table_name_only_for_data}'")
                        _process_data_files_for_screen(table_data_files, data_paths)
                        
                        generate_data_release_notes(table_data_files, table_folder_name)
                        print(f"     Created schema + data: {table_folder_name}")
                    else:
                        print(f"     Created: {table_folder_name}")

                    # Update global registry with new tables created
                    processed_tables_global.add(normalize(table))
                    processed_tables_global.add(normalize(table.split('.')[-1]))
                    
                    # Save progress to state file
                    state["processed_tables"] = list(processed_tables_global)
                    state["pending_constraints"] = pending_constraints
                    save_state(state)

                    # Note: External permissions are NOT created for schema batches - only global users get permissions after schema batch
                    
                    # Resolve any pending constraints that are now possible
                    pending_constraints, resolved = resolve_pending_constraints(module_name, state, pending_constraints, screen_number=lookup_table_screen_number)
                    if resolved:
                        state["pending_constraints"] = pending_constraints
                        save_state(state)
                else:
                    # Case where all_data_files is empty
                    print(f"     Created: {table_folder_name}")

                    # Update global registry with new tables created
                    processed_tables_global.add(normalize(table))
                    processed_tables_global.add(normalize(table.split('.')[-1]))
                    
                    # Save progress to state file
                    state["processed_tables"] = list(processed_tables_global)
                    state["pending_constraints"] = pending_constraints
                    save_state(state)

                    # Note: External permissions are NOT created for schema batches - only global users get permissions after schema batch
                    
                    # Resolve any pending constraints that are now possible
                    pending_constraints, resolved = resolve_pending_constraints(module_name, state, pending_constraints, screen_number=lookup_table_screen_number)
                    if resolved:
                        state["pending_constraints"] = pending_constraints
                        save_state(state)
        else:
            # Regular module: create one folder per screen (existing logic)
            # Create folder name for this screen
            # Order: 1st unique_sequence, 2nd screen_order, 3rd type (schema/data/permission), 4th batch
            # Use sequential batch numbers to ensure globally unique numbers
            
            # ================= PERMISSIONS FOR CURRENT MODULE APP_USERS (AT START OF MODULE) =================
            # Check Excel for every table this module needs; create grant permission folders when this module
            # is executing (first batch), like schema batch check. Done on first screen only.
            if screen_idx == 1:
                process_permissions_for_current_module_app_users(
                    module_name,
                    state,
                    modules_executed_before_run,
                    screen_order_map=screen_order_map,
                    full_df=df,
                    table_sql_map=table_sql_map
                )
            
            # ================= SCHEMA BATCH (FIRST) =================
            schema_batch_number = get_next_batch_number(state, f"schema batch for screen '{screen}' (alternate path)")
            
            print(f"\n  Processing screen '{screen}' (position: {screen_idx}/{len(sorted_screens)})")
            print(f"   - Schema batch number: {schema_batch_number:05d}")
            
            # Schema folder is created first so it gets this batch number; external/global permission
            # folders are created after (below) so they get later numbers and run after schema (Liquibase-friendly).
            
            screen_folder_name = create_folder_name(
                batch_number=schema_batch_number,
                module_name=module_name,
                screen_name=screen,
                screen_number=screen_number_for_folder,
                migration_type="schema",
                migration_number=1
            )
            
            print(f"   - Folder: {screen_folder_name}")
            
            # Create folder structure for this screen
            paths = {
                "tables": os.path.join(screen_folder_name, "scripts", "ddl", "tables"),
                "cons": os.path.join(screen_folder_name, "scripts", "ddl", "constraints"),
                "permissions": os.path.join(screen_folder_name, "scripts", "ddl", "permissions"),
                "rtables": os.path.join(screen_folder_name, "rollback", "ddl", "tables"),
                "rcons": os.path.join(screen_folder_name, "rollback", "ddl", "constraints"),
                "rpermissions": os.path.join(screen_folder_name, "rollback", "ddl", "permissions"),
            }

            for p in paths.values():
                os.makedirs(p, exist_ok=True)

            # ================= TABLE SCRIPTS =================
            for i, (table, sql) in enumerate(sorted_screen_tables, start=1):
                # Extract only table name (without schema prefix)
                name = table.split(".")[-1] if "." in table else table
                
                # Track folder name for this table
                table_folder_mapping[normalize(name)].add(screen_folder_name)

                # Generate matching filenames
                create_filename, rollback_filename = generate_matching_filenames(name, prefix=f"{i:03}")
                table_file_path = os.path.abspath(os.path.join(paths["tables"], create_filename))
                rollback_file_path = os.path.abspath(os.path.join(paths["rtables"], rollback_filename))
                
                table_file_path_long = get_long_path(table_file_path)
                with open(table_file_path_long, "w", encoding="utf-8") as f:
                    if i == 1 and screen_idx == 1:
                        schema_name = module_name.lower()
                        f.write(f"-- Create schema\n")
                        f.write(f"CREATE SCHEMA IF NOT EXISTS {schema_name};\n\n")
                    f.write(format_create(sql))

                rollback_file_path_long = get_long_path(rollback_file_path)
                with open(rollback_file_path_long, "w", encoding="utf-8") as f:
                    f.write(f"DROP TABLE IF EXISTS {table};\n")
                    # Add schema drop statement to the first table rollback file of the first screen
                    # (This will execute last in rollback order, after all tables are dropped)
                    if i == 1 and screen_idx == 1:
                        schema_name = module_name.lower()
                        f.write(f"\n-- Drop schema\n")
                        f.write(f"DROP SCHEMA IF EXISTS {schema_name};\n")

            # No longer updating master changelog as per user request
            # update_master_changelog(screen_folder_name)

            # ================= CONSTRAINT SCRIPTS =================
            # Write constraints for this screen: include ALL constraints where referenced table exists
            # Schema reference comes from dump.sql file (via get_referenced_table)
            # Rules:
            # 1. If referenced table exists in processed_tables_global (from any module) - include it
            # 2. If referenced table is in same batch - include it (all tables created before constraints)
            # 3. Otherwise - add to pending_constraints
            internal_constraints = []
            
            # Build a map of table names to their positions in sorted_screen_tables for same-batch checking
            table_position_map = {}
            for idx, (table, _) in enumerate(sorted_screen_tables):
                table_normalized = normalize(table)
                table_only_normalized = normalize(table.split('.')[-1] if '.' in table else table)
                table_position_map[table_normalized] = idx
                table_position_map[table_only_normalized] = idx
            
            for con in sorted_screen_constraints:
                target_table = get_referenced_table(con)
                if target_table:
                    # Schema comes from dump.sql (constraints are extracted from dump.sql)
                    if '.' in target_table:
                        target_schema = target_table.split('.')[0].lower()
                        target_table_normalized = normalize(target_table)
                        target_table_only_normalized = normalize(target_table.split('.')[-1])
                        
                        # Check if referenced table exists in dump.sql (primary check - must exist)
                        target_exists_in_dump = (
                            target_table_normalized in all_tables_in_dump or
                            target_table_only_normalized in all_tables_in_dump
                        )
                        
                        # Check if referenced table exists in processed tables (from any module)
                        target_exists_in_global = (
                            target_table_normalized in processed_tables_global or
                            target_table_only_normalized in processed_tables_global
                        )
                        
                        # Check if target table is in current screen's tables (same batch)
                        target_in_current_batch = (
                            target_table_normalized in table_position_map or
                            target_table_only_normalized in table_position_map
                        )
                        
                        # CRITICAL: Check if referenced table is a lookup table
                        # BUT: Only include constraint if the lookup table has already been created
                        # Lookup tables are processed per screen, so a lookup table in a later screen
                        # might not exist yet when processing constraints for an earlier screen
                        is_lookup_table = False
                        lookup_table_exists = False
                        table_type_map = globals().get('table_type_map', {})
                        if target_table_only_normalized in table_type_map:
                            is_lookup_table = (table_type_map[target_table_only_normalized] == 'lookup')
                        # Also check if table name ends with '_lk' as fallback
                        if not is_lookup_table and target_table_only_normalized.endswith('_lk'):
                            is_lookup_table = True
                        
                        # If it's a lookup table, check if it has been created (exists in processed_tables_global)
                        # OR if it's in lookup_tables_with_dedicated_folders (will be created before this constraint)
                        if is_lookup_table:
                            lookup_tables_with_folders = globals().get('lookup_tables_with_dedicated_folders', set())
                            # Lookup table exists if:
                            # 1. It's already in processed_tables_global (created), OR
                            # 2. It's in lookup_tables_with_dedicated_folders (will be created in a lookup folder)
                            #    AND it's in a screen that comes BEFORE the current screen
                            if target_exists_in_global:
                                lookup_table_exists = True
                            elif target_table_only_normalized in lookup_tables_with_folders:
                                # Check if this lookup table is in a screen that comes before current screen
                                # For now, if it's in lookup_tables_with_dedicated_folders, assume it will be created
                                # But we still need to verify it exists in processed_tables_global
                                # So we'll defer it to pending_constraints if not in processed_tables_global
                                lookup_table_exists = False  # Defer to pending if not yet created
                        
                        # Include constraint if:
                        # 1. Referenced table exists in dump.sql (must exist), AND
                        # 2. (Referenced table exists in global registry OR is in same batch)
                        #    NOTE: For lookup tables, we require they exist in processed_tables_global (already created)
                        #    We do NOT include constraints for lookup tables that haven't been created yet
                        if target_exists_in_dump and (target_exists_in_global or target_in_current_batch):
                            internal_constraints.append(con)
                            # Debug output for included constraints
                            con_table = get_constraint_table(con)
                            print(f"        DEBUG: Including constraint: {con_table} -> {target_table}")
                            print(f"          - target_exists_in_dump: {target_exists_in_dump}")
                            print(f"          - target_exists_in_global: {target_exists_in_global}")
                            print(f"          - target_in_current_batch: {target_in_current_batch}")
                            print(f"          - is_lookup_table: {is_lookup_table}")
                            print(f"          - target_table_normalized: '{target_table_normalized}'")
                            print(f"          - target_table_only_normalized: '{target_table_only_normalized}'")
                        else:
                            # Referenced table doesn't exist in dump.sql or not yet processed - add to pending
                            con_table = get_constraint_table(con)
                            print(f"        DEBUG: Deferring constraint: {con_table} -> {target_table}")
                            print(f"          - target_exists_in_dump: {target_exists_in_dump}")
                            print(f"          - target_exists_in_global: {target_exists_in_global}")
                            print(f"          - target_in_current_batch: {target_in_current_batch}")
                            print(f"          - is_lookup_table: {is_lookup_table}")
                            print(f"          - target_table_normalized: '{target_table_normalized}'")
                            print(f"          - target_table_only_normalized: '{target_table_only_normalized}'")
                            print(f"          - processed_tables_global sample (first 10): {list(processed_tables_global)[:10]}")
                            if con not in pending_constraints:
                                pending_constraints.append(con)
                    else:
                        # No schema prefix - check if table exists in dump.sql first
                        target_table_normalized = normalize(target_table)
                        target_exists_in_dump = (
                            target_table_normalized in all_tables_in_dump
                        )
                        target_exists = (
                            target_table_normalized in processed_tables_global or
                            target_table_normalized in table_position_map
                        )
                        
                        # Include constraint ONLY if table exists in dump.sql and is processed/in batch
                        if target_exists_in_dump and target_exists:
                            internal_constraints.append(con)
                        else:
                            # Add to pending if not exists in dump.sql or not yet processed
                            if con not in pending_constraints:
                                pending_constraints.append(con)
                else:
                    # No referenced table (UNIQUE constraint, CHECK constraint, etc.) - always include
                    internal_constraints.append(con)

            if internal_constraints:
                cons_dir_abs = os.path.abspath(paths["cons"])
                rcons_dir_abs = os.path.abspath(paths["rcons"])
                os.makedirs(get_long_path(cons_dir_abs), exist_ok=True)
                os.makedirs(get_long_path(rcons_dir_abs), exist_ok=True)

                constraint_file = os.path.abspath(os.path.join(cons_dir_abs, "001_create_foreign_keys.sql"))
                with open(get_long_path(constraint_file), "w", encoding="utf-8") as f1:
                    for c in internal_constraints:
                        f1.write(c + "\n\n")
                
                rollback_constraint_file = os.path.abspath(os.path.join(rcons_dir_abs, "001_rollback_create_foreign_keys.sql"))
                with open(get_long_path(rollback_constraint_file), "w", encoding="utf-8") as f2:
                    for c in reversed(internal_constraints):
                        rb = build_constraint_rollback(c)
                        if rb:
                            f2.write(rb)
                print(f"     Created internal constraints for screen '{screen}'")

            # Update global registry with new tables created in this screen
            new_tables = [t for t, _ in sorted_screen_tables]
            for t in new_tables:
                processed_tables_global.add(normalize(t))
                processed_tables_global.add(normalize(t.split('.')[-1]))
            
            # CRITICAL: Resolve pending constraints that reference tables just created in this module
            # This ensures constraints referencing tables created in the current module are resolved immediately
            pending_constraints, constraints_resolved = resolve_pending_constraints(
                module_name, state, pending_constraints, screen_number=screen_idx
            )
            if constraints_resolved:
                print(f"     Resolved pending constraints after creating tables in screen '{screen}'")
            
            # Save progress to state object and file
            state["processed_tables"] = list(processed_tables_global)
            state["pending_constraints"] = pending_constraints
            save_state(state)

            # ================= GENERATE RELEASE NOTES =================
            generate_release_notes(sorted_screen_tables, internal_constraints, screen_folder_name)
            
            print(f"     Created schema batch: {screen_folder_name}")
            
            # ================= EXTERNAL PERMISSIONS (AFTER SCHEMA BATCH) =================
            # If target module (e.g. DND) was already executed: create its app_user permission folders
            # NOW, after this schema batch, so migration order is schema -> permissions (Liquibase-friendly).
            # Do not pass schema_batch_number so folders get next batch number (after schema).
            tables_for_external = [t for t, _ in sorted_screen_tables]
            process_external_permissions_to_current_tables(
                module_name,
                state,
                tables_for_external,
                screen_number=screen_number_for_folder,
                screen_order_map=screen_order_map,
                full_df=df,
                schema_batch_number=None
            )
            
            # ================= GLOBAL USERS PERMISSIONS (AFTER SCHEMA BATCH) =================
            # Create global user permission folders (magic_read_app_user, magic_save_app_user, auth_app_user)
            # for EVERY schema batch if tables are listed in Magic Read, Magic Save, or Auth sheets
            tables_for_global_perms = [t for t, _ in sorted_screen_tables]
            process_global_users_permissions(
                module_name,
                state,
                tables_for_global_perms,
                screen_number=screen_number_for_folder,
                screen_order_map=screen_order_map,
                full_df=df,
                schema_batch_number=schema_batch_number,
                modules_executed_before_run=modules_executed_before_run,
                screen_name=screen
            )
            
            # For lookup modules, process data migration per table (after schema batch)
            # For regular modules, process data migration per screen
            if is_lookup_module:
                # Process data migration for lookup module - create data batch after each table's schema batch
                # Note: This will be handled in a separate loop after all schema batches are created
                # For now, skip the regular data/permission processing
                continue
            
            # ================= PROCESS DATA MIGRATION FOR THIS SCREEN =================
            screen_data_files = []
            
            # Get screen's table set for filtering lookup/predefined files
            screen_tables_set_for_data = set()
            if screen_tables and screen in screen_tables:
                screen_table_list = screen_tables[screen]
                for table_name, _ in screen_table_list:
                    screen_tables_set_for_data.add(normalize(table_name))
                    table_name_only = table_name.split(".")[-1] if "." in table_name else table_name
                    screen_tables_set_for_data.add(normalize(table_name_only))
            
            # Collect data files for this screen, preserving original order from all_data_files
            # Data file distribution rules:
            # - Screen 1: Gets ALL files EXCEPT lookup/predefined files (seed, RBAC, ABAC, workflow, etc. - all go to Screen 1)
            # - Screen 1: Gets split lookup/predefined INSERT statements for tables created in Screen 1's schema batch
            # - Other screens: ONLY get split lookup/predefined INSERT statements for tables created in their schema batch
            # - Other screens: Do NOT get any other files (seed, RBAC, ABAC, workflow, etc. - all go to Screen 1)
            
            # Iterate through all_data_files in original order
            for file_path, filename in all_data_files:
                file_type = file_types_main.get((file_path, filename), 'seed')
                
                # Skip if already assigned to another screen (for seed files only)
                # Lookup/predefined files can be split and assigned to multiple screens
                if file_type == 'seed' and (file_path, filename) in assigned_seed_files:
                    continue
                
                if screen_idx == 1:
                    # ========== SCREEN 1 LOGIC ==========
                    # Screen 1: Gets ALL files EXCEPT lookup/predefined files
                    # This includes: seed data, RBAC, ABAC, workflow, and all other non-lookup/non-predefined files
                    if file_type == 'seed':
                        # All seed data files go to Screen 1
                        screen_data_files.append((file_path, filename))
                        assigned_seed_files.add((file_path, filename))
                    elif file_type in ['lookup', 'predefined']:
                        # Check if this is one of the specific files that should follow screen order
                        # Only 001_LOOKUP.sql and 002_PREDEFINED.sql follow screen order
                        # All other lookup/predefined files go to Screen 1 only
                        filename_lower = filename.lower().strip()
                        # Match exactly: 001_LOOKUP.sql and 002_PREDEFINED.sql (case-insensitive)
                        # Also match patterns like: 001_lookup.sql, 002_predefined.sql
                        is_screen_order_file = (
                            filename_lower == '001_lookup.sql' or
                            filename_lower == '002_predefined.sql' or
                            re.match(r'^001_[\w_]*lookup[\w_]*\.sql$', filename_lower) is not None or
                            re.match(r'^002_[\w_]*predefined[\w_]*\.sql$', filename_lower) is not None
                        )
                        
                        if is_screen_order_file:
                            # For 001_LOOKUP.sql and 002_PREDEFINED.sql: split by screen and only include INSERT statements for Screen 1's tables
                            # These files follow screen order - split and include only tables created in Screen 1
                            if screen_tables:
                                # Split the file by screen
                                split_result = split_lookup_predefined_file_by_screen(
                                    file_path, filename, screen_tables, df, module_name
                                )
                                
                                # Check if this screen has any INSERT statements from this file
                                if screen in split_result and split_result[screen]['inserts']:
                                    # Create a temporary split file for this screen
                                    temp_dir = tempfile.mkdtemp()
                                    split_filename = f"split_{filename}"
                                    split_file_path = os.path.join(temp_dir, split_filename)
                                    
                                    # Write the split file with DO block, INSERT statements, and END block
                                    with open(split_file_path, 'w', encoding='utf-8') as f:
                                        if split_result[screen]['do_block']:
                                            f.write(split_result[screen]['do_block'])
                                            f.write('\n\n')
                                        
                                        for insert_stmt in split_result[screen]['inserts']:
                                            # Remove any trailing END $$ from INSERT statement (will be added once at the end)
                                            clean_insert = re.sub(r'END\s+\$\$;?\s*$', '', insert_stmt, flags=re.I | re.MULTILINE).rstrip()
                                            f.write(clean_insert)
                                            f.write('\n\n')
                                        
                                        # Add END block only once at the end (remove any duplicate END statements)
                                        if split_result[screen]['end_block']:
                                            end_block_clean = split_result[screen]['end_block'].rstrip()
                                            f.write(end_block_clean)
                                            f.write('\n')
                                    
                                    screen_data_files.append((split_file_path, split_filename))
                                    if file_type == 'lookup':
                                        assigned_lookup_files.add((file_path, filename))  # Track original file
                                    elif file_type == 'predefined':
                                        assigned_predefined_files.add((file_path, filename))  # Track original file
                        else:
                            # For all other lookup/predefined files: add to Screen 1 only (treat as seed data)
                            screen_data_files.append((file_path, filename))
                            if file_type == 'lookup':
                                assigned_lookup_files.add((file_path, filename))
                            elif file_type == 'predefined':
                                assigned_predefined_files.add((file_path, filename))
                else:
                    # ========== OTHER SCREENS LOGIC ==========
                    # Other screens: ONLY get split lookup/predefined INSERT statements for tables created in their schema batch
                    # All other files (seed, RBAC, ABAC, workflow, etc.) are EXCLUDED from other screens (they go to Screen 1)
                    if file_type == 'seed':
                        # Skip seed files for other screens (they go to Screen 1)
                        continue
                    elif file_type in ['lookup', 'predefined']:
                        # Check if this is one of the specific files that should follow screen order
                        # Only 001_LOOKUP.sql and 002_PREDEFINED.sql follow screen order
                        # All other lookup/predefined files go to Screen 1 only (skip for other screens)
                        filename_lower = filename.lower().strip()
                        # Match exactly: 001_LOOKUP.sql and 002_PREDEFINED.sql (case-insensitive)
                        # Also match patterns like: 001_lookup.sql, 002_predefined.sql
                        is_screen_order_file = (
                            filename_lower == '001_lookup.sql' or
                            filename_lower == '002_predefined.sql' or
                            re.match(r'^001_[\w_]*lookup[\w_]*\.sql$', filename_lower) is not None or
                            re.match(r'^002_[\w_]*predefined[\w_]*\.sql$', filename_lower) is not None
                        )
                        
                        if is_screen_order_file:
                            # For 001_LOOKUP.sql and 002_PREDEFINED.sql: split by screen and only include INSERT statements for THIS screen's tables
                            # These files follow screen order - split and include only tables created in THIS screen's schema batch
                            if screen_tables:
                                # Split the file by screen
                                split_result = split_lookup_predefined_file_by_screen(
                                    file_path, filename, screen_tables, df, module_name
                                )
                                
                                # Check if this screen has any INSERT statements from this file
                                if screen in split_result and split_result[screen]['inserts']:
                                    # Create a temporary split file for this screen
                                    temp_dir = tempfile.mkdtemp()
                                    split_filename = f"split_{filename}"
                                    split_file_path = os.path.join(temp_dir, split_filename)
                                    
                                    # Write the split file with DO block, INSERT statements, and END block
                                    with open(split_file_path, 'w', encoding='utf-8') as f:
                                        if split_result[screen]['do_block']:
                                            f.write(split_result[screen]['do_block'])
                                            f.write('\n\n')
                                        
                                        for insert_stmt in split_result[screen]['inserts']:
                                            # Remove any trailing END $$ from INSERT statement (will be added once at the end)
                                            clean_insert = re.sub(r'END\s+\$\$;?\s*$', '', insert_stmt, flags=re.I | re.MULTILINE).rstrip()
                                            f.write(clean_insert)
                                            f.write('\n\n')
                                        
                                        # Add END block only once at the end (remove any duplicate END statements)
                                        if split_result[screen]['end_block']:
                                            end_block_clean = split_result[screen]['end_block'].rstrip()
                                            f.write(end_block_clean)
                                            f.write('\n')
                                    
                                    screen_data_files.append((split_file_path, split_filename))
                                    if file_type == 'lookup':
                                        assigned_lookup_files.add((file_path, filename))  # Track original file
                                    elif file_type == 'predefined':
                                        assigned_predefined_files.add((file_path, filename))  # Track original file
                        else:
                            # For all other lookup/predefined files: skip for other screens (they go to Screen 1 only)
                            continue
            
            if screen_data_files:
                seed_added = sum(1 for f, n in screen_data_files if file_types_main.get((f, n)) == 'seed')
                lookup_added = sum(1 for f, n in screen_data_files if file_types_main.get((f, n)) == 'lookup')
                predefined_added = sum(1 for f, n in screen_data_files if file_types_main.get((f, n)) == 'predefined')
                print(f"     Screen {screen_idx}: Adding {len(screen_data_files)} file(s) in original order ({seed_added} seed, {lookup_added} lookup, {predefined_added} predefined)")
            
            # Create data folder if files exist
            if screen_data_files:
                # Assign sequential batch number for data folder
                data_batch_number = get_next_batch_number(state, f"data batch for screen '{screen}'")
                
                data_folder_name = create_folder_name(
                    batch_number=data_batch_number,
                    module_name=module_name,
                    screen_name=screen,
                    screen_number=screen_number_for_folder,
                    migration_type="data",
                    migration_number=1
                )
                
                print(f"\n  Creating data migration folder for screen '{screen}': {data_folder_name}")
                print(f"   - Total data files for this screen: {len(screen_data_files)}")
                
                data_paths = {
                    "data": os.path.join(data_folder_name, "scripts", "tenant_specific", "tenant_1", "dml"),
                    "rdata": os.path.join(data_folder_name, "rollback", "tenant_specific", "tenant_1", "dml"),
                }
                
                for p in data_paths.values():
                    os.makedirs(p, exist_ok=True)
                
                # Process the files (already split for lookup/predefined, original for others)
                # Track temporary split files for cleanup
                temp_split_dirs = set()
                for file_path, filename in screen_data_files:
                    # Check if this is a split file (starts with "split_")
                    if filename.startswith('split_'):
                        # Extract the temp directory
                        temp_split_dirs.add(os.path.dirname(file_path))
                
                # Track tables being inserted in this screen
                screen_inserted_tables = _process_data_files_for_screen(screen_data_files, data_paths)
                processed_tables_by_screen[screen].update(screen_inserted_tables)
                
                generate_data_release_notes(screen_data_files, data_folder_name)
                print(f"     Created data batch: {data_folder_name}")
                
                # No longer updating master changelog as per user request
                # update_master_changelog(data_folder_name)
                
                # Clean up temporary split files
                for temp_dir in temp_split_dirs:
                    try:
                        shutil.rmtree(temp_dir)
                    except Exception:
                        pass
            
            # ================= PROCESS PERMISSION MIGRATION FOR THIS SCREEN =================
            # 1. Internal Permissions (already handled by generate_batch_permission_sql calls below)
            
            # Note: External permissions are NOT created for schema batches - only global users get permissions after schema batch
            
            # 3. Resolve Constraints whose TARGET is now available
            pending_constraints, resolved = resolve_pending_constraints(module_name, state, pending_constraints, screen_number=screen_number_for_folder)
            if resolved:
                state["pending_constraints"] = pending_constraints
                save_state(state)

            # screen_permission_files is already initialized earlier (before lookup module check)
            # For regular modules, it's already set; for lookup modules, it was used per table
            
            # Generate permission files in schema folder's ddl/permissions directory
            # Always create for batch permission files, even if no existing permission files
            if screen_tables and screen in screen_tables:
                # Get app users for this module from app_user.txt
                app_users = get_module_app_users(module_name, screen)
                
                # If no app users found, try to extract from permission files as fallback
                if not app_users:
                    if screen_permission_files:
                        user_name = extract_user_name_from_permission_files(screen_permission_files)
                        app_users = [user_name] if user_name else []
                    else:
                        app_users = []
                
                # Ensure permissions directories exist
                if not os.path.exists(paths["permissions"]):
                    os.makedirs(paths["permissions"], exist_ok=True)
                if not os.path.exists(paths["rpermissions"]):
                    os.makedirs(paths["rpermissions"], exist_ok=True)
                
                # Always generate permission files, even if no app_users (will create empty files for consistency)
                if not app_users:
                    print(f"\n    No app users found for module '{module_name}' - generating empty permission files")
                    # Generate empty permission file
                    empty_perm_file = os.path.join(paths["permissions"], "001_grant_permissions.sql")
                    empty_rperm_file = os.path.join(paths["rpermissions"], "001_rollback_grant_permissions.sql")
                    
                    try:
                        with open(empty_perm_file, "w", encoding="utf-8") as f:
                            f.write(f"-- No app users defined for module '{module_name}' in app_user.txt\n")
                            f.write("-- No permissions to grant\n")
                        
                        with open(empty_rperm_file, "w", encoding="utf-8") as f:
                            f.write(f"-- No app users defined for module '{module_name}' in app_user.txt\n")
                            f.write("-- No permissions to revoke\n")
                        
                        print(f"     Generated empty permission files in {paths['permissions']}")
                    except Exception as e:
                        print(f"     ERROR generating empty permission files: {e}")
                        print(f"   Permissions dir: {paths['permissions']}")
                        print(f"   Permissions dir exists: {os.path.exists(paths['permissions'])}")
                        raise
                else:
                    # Separate magic users from regular users
                    # HRCS magic users: get separate folders with ALL tables from all screens
                    # DND magic users: get separate folders with tables from allowed screens only
                    magic_users_hrcs = []
                    magic_users_dnd = []
                    regular_users = []
                    
                    for app_user in app_users:
                        is_magic_user_hrcs = (
                            module_name.lower() == 'hrcs' and 
                            app_user in ['magic_read_app_user', 'magic_save_app_user']
                        )
                        is_magic_user_dnd = (
                            module_name.lower() == 'dnd' and 
                            app_user in ['magic_read_app_user', 'magic_save_app_user']
                        )
                        if is_magic_user_hrcs:
                            magic_users_hrcs.append(app_user)
                        elif is_magic_user_dnd:
                            magic_users_dnd.append(app_user)
                        else:
                            regular_users.append(app_user)
                    
                    # Process regular users - put permissions in schema folder's ddl/permissions
                    if regular_users:
                        print(f"\n  Generating permission files for screen '{screen}' in schema folder - {len(regular_users)} regular app user(s)")
                        
                        screen_table_list = screen_tables[screen]
                        screen_constraints_list = []
                        
                        # Get constraints from the stored global dict (set in schema creation loop)
                        if 'screen_constraints_by_screen' in globals() and screen in globals()['screen_constraints_by_screen']:
                            screen_constraints_list = globals()['screen_constraints_by_screen'][screen]
                        else:
                            # Fallback: extract from constraints if available
                            screen_table_set = {t for t, _ in screen_table_list}
                            if 'constraints' in globals():
                                try:
                                    constraints_var = globals().get('constraints')
                                    if constraints_var:
                                        for con in constraints_var:
                                            if is_primary_key_constraint(con):
                                                continue
                                            con_table = get_constraint_table(con)
                                            if con_table and con_table in screen_table_set:
                                                screen_constraints_list.append(con)
                                except Exception:
                                    pass  # If constraints not available, use empty list
                        
                        # Generate permission files for each regular app_user in schema folder
                        for idx, app_user in enumerate(regular_users, start=1):
                            # Generate batch permission SQL for this app_user (current screen's tables only)
                            batch_permission_sql = generate_batch_permission_sql(
                                module_name=module_name,
                                screen_tables=screen_table_list,
                                screen_constraints=screen_constraints_list,
                                permission_files=screen_permission_files if screen_permission_files else [],
                                app_user=app_user,
                                screen_name=screen
                            )
            
                            # Always write batch permission file in schema folder's ddl/permissions directory
                            # Use numbered filename to avoid overwriting when multiple app_users exist
                            batch_permission_filename = f"{idx:03}_grant_permissions.sql"
                            batch_permission_file = os.path.join(paths["permissions"], batch_permission_filename)
                            with open(batch_permission_file, "w", encoding="utf-8") as f:
                                f.write(batch_permission_sql if batch_permission_sql else "-- No permissions to grant\n")
                            
                            # Generate and write rollback file
                            batch_permission_rollback = generate_batch_permission_rollback(
                                module_name=module_name,
                                screen_tables=screen_table_list,
                                screen_constraints=screen_constraints_list,
                                permission_files=screen_permission_files if screen_permission_files else [],
                                app_user=app_user,
                                screen_name=screen
                            )
                            batch_permission_rollback_file = os.path.join(paths["rpermissions"], f"{idx:03}_rollback_grant_permissions.sql")
                            with open(batch_permission_rollback_file, "w", encoding="utf-8") as f:
                                f.write(batch_permission_rollback if batch_permission_rollback else "-- No permissions to revoke\n")
                            
                            print(f"     Generated: {batch_permission_filename} for {app_user} in {paths['permissions']}")
                    
                    # Magic users for HRCS/DND are created by process_global_users_permissions (no duplicate folders)
                    if False and magic_users_hrcs:  # disabled to avoid duplication
                        print(f"\n  Generating separate permission folders for hrcs magic users - {len(magic_users_hrcs)} user(s)")
                        for app_user in magic_users_hrcs:
                            # Assign sequential batch number
                            permission_batch_number = get_next_batch_number(state, f"magic user '{app_user}' permissions for hrcs/dnd in screen '{screen}'")
                            
                            # Create folder name
                            permission_folder_name = create_permission_folder_name(
                                batch_number=permission_batch_number,
                                app_user_name=app_user,
                                screen_name=screen,
                                screen_number=screen_number_for_folder,
                                migration_type="schema",
                                migration_number=1
                            )
                            
                            print(f"     Creating separate permission folder for {app_user}: {permission_folder_name}")
                            
                            # No longer updating master changelog as per user request
                            # update_master_changelog(permission_folder_name)
                            
                            # Track folder name
                            if screen in screen_tables:
                                for t, _ in screen_tables[screen]:
                                    table_folder_mapping[normalize(t)].add(permission_folder_name)
                            
                            # Create paths
                            m_paths = {
                                "scripts": os.path.join(permission_folder_name, "scripts", "ddl", "permissions"),
                                "rollback": os.path.join(permission_folder_name, "rollback", "ddl", "permissions"),
                            }
                            for p in m_paths.values():
                                os.makedirs(p, exist_ok=True)
                            
                            # Generate SQL
                            p_sql = generate_batch_permission_sql(module_name, sorted_screen_tables, screen_constraints, [], app_user, screen)
                            p_rb_sql = generate_batch_permission_rollback(module_name, sorted_screen_tables, screen_constraints, [], app_user, screen)
                            
                            # Write files
                            with open(os.path.join(m_paths["scripts"], "001_grant_permissions.sql"), "w", encoding="utf-8") as f:
                                f.write(p_sql if p_sql else "-- No permissions to grant\n")
                            with open(os.path.join(m_paths["rollback"], "001_rollback_grant_permissions.sql"), "w", encoding="utf-8") as f:
                                f.write(p_rb_sql if p_rb_sql else "-- No permissions to revoke\n")
                            
                        print(f"     Generated separate magic user permission folders for screen '{screen}'")
                    
                    # Magic users for DND are created by process_global_users_permissions (no duplicate folders)
                    if False and magic_users_dnd:  # disabled to avoid duplication
                        print(f"\n  Generating separate permission folders for dnd magic users - {len(magic_users_dnd)} user(s)")
                        for app_user in magic_users_dnd:
                            # Determine allowed tables
                            user_tables = []
                            user_constraints = []
                            screen_lower = screen.lower()
                            
                            if app_user == 'magic_read_app_user' and ('specification' in screen_lower or 'dir' in screen_lower):
                                user_tables = sorted_screen_tables
                                user_constraints = screen_constraints
                            elif app_user == 'magic_save_app_user' and 'specification' in screen_lower:
                                user_tables = sorted_screen_tables
                                user_constraints = screen_constraints
                                
                            if user_tables:
                                # Assign sequential batch number
                                permission_batch_number = get_next_batch_number(state, f"app user '{app_user}' permissions for screen '{screen}'")
                                
                                # Create folder name
                                permission_folder_name = create_permission_folder_name(
                                    batch_number=permission_batch_number,
                                    app_user_name=app_user,
                                    screen_name=screen,
                                    screen_number=screen_number_for_folder,
                                    migration_type="schema",
                                    migration_number=1
                                )
                                
                                print(f"     Creating separate permission folder for {app_user}: {permission_folder_name}")
                                
                                # No longer updating master changelog as per user request
                                # update_master_changelog(permission_folder_name)
                                
                                # Track folder name
                                for t, _ in user_tables:
                                    table_folder_mapping[normalize(t)].add(permission_folder_name)
                                
                                # Create paths
                                m_paths = {
                                    "scripts": os.path.join(permission_folder_name, "scripts", "ddl", "permissions"),
                                    "rollback": os.path.join(permission_folder_name, "rollback", "ddl", "permissions"),
                                }
                                for p in m_paths.values():
                                    os.makedirs(p, exist_ok=True)
                                
                                # Generate SQL
                                p_sql = generate_batch_permission_sql(module_name, user_tables, user_constraints, [], app_user, screen)
                                p_rb_sql = generate_batch_permission_rollback(module_name, user_tables, user_constraints, [], app_user, screen)
                                
                                # Write files
                                with open(os.path.join(m_paths["scripts"], "001_grant_permissions.sql"), "w", encoding="utf-8") as f:
                                    f.write(p_sql if p_sql else "-- No permissions to grant\n")
                                with open(os.path.join(m_paths["rollback"], "001_rollback_grant_permissions.sql"), "w", encoding="utf-8") as f:
                                    f.write(p_rb_sql if p_rb_sql else "-- No permissions to revoke\n")
                        
                        print(f"     Generated separate magic user permission folders for screen '{screen}'")

    print(f"\n  Created migration folders for {len(sorted_screens)} screen(s)")
    
    # Note: Global users permissions are now created after EVERY schema batch (handled above)
    # No need to create at the end of module processing anymore
    
    # ================= VALIDATE ALL TABLES ARE INSERTED =================
    if all_data_files:
        validation_passed = validate_all_tables_inserted(
            all_data_files, 
            processed_tables_by_screen, 
            module_name, 
            df
        )
        if not validation_passed:
            print(f"\n    WARNING: Some tables with INSERT statements may not be processed!")
            print(f"   Please review the missing tables listed above.")
        else:
            print(f"\n  VALIDATION PASSED: All tables are being inserted correctly!")
    
    # ================= CREATE NEW EXCEL FILE WITH FOLDER NAMES =================
    if table_folder_mapping:
        print(f"\n  Updating Excel file with FOLDER_NAME column...")
        print(f"     Tracked {len(table_folder_mapping)} unique table(s) with folder names")
        try:
            # Create a new output Excel file in the local base folder
            # Derived from the latest schema tracking file name
            excel_basename = os.path.basename(EXCEL_FILE)
            excel_name_without_ext = os.path.splitext(excel_basename)[0]
            excel_ext = os.path.splitext(excel_basename)[1]
            
            # New unique name for the output file
            output_excel_filename = f"UPDATED_{excel_name_without_ext}_with_folders{excel_ext}"
            output_excel_path = os.path.join(BASE_FOLDER, output_excel_filename)
            
            # Use the robust read function instead of direct pd.read_excel
            if os.path.exists(output_excel_path):
                print(f"     Reading existing output file: {output_excel_path}")
                try:
                    original_df = pd.read_excel(output_excel_path)
                except Exception:
                    original_df = pd.read_excel(output_excel_path, sheet_name=0)
            else:
                print(f"     Reading original schema file: {EXCEL_FILE}")
                # Use the robust read_excel_mapping function we defined
                original_df = read_excel_mapping()
                if original_df is None or original_df.empty:
                    print(f"     ERROR: Could not load data from {EXCEL_FILE}")
                    return module_name
            
            original_df.columns = original_df.columns.str.strip()
            print(f"     Excel file loaded: {len(original_df)} rows, {len(original_df.columns)} columns")
            
            # Create FOLDER_NAME column if it doesn't exist (preserve existing values)
            if 'FOLDER_NAME' not in original_df.columns:
                original_df['FOLDER_NAME'] = ''
                print(f"     Added FOLDER_NAME column")
            else:
                print(f"     FOLDER_NAME column already exists (will filter and update with relevant folders only)")
            
            # Update FOLDER_NAME for each table (only for current module, filter by screen)
            updated_count = 0
            matched_tables = []
            module_col = 'MODULE' if 'MODULE' in original_df.columns else None
            screen_col = 'SCREEN_NAME' if 'SCREEN_NAME' in original_df.columns else None
            
            for idx, row in original_df.iterrows():
                # Only update rows for the current module
                if module_col:
                    row_module = str(row.get(module_col, '')).strip()
                    if row_module.lower() != module_name.lower():
                        continue  # Skip rows from other modules
                
                table_name = str(row.get('TABLE_NAME', '')).strip()
                if not table_name or pd.isna(table_name) or table_name == '':
                    continue
                
                # Get the screen name for this table from Excel
                row_screen = ''
                if screen_col:
                    row_screen = str(row.get(screen_col, '')).strip()
                
                # Normalize table name for matching
                table_normalized = normalize(table_name.split(".")[-1] if "." in table_name else table_name)
                
                # Get folder names for this table (from current module processing)
                if table_normalized in table_folder_mapping:
                    folder_names = sorted(table_folder_mapping[table_normalized])  # Sort for consistency
                    
                    # Filter folders to only include those relevant to this table's screen
                    filtered_folders = []
                    if row_screen and row_screen != '':
                        # Normalize screen name for matching (handle spaces, underscores, case)
                        screen_normalized = normalize(row_screen).replace(' ', '_').replace('-', '_')
                        screen_variations = [
                            screen_normalized,
                            row_screen.lower().replace(' ', '_'),
                            row_screen.lower().replace(' ', '-'),
                            row_screen.lower()
                        ]
                        
                        for folder_name in folder_names:
                            folder_lower = folder_name.lower()
                            # Check if folder contains any variation of the screen name
                            screen_matches = any(var in folder_lower for var in screen_variations if var)
                            
                            if screen_matches:
                                filtered_folders.append(folder_name)
                    else:
                        # No screen info - include all folders for this table (fallback)
                        filtered_folders = folder_names
                    
                    # If no filtered folders but we have folder names, it might be a screen name mismatch
                    # In that case, still include the folders but log a warning
                    if not filtered_folders and folder_names:
                        # Screen name might not match - include all folders as fallback
                        print(f"   WARNING: Table '{table_name}' in screen '{row_screen}' - screen name mismatch, including all {len(folder_names)} folder(s)")
                        filtered_folders = folder_names
                    
                    if filtered_folders:
                        # For current module, replace existing folders (don't merge) to ensure only relevant folders
                        folder_name_str = '; '.join(filtered_folders)
                        folder_count = len(filtered_folders)
                        
                        original_df.at[idx, 'FOLDER_NAME'] = folder_name_str
                        updated_count += 1
                        matched_tables.append((table_name, folder_count))
                    # Note: If no folders found, we don't update the row (keeps existing value or empty)
            
            # Show some sample matches for debugging
            if matched_tables:
                print(f"   INFO: Sample matches (first 5):")
                for table_name, folder_count in matched_tables[:5]:
                    print(f"      - {table_name}: {folder_count} folder(s)")
            
            # Use the same output file for all modules (accumulates data from all modules)
            print(f"   INFO: Saving updated Excel file: {output_excel_path}")
            
            # Write the updated DataFrame to output Excel file (same file for all modules)
            try:
                # Exclude internal helper columns before writing to Excel
                columns_to_write = original_df.columns.tolist()
                # Remove internal helper columns that are only used for matching
                internal_columns = ['TABLE_NAME_NORMALIZED', 'TABLE_NAME_ONLY_NORMALIZED']
                columns_to_write = [col for col in columns_to_write if col not in internal_columns]
                
                # Create a copy with only the columns we want to write
                df_to_write = original_df[columns_to_write].copy()
                
                # Use openpyxl engine for better compatibility
                df_to_write.to_excel(output_excel_path, index=False, engine='openpyxl')
                print(f"   SUCCESS: Successfully updated Excel file with {updated_count} table(s) for module '{module_name}'")
                print(f"   SUCCESS: File saved: {output_excel_path}")
                
                # Verify the file was written
                if os.path.exists(output_excel_path):
                    file_size = os.path.getsize(output_excel_path)
                    print(f"   SUCCESS: File verification: {file_size} bytes written")
                    print(f"   INFO: Total rows: {len(df_to_write)}, Total columns: {len(df_to_write.columns)}")
                    print(f"   INFO: This file accumulates folder data from all processed modules")
                    print(f"   INFO: Internal helper columns (TABLE_NAME_NORMALIZED, TABLE_NAME_ONLY_NORMALIZED) excluded from output")
                else:
                    print(f"   WARNING: WARNING: File not found after writing")
            except Exception as write_error:
                print(f"   ERROR: ERROR writing new Excel file: {write_error}")
                print(f"   WARNING: Error type: {type(write_error).__name__}")
                import traceback
                traceback.print_exc()
                return module_name
        except PermissionError as e:
            print(f"   ERROR: ERROR: Permission denied - Excel file might be open in another program")
            print(f"   WARNING: Please close the Excel file and try again")
            print(f"   WARNING: Error details: {e}")
        except Exception as e:
            import traceback
            print(f"   ERROR: ERROR creating new Excel file: {e}")
            print(f"   WARNING: Error type: {type(e).__name__}")
            print(f"   WARNING: Traceback:")
            traceback.print_exc()
            print(f"   WARNING: Folder names were tracked but not written to Excel")
    else:
        print(f"\nWARNING: No folder names were tracked - skipping Excel file creation")
    
    # ================= FINAL COMPLETION =================
    # Record this module as executed so future module runs can grant their app_users access to its tables
    executed_list = list(set(state.get("executed_modules", [])) | {module_name})
    state["executed_modules"] = executed_list
    save_state(state)
    
    print("\n  COMPLETED SUCCESSFULLY")
    
    return module_name  # Return the processed module name


def get_executed_modules_from_folders():
    """
    Get module names that have schema or data batches (i.e. have been "executed").
    Used so future modules can grant their app_users access to these modules' tables.
    """
    base_path = os.path.abspath(OUTPUT_FOLDER)
    if not os.path.exists(base_path):
        return []
    import re
    modules = set()
    for item in os.listdir(base_path):
        if not os.path.isdir(os.path.join(base_path, item)) or not item.startswith("migrations_"):
            continue
        if "_schema_batch_" not in item.lower() and "_data_batch_" not in item.lower():
            continue
        match = re.match(r'migrations_\d{5}_(.+?)_\d{3,5}_', item.lower())
        if match:
            modules.add(match.group(1))
    return sorted(list(modules))


def get_available_modules_from_folders():
    """Get all unique module names from existing migration folders."""
    base_path = os.path.abspath(OUTPUT_FOLDER)
    if not os.path.exists(base_path):
        return []
    
    modules = set()
    import re
    
    for item in os.listdir(base_path):
        if os.path.isdir(os.path.join(base_path, item)) and item.startswith("migrations_"):
            # Extract module name from folder name
            # Pattern: migrations_<5-digits>_<module>_<4-digits>_... (new format)
            # Also support 5-digit screen numbers for backward compatibility
            match = re.match(r'migrations_\d{5}_(.+?)_\d{4}_', item.lower())
            if not match:
                # Fallback: try 5-digit screen number (for old folders)
                match = re.match(r'migrations_\d{5}_(.+?)_\d{5}_', item.lower())
            if match:
                module_name = match.group(1)
                modules.add(module_name)
    
    return sorted(list(modules))


def delete_module_folders(module_name):
    """Delete all migration folders for a specific module.
    Folder format: migrations_<5-digit>_<module>_<4-digit-screen>_<screen_name>_<type>_batch_<migration-number>
    The module name may contain underscores, so we need to extract it correctly.
    """
    base_path = os.path.abspath(OUTPUT_FOLDER)
    if not os.path.exists(base_path):
        print(f"       Base folder not found: {base_path}")
        return False
    
    deleted_count = 0
    deleted_folders = []
    
    # Normalize module name for comparison
    module_normalized = module_name.lower().replace(" ", "_")
    
    # Find all folders matching the module name
    for item in os.listdir(base_path):
        item_path = os.path.join(base_path, item)
        if os.path.isdir(item_path) and item.startswith("migrations_"):
            # Folder format: migrations_<5-digit-sequence>_<module>_<4-digit-screen>_<screen_name>_<type-name>_batch_<migration-number>
            # Example: migrations_00055_risk_management_0001_scope_schema_batch_001
            # Order: 1. sequence, 2. screen_order, 3. type_name (schema/data/permission), 4. batch
            # Use regex to extract module name reliably (handles underscores in module name)
            # Pattern: migrations_<5-digits>_<module>_<4-digits>_...
            # The module name is everything between the sequence number and the screen number
            # Improved regex to catch both standard and external permission folders
            # 1. Standard: migrations_00001_module_0001_...
            # 2. External: migrations_00003_module_external_...
            match = re.match(r'migrations_\d{5}_(.+?)(?:_\d{4,5}_|_external_)', item.lower())
            
            if match:
                folder_module = match.group(1).lower()
                
                # Compare module names
                if folder_module == module_normalized:
                    try:
                        import shutil
                        shutil.rmtree(item_path)
                        deleted_folders.append(item)
                        deleted_count += 1
                    except Exception as e:
                        print(f"     Error deleting {item}: {e}")
    
    if deleted_count > 0:
        print(f"\n     Deleted {deleted_count} folder(s) for module '{module_name}':")
        for folder in deleted_folders:
            print(f"      - {folder}")
        return True
    else:
        print(f"       No folders found for module '{module_name}'")
        print(f"       Searched for module pattern: '{module_normalized}'")
        print(f"       Base path: {base_path}")
        # Debug: list all migration folders found
        migration_folders = [item for item in os.listdir(base_path) if os.path.isdir(os.path.join(base_path, item)) and item.startswith("migrations_")]
        if migration_folders:
            print(f"       Found {len(migration_folders)} migration folder(s) in base path")
            # Show first few folder names for debugging
            for folder in migration_folders[:5]:
                match = re.match(r'migrations_\d{5}_(.+?)(?:_\d{4,5}_|_external_)', folder.lower())
                extracted_module = match.group(1) if match else "NO MATCH"
                print(f"      - {folder} -> extracted module: '{extracted_module}'")
        else:
            print(f"       No migration folders found in base path")
        return False


def process_module_interactive(df):
    """Process a single module with interactive prompts."""
    # Process the module (main will ask for module name)
    try:
        processed_module = main(df)
        return processed_module
    except Exception as e:
        print(f"\n[ERROR] Error processing module: {e}")
        import traceback
        traceback.print_exc()
        return None


if __name__ == "__main__":
    # Load state and sync with existing folders
    state = load_state()
    
    # Sync state with actual folders to ensure accuracy
    state = sync_state_with_folders(state)
    save_state(state)
    
    # Get existing batch numbers for display
    existing_batches = scan_existing_batch_numbers()
    current_batch = state.get("last_batch_number", 0)
    next_batch = current_batch + 1
    
    # Check if batch 1 folder already exists
    output_path = os.path.abspath(OUTPUT_FOLDER)
    batch_1_exists = False
    if os.path.exists(output_path):
        for item in os.listdir(output_path):
            if item.startswith("migrations_00001_"):
                batch_1_exists = True
                break
    
    # Display current state
    print(f"\n{'='*70}")
    print(f"  BATCH NUMBER STATUS")
    print(f"{'='*70}")
    if existing_batches:
        print(f"  Found {len(existing_batches)} existing migration folder(s)")
        print(f"  Batch numbers in use: {min(existing_batches):05d} to {max(existing_batches):05d}")
        if 1 not in existing_batches:
            print(f"  WARNING: Batch 00001 is missing! Next batch will be: {next_batch:05d}")
        else:
            print(f"  Next available batch: {next_batch:05d}")
    else:
        print(f"  No existing migration folders found")
        print(f"  Next batch will start from: 00001")
    print(f"{'='*70}\n")
    
    # Always prompt if batch counter is not 0 OR if batch 1 folder doesn't exist but counter > 0
    if current_batch > 0 and not batch_1_exists:
        print(f"\nWARNING: Batch counter is at {current_batch}, but no 'migrations_00001_' folder found!")
        print("   This means batch 00001 was used but the folder was deleted, or a lookup table consumed it.")
        print("   NOTE: The state has been synced with existing folders.")
        print("   If you want to reset and start from 00001, you can delete all folders and reset.")
        reset_choice = input(f"\nQUESTION: Reset batch counter to 0 to start fresh? (yes/no): ").strip().lower()
        if reset_choice in ['yes', 'y']:
            state["last_batch_number"] = 0
            save_state(state)
            print("   SUCCESS: Batch counter reset to 0 (next batch will be 00001)\n")
            print("   WARNING: If a lookup table is processed first, it will get batch 00001")
            print("           and your regular schema will get batch 00002.\n")
        else:
            print(f"   INFO: Keeping batch counter at {current_batch} (next batch will be {next_batch:05d})\n")
    elif current_batch == 0:
        print(f"\nINFO: Batch counter is at 0 - migrations will start from 00001\n")
    
    # Read Excel mapping once
    df = read_excel_mapping()
    
    # Process modules in a loop
    processed_modules = []
    
    while True:
        # Process a module
        processed_module = process_module_interactive(df)
        
        if processed_module:
            processed_modules.append(processed_module)
        
        # Ask if user wants to process another module
        print("\n" + "="*60)
        print("SUMMARY: Module Processing Complete")
        print("="*60)
        
        next_module = input("\nQUESTION: Do you want to process another module? (yes/no): ").strip().lower()
        
        if next_module in ['yes', 'y']:
            # User wants to process another module
            continue
        else:
            # User doesn't want to process another module
            if processed_modules:
                print(f"\nDONE: Processed {len(processed_modules)} module(s): {', '.join(processed_modules)}")
                
                # Global constraints prompt removed as per user request
                
                delete_choice = input("\nQUESTION: Do you want to delete module folders? (yes/no): ").strip().lower()
                
                if delete_choice in ['yes', 'y']:
                    # Get all available modules from folders
                    available_modules = get_available_modules_from_folders()
                    
                    if not available_modules:
                        print("\n   WARNING: No migration folders found to delete")
                    else:
                        print("\nSUMMARY: Available modules in migration folders:")
                        for idx, module in enumerate(available_modules, start=1):
                            print(f"   {idx}. {module}")
                        
                        print("\nTIP: You can select multiple modules by entering numbers separated by commas (e.g., 1,3,5)")
                        print("   Or enter 'all' to delete all modules")
                        
                        selection = input("\nQUESTION: Which module(s) do you want to delete? (enter numbers or 'all'): ").strip().lower()
                        
                        if selection == 'all':
                            # Delete all modules
                            selected_modules = available_modules
                        else:
                            # Parse multi-select input
                            try:
                                selected_indices = [int(x.strip()) for x in selection.split(',')]
                                selected_modules = []
                                for idx in selected_indices:
                                    if 1 <= idx <= len(available_modules):
                                        selected_modules.append(available_modules[idx - 1])
                                    else:
                                        print(f"   WARNING: Invalid selection: {idx} (skipping)")
                                
                                if not selected_modules:
                                    print("\n   WARNING: No valid modules selected. Skipping deletion.")
                                    selected_modules = None
                            except ValueError:
                                print("\n   WARNING: Invalid input. Please enter numbers separated by commas or 'all'.")
                                selected_modules = None
                        
                        if selected_modules:
                            print(f"\nDELETING: Deleting folders for {len(selected_modules)} module(s)...")
                            for module in selected_modules:
                                delete_module_folders(module)
                            print("\nSUCCESS: Deletion complete")
                else:
                    print("\nSUCCESS: Keeping all module folders")
            else:
                print("\nSUCCESS: No modules were processed")
            
            print("\n  Exiting...")
            break
