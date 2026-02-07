-- Rollback: Delete seed data from file 009_ABAC_CONFIGURATION.sql
-- Original file: 009_ABAC_CONFIGURATION.sql
-- Seed data file: 018_seed_data.sql
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
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 48 AND fk_eqms_menu_lk_id = 46 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 48 AND fk_eqms_menu_lk_id = 6 AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 254 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 253 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 252 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 251 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 250 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 249 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 254 AND fk_eqms_form_id = 48 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 253 AND fk_eqms_form_id = 48 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 252 AND fk_eqms_form_id = 48 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 251 AND fk_eqms_form_id = 48 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 250 AND fk_eqms_form_id = 48 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 249 AND fk_eqms_form_id = 48 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND form_name = 'User onboarding' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = true AND completion_tracking = false;

-- Delete from organization.eqms_module
DELETE FROM organization.eqms_module WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND module_name = 'Organization' AND module_type = 1 AND module_slug = 'organization' AND status = 1;

END $$;
