-- Rollback: Delete seed data from file 012_NOMENCLATURE_SPECIFICATION_DATA_data.sql
-- Original file: 012_NOMENCLATURE_SPECIFICATION_DATA_data.sql
-- Seed data file: 008_seed_data.sql
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

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND fk_eqms_entity_nomenclature_mapping_id = 80 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND fk_eqms_entity_nomenclature_mapping_id = 79 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND fk_eqms_entity_nomenclature_mapping_id = 73 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_entity_nomenclature_mapping_id = 29 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_entity_nomenclature_mapping_id = 28 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_entity_nomenclature_mapping_id = 27 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_entity_nomenclature_mapping_id = 26 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_entity_nomenclature_mapping_id = 25 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_entity_nomenclature_mapping_id = 24 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_entity_nomenclature_mapping_id = 23 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_entity_nomenclature_mapping_id = 22 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_entity_nomenclature_mapping_id = 21 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_entity_nomenclature_mapping_id = 20 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_entity_nomenclature_mapping_id = 19 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_entity_nomenclature_mapping_id = 18 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_entity_nomenclature_mapping_id = 17 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_entity_nomenclature_mapping_id = 16 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_entity_nomenclature_mapping_id = 15 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_entity_nomenclature_mapping_id = 14 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_entity_nomenclature_mapping_id = 13 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_entity_nomenclature_mapping_id = 12 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_entity_nomenclature_mapping_id = 11 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_entity_nomenclature_mapping_id = 10 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_entity_nomenclature_mapping_id = 9 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_entity_nomenclature_mapping_id = 8 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_entity_nomenclature_mapping_id = 7 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_entity_nomenclature_mapping_id = 6 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_entity_nomenclature_mapping_id = 5 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_entity_nomenclature_mapping_id = 4 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_entity_nomenclature_mapping_id = 3 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_entity_nomenclature_mapping_id = 2 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_entity_nomenclature_mapping_id = 1 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'dnd.eqms_project' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 80 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 79 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 73 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 29 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 28 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 27 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 26 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 25 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 24 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 23 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 22 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 21 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 20 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 19 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 18 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 17 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 16 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 15 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 14 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 13 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 12 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 11 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 10 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 9 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 8 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 7 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 6 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 5 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 4 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 3 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 2 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 1 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND fk_eqms_nomenclature_name_part_id = 286 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND fk_eqms_nomenclature_name_part_id = 283 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND fk_eqms_nomenclature_name_part_id = 260 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_nomenclature_name_part_id = 85 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_nomenclature_name_part_id = 82 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_nomenclature_name_part_id = 79 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_nomenclature_name_part_id = 76 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_nomenclature_name_part_id = 73 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_nomenclature_name_part_id = 70 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_nomenclature_name_part_id = 67 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_nomenclature_name_part_id = 64 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_nomenclature_name_part_id = 61 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_nomenclature_name_part_id = 58 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_nomenclature_name_part_id = 55 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_nomenclature_name_part_id = 52 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_nomenclature_name_part_id = 49 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_nomenclature_name_part_id = 46 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_nomenclature_name_part_id = 43 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_nomenclature_name_part_id = 40 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_nomenclature_name_part_id = 37 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_nomenclature_name_part_id = 34 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_nomenclature_name_part_id = 31 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_nomenclature_name_part_id = 28 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_nomenclature_name_part_id = 25 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_nomenclature_name_part_id = 22 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_nomenclature_name_part_id = 19 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_nomenclature_name_part_id = 16 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_nomenclature_name_part_id = 13 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_nomenclature_name_part_id = 10 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_nomenclature_name_part_id = 7 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_nomenclature_name_part_id = 4 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_nomenclature_name_part_id = 1 AND related_table = 'dnd.eqms_project' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 32 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 31 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 30 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 29 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 28 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 27 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 26 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 25 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 24 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 23 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 22 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 21 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 20 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 19 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 18 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 17 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 16 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 15 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 14 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 13 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 12 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 11 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 10 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 9 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 8 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 7 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 6 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 5 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 4 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 3 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 2 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_counters
DELETE FROM organization.eqms_nomenclature_sequence_counters WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_sequence_def_id = 1 AND scope_key_value = 'DEFAULT' AND current_value = 0 AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 80 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 79 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 73 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 29 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 28 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 27 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 26 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 25 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 24 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 23 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 22 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 21 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 20 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 19 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 18 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 17 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 16 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 15 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 14 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 13 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 12 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 11 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 10 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 9 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 8 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 7 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 6 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 5 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 4 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 3 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 2 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 1 AND delimiter = '_' AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 288 AND fk_eqms_entity_template_id = 80 AND part_order = 3 AND fk_eqms_sequence_def_id = 32 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 287 AND fk_eqms_entity_template_id = 80 AND part_value = 'standards' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 286 AND fk_eqms_entity_template_id = 80 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 285 AND fk_eqms_entity_template_id = 79 AND part_order = 3 AND fk_eqms_sequence_def_id = 31 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 284 AND fk_eqms_entity_template_id = 79 AND part_value = 'alarms' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 283 AND fk_eqms_entity_template_id = 79 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 262 AND fk_eqms_entity_template_id = 73 AND part_order = 3 AND fk_eqms_sequence_def_id = 30 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 261 AND fk_eqms_entity_template_id = 73 AND part_value = 'intended-use' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 260 AND fk_eqms_entity_template_id = 73 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 87 AND fk_eqms_entity_template_id = 29 AND part_order = 3 AND fk_eqms_sequence_def_id = 29 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND fk_eqms_entity_template_id = 29 AND part_value = 'functional-specifications' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND fk_eqms_entity_template_id = 29 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 84 AND fk_eqms_entity_template_id = 28 AND part_order = 3 AND fk_eqms_sequence_def_id = 28 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 83 AND fk_eqms_entity_template_id = 28 AND part_value = 'user-and-patient-requirements' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 82 AND fk_eqms_entity_template_id = 28 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 81 AND fk_eqms_entity_template_id = 27 AND part_order = 3 AND fk_eqms_sequence_def_id = 27 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND fk_eqms_entity_template_id = 27 AND part_value = 'physical-characteristics' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND fk_eqms_entity_template_id = 27 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND fk_eqms_entity_template_id = 26 AND part_order = 3 AND fk_eqms_sequence_def_id = 26 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND fk_eqms_entity_template_id = 26 AND part_value = 'power-supply' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND fk_eqms_entity_template_id = 26 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND fk_eqms_entity_template_id = 25 AND part_order = 3 AND fk_eqms_sequence_def_id = 25 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND fk_eqms_entity_template_id = 25 AND part_value = 'usability-interface-specifications' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND fk_eqms_entity_template_id = 25 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND fk_eqms_entity_template_id = 24 AND part_order = 3 AND fk_eqms_sequence_def_id = 24 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND fk_eqms_entity_template_id = 24 AND part_value = 'communication-protocol' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND fk_eqms_entity_template_id = 24 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND fk_eqms_entity_template_id = 23 AND part_order = 3 AND fk_eqms_sequence_def_id = 23 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND fk_eqms_entity_template_id = 23 AND part_value = 'environmental-specifications' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 67 AND fk_eqms_entity_template_id = 23 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 66 AND fk_eqms_entity_template_id = 22 AND part_order = 3 AND fk_eqms_sequence_def_id = 22 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 65 AND fk_eqms_entity_template_id = 22 AND part_value = 'software-requirements' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 64 AND fk_eqms_entity_template_id = 22 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 63 AND fk_eqms_entity_template_id = 21 AND part_order = 3 AND fk_eqms_sequence_def_id = 21 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 62 AND fk_eqms_entity_template_id = 21 AND part_value = 'labelling-and-packaging-requirements' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 61 AND fk_eqms_entity_template_id = 21 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 60 AND fk_eqms_entity_template_id = 20 AND part_order = 3 AND fk_eqms_sequence_def_id = 20 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND fk_eqms_entity_template_id = 20 AND part_value = 'storage-&-handling-requirements' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND fk_eqms_entity_template_id = 20 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND fk_eqms_entity_template_id = 19 AND part_order = 3 AND fk_eqms_sequence_def_id = 19 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND fk_eqms_entity_template_id = 19 AND part_value = 'manufacturing-process' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND fk_eqms_entity_template_id = 19 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND fk_eqms_entity_template_id = 18 AND part_order = 3 AND fk_eqms_sequence_def_id = 18 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND fk_eqms_entity_template_id = 18 AND part_value = 'installation-requirements' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND fk_eqms_entity_template_id = 18 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND fk_eqms_entity_template_id = 17 AND part_order = 3 AND fk_eqms_sequence_def_id = 17 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND fk_eqms_entity_template_id = 17 AND part_value = 'servicing-requirements' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND fk_eqms_entity_template_id = 17 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND fk_eqms_entity_template_id = 16 AND part_order = 3 AND fk_eqms_sequence_def_id = 16 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND fk_eqms_entity_template_id = 16 AND part_value = 'risk-control-measures' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND fk_eqms_entity_template_id = 16 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND fk_eqms_entity_template_id = 15 AND part_order = 3 AND fk_eqms_sequence_def_id = 15 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND fk_eqms_entity_template_id = 15 AND part_value = 'adverse-events-design-input' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND fk_eqms_entity_template_id = 15 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND fk_eqms_entity_template_id = 14 AND part_order = 3 AND fk_eqms_sequence_def_id = 14 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND fk_eqms_entity_template_id = 14 AND part_value = 'references-from-the-previous-design' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND fk_eqms_entity_template_id = 14 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND fk_eqms_entity_template_id = 13 AND part_order = 3 AND fk_eqms_sequence_def_id = 13 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_entity_template_id = 13 AND part_value = 'training-requirements-for-customers' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND fk_eqms_entity_template_id = 13 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_entity_template_id = 12 AND part_order = 3 AND fk_eqms_sequence_def_id = 12 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_entity_template_id = 12 AND part_value = 'lifetime-of-the-device' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_entity_template_id = 12 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_entity_template_id = 11 AND part_order = 3 AND fk_eqms_sequence_def_id = 11 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_entity_template_id = 11 AND part_value = 'sterilization-requirements' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_entity_template_id = 11 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_entity_template_id = 10 AND part_order = 3 AND fk_eqms_sequence_def_id = 10 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_entity_template_id = 10 AND part_value = 'reliability-requirements' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_entity_template_id = 10 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_entity_template_id = 9 AND part_order = 3 AND fk_eqms_sequence_def_id = 9 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_entity_template_id = 9 AND part_value = 'toxicity-&-biocompatability' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_entity_template_id = 9 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_entity_template_id = 8 AND part_order = 3 AND fk_eqms_sequence_def_id = 8 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_entity_template_id = 8 AND part_value = 'accessories-&-consumables' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_entity_template_id = 8 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_entity_template_id = 7 AND part_order = 3 AND fk_eqms_sequence_def_id = 7 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_entity_template_id = 7 AND part_value = 'other-device-compatibility' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_entity_template_id = 7 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_entity_template_id = 6 AND part_order = 3 AND fk_eqms_sequence_def_id = 6 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_entity_template_id = 6 AND part_value = 'other-requirements' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_entity_template_id = 6 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_entity_template_id = 5 AND part_order = 3 AND fk_eqms_sequence_def_id = 5 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_entity_template_id = 5 AND part_value = 'regulations' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_entity_template_id = 5 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_entity_template_id = 4 AND part_order = 3 AND fk_eqms_sequence_def_id = 4 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_entity_template_id = 4 AND part_value = 'safety' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_entity_template_id = 4 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_entity_template_id = 3 AND part_order = 3 AND fk_eqms_sequence_def_id = 3 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_entity_template_id = 3 AND part_value = 'statutory' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_entity_template_id = 3 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_entity_template_id = 2 AND part_order = 3 AND fk_eqms_sequence_def_id = 2 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_entity_template_id = 2 AND part_value = 'shelf-life' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_entity_template_id = 2 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_entity_template_id = 1 AND part_order = 3 AND fk_eqms_sequence_def_id = 1 AND fk_eqms_nomenclature_part_type_id = 4 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_entity_template_id = 1 AND part_value = 'performance-specifications' AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_entity_template_id = 1 AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND sequence_name = 'STANDARDS_SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND sequence_name = 'ALARMS_SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND sequence_name = 'INTENDED-USE_SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND sequence_name = 'FUNCTIONAL-SPECIFICATIONS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND sequence_name = 'USER-AND-PATIENT-REQUIREMENTS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND sequence_name = 'PHYSICAL-CHARACTERISTICS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND sequence_name = 'POWER-SUPPLY_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND sequence_name = 'USABILITY-INTERFACE-SPECIFICATIONS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND sequence_name = 'COMMUNICATION-PROTOCOL_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND sequence_name = 'ENVIRONMENTAL-SPECIFICATIONS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND sequence_name = 'SOFTWARE-REQUIREMENTS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND sequence_name = 'LABELLING-AND-PACKAGING-REQUIREMENTS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND sequence_name = 'STORAGE-&-HANDLING-REQUIREMENTS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND sequence_name = 'MANUFACTURING-PROCESS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND sequence_name = 'INSTALLATION-REQUIREMENTS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND sequence_name = 'SERVICING-REQUIREMENTS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND sequence_name = 'RISK-CONTROL-MEASURES_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND sequence_name = 'ADVERSE-EVENTS-DESIGN-INPUT_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND sequence_name = 'REFERENCES-FROM-THE-PREVIOUS-DESIGN_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND sequence_name = 'TRAINING-REQUIREMENTS-FOR-CUSTOMERS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND sequence_name = 'LIFETIME-OF-THE-DEVICE_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND sequence_name = 'STERILIZATION-REQUIREMENTS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND sequence_name = 'RELIABILITY-REQUIREMENTS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND sequence_name = 'TOXICITY-&-BIOCOMPATABILITY_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND sequence_name = 'ACCESSORIES-&-CONSUMABLES_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND sequence_name = 'OTHER-DEVICE-COMPATIBILITY_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND sequence_name = 'OTHER-REQUIREMENTS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND sequence_name = 'REGULATIONS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND sequence_name = 'SAFETY_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND sequence_name = 'STATUTORY_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND sequence_name = 'SHELF-LIFE_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_nomenclature_sequence_defs
DELETE FROM organization.eqms_nomenclature_sequence_defs WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND sequence_name = 'PERFORMANCE-SPECIFICATIONS_SPECIFICATION SEQUENCE' AND increment_by = 1 AND min_value = 1 AND max_value = 10000 AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'standards' AND entity_version = 1 AND slug = 'standards' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'alarms' AND entity_version = 1 AND slug = 'alarms' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'intended-use' AND entity_version = 1 AND slug = 'intended-use' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'functional-specifications' AND entity_version = 1 AND slug = 'functional-specifications' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'user-and-patient-requirements' AND entity_version = 1 AND slug = 'user-and-patient-requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'physical-characteristics' AND entity_version = 1 AND slug = 'physical-characteristics' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'power-supply' AND entity_version = 1 AND slug = 'power-supply' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'usability-interface-specifications' AND entity_version = 1 AND slug = 'usability-interface-specifications' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'communication-protocol' AND entity_version = 1 AND slug = 'communication-protocol' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'environmental-specifications' AND entity_version = 1 AND slug = 'environmental-specifications' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'software-requirements' AND entity_version = 1 AND slug = 'software-requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'labelling-and-packaging-requirements' AND entity_version = 1 AND slug = 'labelling-and-packaging-requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'storage-&-handling-requirements' AND entity_version = 1 AND slug = 'storage-&-handling-requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'manufacturing-process' AND entity_version = 1 AND slug = 'manufacturing-process' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'installation-requirements' AND entity_version = 1 AND slug = 'installation-requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'servicing-requirements' AND entity_version = 1 AND slug = 'servicing-requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'risk-control-measures' AND entity_version = 1 AND slug = 'risk-control-measures' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'adverse-events-design-input' AND entity_version = 1 AND slug = 'adverse-events-design-input' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'references-from-the-previous-design' AND entity_version = 1 AND slug = 'references-from-the-previous-design' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'training-requirements-for-customers' AND entity_version = 1 AND slug = 'training-requirements-for-customers' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'lifetime-of-the-device' AND entity_version = 1 AND slug = 'lifetime-of-the-device' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'sterilization-requirements' AND entity_version = 1 AND slug = 'sterilization-requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'reliability-requirements' AND entity_version = 1 AND slug = 'reliability-requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'toxicity-&-biocompatability' AND entity_version = 1 AND slug = 'toxicity-&-biocompatability' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'accessories-&-consumables' AND entity_version = 1 AND slug = 'accessories-&-consumables' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'other-device-compatibility' AND entity_version = 1 AND slug = 'other-device-compatibility' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'other-requirements' AND entity_version = 1 AND slug = 'other-requirements' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'regulations' AND entity_version = 1 AND slug = 'regulations' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'safety' AND entity_version = 1 AND slug = 'safety' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'statutory' AND entity_version = 1 AND slug = 'statutory' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'shelf-life' AND entity_version = 1 AND slug = 'shelf-life' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_nomenclature_category_id = 2 AND entity_title = 'performance-specifications' AND entity_version = 1 AND slug = 'performance-specifications' AND is_annexure = 'false' AND status = 1;

END $$;
