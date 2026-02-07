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

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 413 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 412 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 411 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 410 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 409 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 408 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = Form 100;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 407 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 406 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 405 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 404 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 403 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 402 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = Form 118;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 401 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 400 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 399 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 398 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 397 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 396 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = Form 98;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 395 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 394 AND requires_role_validation = false AND is_transition_action = false AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 393 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 392 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 391 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 390 AND requires_role_validation = false AND is_transition_action = true AND status = 1;

-- Delete from abac.eqms_form_control_actions
DELETE FROM abac.eqms_form_control_actions WHERE eqms_tenant_key = Form 101;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 413 AND fk_eqms_form_id = 100 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 412 AND fk_eqms_form_id = 100 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 411 AND fk_eqms_form_id = 100 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 410 AND fk_eqms_form_id = 100 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 409 AND fk_eqms_form_id = 100 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 408 AND fk_eqms_form_id = 100 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = Form 100;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 407 AND fk_eqms_form_id = 118 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 406 AND fk_eqms_form_id = 118 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 405 AND fk_eqms_form_id = 118 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 404 AND fk_eqms_form_id = 118 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 403 AND fk_eqms_form_id = 118 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 402 AND fk_eqms_form_id = 118 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = Form 118;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 401 AND fk_eqms_form_id = 98 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 400 AND fk_eqms_form_id = 98 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 399 AND fk_eqms_form_id = 98 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 398 AND fk_eqms_form_id = 98 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 397 AND fk_eqms_form_id = 98 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 396 AND fk_eqms_form_id = 98 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = Form 98;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 395 AND fk_eqms_form_id = 101 AND action_name = 'Save' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 394 AND fk_eqms_form_id = 101 AND action_name = 'Cancel' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 393 AND fk_eqms_form_id = 101 AND action_name = 'Reject' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 392 AND fk_eqms_form_id = 101 AND action_name = 'Approve' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 391 AND fk_eqms_form_id = 101 AND action_name = 'Submit For Review' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 390 AND fk_eqms_form_id = 101 AND action_name = 'Submit For Approval' AND status = 1;

-- Delete from abac.eqms_form_controls
DELETE FROM abac.eqms_form_controls WHERE eqms_tenant_key = Form 101;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 100 AND fk_eqms_menu_lk_id = 266 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 118 AND fk_eqms_menu_lk_id = 265 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 98 AND fk_eqms_menu_lk_id = 264 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 119 AND fk_eqms_menu_lk_id = 262 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 119 AND fk_eqms_menu_lk_id = 204 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 118 AND fk_eqms_menu_lk_id = 207 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 117 AND fk_eqms_menu_lk_id = 203 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 101 AND fk_eqms_menu_lk_id = 202 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 100 AND fk_eqms_menu_lk_id = 208 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 98 AND fk_eqms_menu_lk_id = 205 AND status = 1;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 119 AND form_name = 'Initiate Quotation' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'initiate_quotation';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 118 AND form_name = 'Delivery Dispatch' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'delivery_dispatch';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 117 AND form_name = 'Customer Feedback Criteria' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'customer_feedback_criteria';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 101 AND form_name = 'Sales Forecast' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'sales_forecast';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 100 AND form_name = 'Customer Feedback' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'customer_feedback';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 98 AND form_name = 'Order Acknowledgement' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'order_acknowledgement';

END $$;
