-- Rollback: Delete seed data from file 013_NOMENCLATURE_RECORD_GENERATION_data.sql
-- Original file: 013_NOMENCLATURE_RECORD_GENERATION_data.sql
-- Seed data file: 009_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 50 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 49 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 48 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 47 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 46 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 45 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 44 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 43 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 42 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 41 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 40 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 39 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 38 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 37 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 36 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 35 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 34 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 33 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 32 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 31 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 30 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND fk_eqms_entity_nomenclature_mapping_id = 50 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND fk_eqms_entity_nomenclature_mapping_id = 49 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND fk_eqms_entity_nomenclature_mapping_id = 48 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND fk_eqms_entity_nomenclature_mapping_id = 47 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND fk_eqms_entity_nomenclature_mapping_id = 46 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND fk_eqms_entity_nomenclature_mapping_id = 45 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND fk_eqms_entity_nomenclature_mapping_id = 44 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND fk_eqms_entity_nomenclature_mapping_id = 43 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND fk_eqms_entity_nomenclature_mapping_id = 42 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND fk_eqms_entity_nomenclature_mapping_id = 41 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND fk_eqms_entity_nomenclature_mapping_id = 40 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND fk_eqms_entity_nomenclature_mapping_id = 39 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_entity_nomenclature_mapping_id = 38 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND fk_eqms_entity_nomenclature_mapping_id = 37 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_entity_nomenclature_mapping_id = 36 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_entity_nomenclature_mapping_id = 35 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_entity_nomenclature_mapping_id = 34 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_entity_nomenclature_mapping_id = 33 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_entity_nomenclature_mapping_id = 32 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_entity_nomenclature_mapping_id = 31 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_entity_nomenclature_mapping_id = 30 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND fk_eqms_nomenclature_name_part_id = 169 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND fk_eqms_nomenclature_name_part_id = 165 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND fk_eqms_nomenclature_name_part_id = 161 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND fk_eqms_nomenclature_name_part_id = 157 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND fk_eqms_nomenclature_name_part_id = 153 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND fk_eqms_nomenclature_name_part_id = 149 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND fk_eqms_nomenclature_name_part_id = 145 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND fk_eqms_nomenclature_name_part_id = 141 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND fk_eqms_nomenclature_name_part_id = 137 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND fk_eqms_nomenclature_name_part_id = 133 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND fk_eqms_nomenclature_name_part_id = 129 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND fk_eqms_nomenclature_name_part_id = 125 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_nomenclature_name_part_id = 121 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND fk_eqms_nomenclature_name_part_id = 117 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_nomenclature_name_part_id = 113 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_nomenclature_name_part_id = 109 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_nomenclature_name_part_id = 105 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_nomenclature_name_part_id = 101 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_nomenclature_name_part_id = 97 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_nomenclature_name_part_id = 93 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_nomenclature_name_part_id = 89 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 171 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 167 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 163 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 159 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 155 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 151 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 147 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 143 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 139 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 135 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 131 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 127 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 123 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 119 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 115 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 111 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 107 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 103 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 99 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 95 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 91 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 171 AND fk_eqms_entity_template_id = 50 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 170 AND fk_eqms_entity_template_id = 50 AND part_value = 'product-life-declaration' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 169 AND fk_eqms_entity_template_id = 50 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 168 AND fk_eqms_entity_template_id = 50 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 167 AND fk_eqms_entity_template_id = 49 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 166 AND fk_eqms_entity_template_id = 49 AND part_value = 'design-verification-plan' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 165 AND fk_eqms_entity_template_id = 49 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 164 AND fk_eqms_entity_template_id = 49 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 163 AND fk_eqms_entity_template_id = 48 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 162 AND fk_eqms_entity_template_id = 48 AND part_value = 'design-inputs-to-output-traceability-matrix' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 161 AND fk_eqms_entity_template_id = 48 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 160 AND fk_eqms_entity_template_id = 48 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 159 AND fk_eqms_entity_template_id = 47 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 158 AND fk_eqms_entity_template_id = 47 AND part_value = 'design-transfer-checklist' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 157 AND fk_eqms_entity_template_id = 47 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 156 AND fk_eqms_entity_template_id = 47 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 155 AND fk_eqms_entity_template_id = 46 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 154 AND fk_eqms_entity_template_id = 46 AND part_value = 'design-review-report' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 153 AND fk_eqms_entity_template_id = 46 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 152 AND fk_eqms_entity_template_id = 46 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 151 AND fk_eqms_entity_template_id = 45 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 150 AND fk_eqms_entity_template_id = 45 AND part_value = 'design-output-file' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 149 AND fk_eqms_entity_template_id = 45 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 148 AND fk_eqms_entity_template_id = 45 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 147 AND fk_eqms_entity_template_id = 44 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 146 AND fk_eqms_entity_template_id = 44 AND part_value = 'design-history-file' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 145 AND fk_eqms_entity_template_id = 44 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 144 AND fk_eqms_entity_template_id = 44 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 143 AND fk_eqms_entity_template_id = 43 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 142 AND fk_eqms_entity_template_id = 43 AND part_value = 'design-verification-report-v-2' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 141 AND fk_eqms_entity_template_id = 43 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 140 AND fk_eqms_entity_template_id = 43 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 139 AND fk_eqms_entity_template_id = 42 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 138 AND fk_eqms_entity_template_id = 42 AND part_value = 'design-validation-plan' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 137 AND fk_eqms_entity_template_id = 42 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 136 AND fk_eqms_entity_template_id = 42 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 135 AND fk_eqms_entity_template_id = 41 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 134 AND fk_eqms_entity_template_id = 41 AND part_value = 'design-quality-plan' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 133 AND fk_eqms_entity_template_id = 41 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 132 AND fk_eqms_entity_template_id = 41 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 131 AND fk_eqms_entity_template_id = 40 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 130 AND fk_eqms_entity_template_id = 40 AND part_value = 'design-validation-report' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 129 AND fk_eqms_entity_template_id = 40 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 128 AND fk_eqms_entity_template_id = 40 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 127 AND fk_eqms_entity_template_id = 39 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 126 AND fk_eqms_entity_template_id = 39 AND part_value = 'design-input-adequacy-check-list' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 125 AND fk_eqms_entity_template_id = 39 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 124 AND fk_eqms_entity_template_id = 39 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 123 AND fk_eqms_entity_template_id = 38 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 122 AND fk_eqms_entity_template_id = 38 AND part_value = 'intended-use-format' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 121 AND fk_eqms_entity_template_id = 38 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 120 AND fk_eqms_entity_template_id = 38 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 119 AND fk_eqms_entity_template_id = 37 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 118 AND fk_eqms_entity_template_id = 37 AND part_value = 'design-project-plan-ver-3' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 117 AND fk_eqms_entity_template_id = 37 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 116 AND fk_eqms_entity_template_id = 37 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 115 AND fk_eqms_entity_template_id = 36 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 114 AND fk_eqms_entity_template_id = 36 AND part_value = 'design-input-requirements' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 113 AND fk_eqms_entity_template_id = 36 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 112 AND fk_eqms_entity_template_id = 36 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 111 AND fk_eqms_entity_template_id = 35 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 110 AND fk_eqms_entity_template_id = 35 AND part_value = 'pnd-project-review-report' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 109 AND fk_eqms_entity_template_id = 35 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 108 AND fk_eqms_entity_template_id = 35 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 107 AND fk_eqms_entity_template_id = 34 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 106 AND fk_eqms_entity_template_id = 34 AND part_value = 'product-need-document' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 105 AND fk_eqms_entity_template_id = 34 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 104 AND fk_eqms_entity_template_id = 34 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 103 AND fk_eqms_entity_template_id = 33 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 102 AND fk_eqms_entity_template_id = 33 AND part_value = 'product-realisation-plan' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 101 AND fk_eqms_entity_template_id = 33 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 100 AND fk_eqms_entity_template_id = 33 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 99 AND fk_eqms_entity_template_id = 32 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 98 AND fk_eqms_entity_template_id = 32 AND part_value = 'project-feasibility-report' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 97 AND fk_eqms_entity_template_id = 32 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 96 AND fk_eqms_entity_template_id = 32 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 95 AND fk_eqms_entity_template_id = 31 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 94 AND fk_eqms_entity_template_id = 31 AND part_value = 'high-level-requirements-product' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 93 AND fk_eqms_entity_template_id = 31 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 92 AND fk_eqms_entity_template_id = 31 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 91 AND fk_eqms_entity_template_id = 30 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 90 AND fk_eqms_entity_template_id = 30 AND part_value = 'project_list' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 89 AND fk_eqms_entity_template_id = 30 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 88 AND fk_eqms_entity_template_id = 30 AND part_value = 'PRJ' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 50 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 49 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 48 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 47 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 46 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 45 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 44 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 43 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 42 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 41 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 40 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 39 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 38 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 37 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 36 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 35 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 34 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 33 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 32 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 31 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 30 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-26 Product Life Declaration' AND entity_version = 1 AND slug = 'f-26_product_life_declaration' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-19 Design Verification Plan' AND entity_version = 1 AND slug = 'f-19_design_verification_plan' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-33 Design Inputs to Output Traceability Matrix' AND entity_version = 1 AND slug = 'f-33_design_inputs_to_output_traceability_matrix' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-24 Design Transfer Check List' AND entity_version = 1 AND slug = 'f-24_design_transfer_check_list' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-17 Design Review Report' AND entity_version = 1 AND slug = 'f-17_design_review_report' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-18 Design Output File' AND entity_version = 1 AND slug = 'f-18_design_output_file' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-12 Design History File' AND entity_version = 1 AND slug = 'f-12_design_history_file' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-20 Design Verifiction Report V 2' AND entity_version = 1 AND slug = 'f-20_design_verifiction_report_v_2' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-21 Design Validation Plan' AND entity_version = 1 AND slug = 'f-21_design_validation_plan' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-16 Design Quality Plan' AND entity_version = 1 AND slug = 'f-16_design_quality_plan' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-22 Design Validation Report' AND entity_version = 1 AND slug = 'f-22_design_validation_report' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-14 Design Input Adequacy Check List' AND entity_version = 1 AND slug = 'f-14_design_input_adequacy_check_list' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'Intended Use - Format' AND entity_version = 1 AND slug = 'intended_use_-_format' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-15 Design Project Plan Ver 3' AND entity_version = 1 AND slug = 'f-15_design_project_plan_ver_3' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-13 Design Input Requirements' AND entity_version = 1 AND slug = 'f-13_design_input_requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-02 PND Project Review Report' AND entity_version = 1 AND slug = 'f-02_pnd_project_review_report' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'MKG-F-01 Product Need Document' AND entity_version = 1 AND slug = 'mkg-f-01_product_need_document' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'KK-QP-14-F-04 Product Realisation Plan' AND entity_version = 1 AND slug = 'kk-qp-14-f-04_product_realisation_plan' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'F-03 Project Feasibility Report' AND entity_version = 1 AND slug = 'f-03_project_feasibility_report' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'High-Level-Requirements - Product' AND entity_version = 1 AND slug = 'high-level-requirements_-_product' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'L-01 Project List' AND entity_version = 1 AND slug = 'l-01_project_list' AND is_annexure = 'false' AND status = 1;

END $$;
