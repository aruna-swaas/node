-- Rollback: Delete seed data from file 005_DRAFT_SAVE.sql
-- Original file: 005_DRAFT_SAVE.sql
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

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND context_name = 'principle_checklist' AND status = 1 AND context_slug = 'principle_checklist';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND context_name = 'organization_site' AND status = 1 AND context_slug = 'organization_site';

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 78 AND fk_eqms_menu_lk_id = 163 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 77 AND fk_eqms_menu_lk_id = 164 AND status = 1;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND form_name = 'Add Test License' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'add_test_license';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND form_name = 'Add Manufacturing License' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'add_manufacturing_license';

END $$;
