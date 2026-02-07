-- Rollback: Delete seed data from file 004_ABAC_CONFIGURATION.sql
-- Original file: 004_ABAC_CONFIGURATION.sql
-- Seed data file: 002_seed_data.sql
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
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 76 AND fk_eqms_menu_lk_id = 251 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 54 AND fk_eqms_menu_lk_id = 252 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 55 AND fk_eqms_menu_lk_id = 247 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 76 AND fk_eqms_menu_lk_id = 41 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 74 AND fk_eqms_menu_lk_id = 123 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 73 AND fk_eqms_menu_lk_id = 122 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 72 AND fk_eqms_menu_lk_id = 121 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 71 AND fk_eqms_menu_lk_id = 120 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 70 AND fk_eqms_menu_lk_id = 119 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 69 AND fk_eqms_menu_lk_id = 118 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 68 AND fk_eqms_menu_lk_id = 117 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 67 AND fk_eqms_menu_lk_id = 116 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 66 AND fk_eqms_menu_lk_id = 115 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 65 AND fk_eqms_menu_lk_id = 114 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 64 AND fk_eqms_menu_lk_id = 113 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 54 AND fk_eqms_menu_lk_id = 42 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 63 AND fk_eqms_menu_lk_id = 112 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 62 AND fk_eqms_menu_lk_id = 130 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 61 AND fk_eqms_menu_lk_id = 129 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 60 AND fk_eqms_menu_lk_id = 128 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 59 AND fk_eqms_menu_lk_id = 127 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 58 AND fk_eqms_menu_lk_id = 126 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 57 AND fk_eqms_menu_lk_id = 125 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 55 AND fk_eqms_menu_lk_id = 43 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 53 AND fk_eqms_menu_lk_id = 40 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 51 AND fk_eqms_menu_lk_id = 124 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 52 AND fk_eqms_menu_lk_id = 39 AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 255 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 256 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 257 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 258 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 259 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 260 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 261 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 262 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 263 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 264 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 265 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 266 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 267 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 268 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 269 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 270 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 271 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 272 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 273 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 274 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 275 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 276 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 277 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 278 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 278 AND fk_eqms_form_id = 54 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 277 AND fk_eqms_form_id = 54 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 276 AND fk_eqms_form_id = 54 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 275 AND fk_eqms_form_id = 54 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 274 AND fk_eqms_form_id = 54 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 273 AND fk_eqms_form_id = 54 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 272 AND fk_eqms_form_id = 55 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 271 AND fk_eqms_form_id = 55 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 270 AND fk_eqms_form_id = 55 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 269 AND fk_eqms_form_id = 55 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 268 AND fk_eqms_form_id = 55 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 267 AND fk_eqms_form_id = 55 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 266 AND fk_eqms_form_id = 53 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 265 AND fk_eqms_form_id = 53 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 264 AND fk_eqms_form_id = 53 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 263 AND fk_eqms_form_id = 53 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 262 AND fk_eqms_form_id = 53 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 261 AND fk_eqms_form_id = 53 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 260 AND fk_eqms_form_id = 52 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 259 AND fk_eqms_form_id = 52 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 258 AND fk_eqms_form_id = 52 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 257 AND fk_eqms_form_id = 52 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 256 AND fk_eqms_form_id = 52 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 255 AND fk_eqms_form_id = 52 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND form_name = 'Declaration of Conformity' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'declaration_of_conformity';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND form_name = 'Contract Activities' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'contract_activities';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND form_name = 'Internal Audit/ Self Inspection' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'internal_audit/_self_inspection';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND form_name = 'Device Complaints & FSCA' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'device_complaints_&_fsca';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND form_name = 'Documentation' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'documentation';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND form_name = 'Storage' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'storage';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND form_name = 'Quality Assuranece' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'quality_assuranece';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND form_name = 'Production' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'production';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 67 AND form_name = 'Sanitation' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'sanitation';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 66 AND form_name = 'Equipment' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'equipment';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 65 AND form_name = 'Premises and Facilities' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'premises_and_facilities';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 64 AND form_name = 'Personnel' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'personnel';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 63 AND form_name = 'General Information' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'general_information';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 62 AND form_name = 'V&V Medical Device' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'v&v_medical_device';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 61 AND form_name = 'Risk & Control Summary' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'risk_&_control_summary';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 60 AND form_name = 'Essential Principles CheckList' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'essential_principles_checklist';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND form_name = 'Design & Mfg Info' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'design_&_mfg_info';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND form_name = 'Labelling' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'labelling';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND form_name = 'Description & Specs' AND status = 1 AND fk_eqms_form_type_lk_id = 3 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'description_&_specs';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND form_name = 'Device Master' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND form_name = 'Plant Master' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND form_name = 'Manufacture License' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND form_name = 'Test License' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND form_name = 'Executive Summary' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false;

-- Delete from organization.eqms_module
DELETE FROM organization.eqms_module WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND module_name = 'Regulation' AND module_type = 1 AND module_slug = 'regulation' AND status = 1;

END $$;
