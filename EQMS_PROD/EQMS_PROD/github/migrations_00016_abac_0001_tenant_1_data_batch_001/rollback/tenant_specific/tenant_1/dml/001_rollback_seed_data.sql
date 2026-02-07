-- Rollback: Delete seed data from file split_001_LOOKUP.sql
-- Original file: split_001_LOOKUP.sql
-- Seed data file: 001_seed_data.sql
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

-- Delete from abac.eqms_form_dependency_type_lk
DELETE FROM abac.eqms_form_dependency_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND dependency_type = 'custom' AND status = 1;

-- Delete from abac.eqms_form_dependency_type_lk
DELETE FROM abac.eqms_form_dependency_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND dependency_type = 'role_assignment' AND status = 1;

-- Delete from abac.eqms_form_dependency_type_lk
DELETE FROM abac.eqms_form_dependency_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND dependency_type = 'status';

-- Delete from abac.eqms_form_dependency_type_lk
DELETE FROM abac.eqms_form_dependency_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND dependency_type = 'completion' AND status = 1;

-- Delete from abac.eqms_form_type_lk
DELETE FROM abac.eqms_form_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND form_type = 'independent' AND status = 1;

-- Delete from abac.eqms_form_type_lk
DELETE FROM abac.eqms_form_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND form_type = 'conditional' AND status = 1;

-- Delete from abac.eqms_form_type_lk
DELETE FROM abac.eqms_form_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND form_type = 'workflow' AND status = 1;

-- Delete from abac.eqms_action_master_lk
DELETE FROM abac.eqms_action_master_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND action_name = 'Submit For Review' AND description = 'Used to Raise for a review' AND status = 1;

-- Delete from abac.eqms_action_master_lk
DELETE FROM abac.eqms_action_master_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND action_name = 'Save' AND description = 'Used to perform save any form' AND status = 1;

-- Delete from abac.eqms_action_master_lk
DELETE FROM abac.eqms_action_master_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND action_name = 'Uncheck' AND description = 'Uncheck a checkbox in the form' AND status = 1;

END $$;
