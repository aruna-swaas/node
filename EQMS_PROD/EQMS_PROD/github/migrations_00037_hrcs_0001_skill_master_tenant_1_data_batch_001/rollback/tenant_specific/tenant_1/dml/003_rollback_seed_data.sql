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
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 41 AND fk_eqms_menu_lk_id = 101 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 37 AND fk_eqms_menu_lk_id = 95 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 36 AND fk_eqms_menu_lk_id = 94 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 12 AND fk_eqms_menu_lk_id = 27 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 14 AND fk_eqms_menu_lk_id = 29 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 13 AND fk_eqms_menu_lk_id = 28 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 43 AND fk_eqms_menu_lk_id = 100 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 42 AND fk_eqms_menu_lk_id = 96 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 41 AND fk_eqms_menu_lk_id = 26 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 39 AND fk_eqms_menu_lk_id = 31 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 37 AND fk_eqms_menu_lk_id = 30 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 36 AND fk_eqms_menu_lk_id = 34 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 14 AND fk_eqms_menu_lk_id = 93 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 13 AND fk_eqms_menu_lk_id = 97 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 12 AND fk_eqms_menu_lk_id = 98 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 39 AND fk_eqms_menu_lk_id = 99 AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = 12 AND fk_eqms_organization_id = 13 AND fk_eqms_form_controls_id = 14 AND requires_role_validation = 36 AND is_transition_action = 37 AND status = 39;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 207 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 206 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 205 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 204 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 203 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 202 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 201 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 200 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 199 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 198 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 197 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 196 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 195 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 194 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 193 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 192 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 191 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 190 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = 12 AND fk_eqms_organization_id = 13 AND fk_eqms_form_id = 14;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 207 AND fk_eqms_form_id = 14 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 206 AND fk_eqms_form_id = 14 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 205 AND fk_eqms_form_id = 14 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 204 AND fk_eqms_form_id = 14 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 203 AND fk_eqms_form_id = 14 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 202 AND fk_eqms_form_id = 14 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 201 AND fk_eqms_form_id = 13 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 200 AND fk_eqms_form_id = 13 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 199 AND fk_eqms_form_id = 13 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 198 AND fk_eqms_form_id = 13 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 197 AND fk_eqms_form_id = 13 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 196 AND fk_eqms_form_id = 13 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 195 AND fk_eqms_form_id = 12 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 194 AND fk_eqms_form_id = 12 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 193 AND fk_eqms_form_id = 12 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 192 AND fk_eqms_form_id = 12 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 191 AND fk_eqms_form_id = 12 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 190 AND fk_eqms_form_id = 12 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND form_name = 'Individual Competency' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND form_name = 'Organization Chart' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND form_name = 'Role definition' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND form_name = 'Training Need' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND form_name = 'Induction' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND form_name = 'Training Effectiveness Evaluation' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND form_name = 'EMPLOYEE ONBOARDING' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND fk_eqms_entity_subscription_id = 2;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND form_name = 'CANDIDATE EVALUATION' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND fk_eqms_entity_subscription_id = 2;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND form_name = 'RESOURCE REQUISITION' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND fk_eqms_entity_subscription_id = 2;

-- Delete from organization.eqms_entity_subscription
DELETE FROM organization.eqms_entity_subscription WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_subscribed_module_id = 2 AND subscription_status = 1;

-- Delete from organization.eqms_module
DELETE FROM organization.eqms_module WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND module_name = 'HR' AND module_type = 1 AND module_slug = 'hr' AND status = 1;

END $$;
