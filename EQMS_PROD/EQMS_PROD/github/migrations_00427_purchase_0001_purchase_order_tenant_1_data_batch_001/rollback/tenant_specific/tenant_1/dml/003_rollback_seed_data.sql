-- Rollback: Delete seed data from file 004_ABAC_CONFIGURATION.sql
-- Original file: 004_ABAC_CONFIGURATION.sql
-- Seed data file: 003_seed_data.sql
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

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 122 AND fk_eqms_menu_lk_id = 305 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 116 AND fk_eqms_menu_lk_id = 310 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 164 AND fk_eqms_menu_lk_id = 308 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 116 AND fk_eqms_menu_lk_id = 212 AND status = 1;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 164 AND form_name = 'Record Generation Purchasing Information' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'record_generation_purchasing_information';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 116 AND form_name = 'Purchase Order' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false;

END $$;
