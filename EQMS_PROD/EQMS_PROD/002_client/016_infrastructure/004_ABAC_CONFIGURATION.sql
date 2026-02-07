DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN 
--eqms_form
INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id, ref_id, slug)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Complaint', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 135, 'complaint'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Infrastructure Qualification', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 137, 'infrastructure_qualification'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Infrastructure Report', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 138, 'infrastructure_report'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Maintenance Plan', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 163, 'maintenance_plan'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Infrastructure Request', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 158, 'infrastructure_request'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Maintenance Report', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 159, 'maintenance_report'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Infrastructure Onboarding', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 162, 'infrastructure_onboarding');



--eqms_form_menu_mapping
INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by, modified_date, modified_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 135, 245, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 242, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 162, 239, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 240, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 244, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 313, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 315, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 319, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 162, 241, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 163, 318, 1, NOW(), 1, NULL, NULL);


INSERT INTO abac.eqms_form_controls (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, action_name, status, created_date, created_by, modified_date, modified_by, action_type, ref_id
) VALUES
--Infrastructure Request Form Controls
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 428),
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 429),
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 430),
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 431),
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 432),
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 433),
--Infrastructure Qualification Form Controls
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 434),
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 435),
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 436),
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 437),
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 438),
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 439),
-- maintenance report form controls
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 440),
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 441),
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 442),
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 443),
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 444),
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 445),
-- Raise a complaint form controls
(VAR_TENANT_KEY, VAR_ORG_ID, 135, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 446),
(VAR_TENANT_KEY, VAR_ORG_ID, 135, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 447),
(VAR_TENANT_KEY, VAR_ORG_ID, 135, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 448),
(VAR_TENANT_KEY, VAR_ORG_ID, 135, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 449),
(VAR_TENANT_KEY, VAR_ORG_ID, 135, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 450),
(VAR_TENANT_KEY, VAR_ORG_ID, 135, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 451);

INSERT INTO abac.eqms_form_control_actions (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id, requires_role_validation, is_transition_action, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 428, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 429, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 430, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 431, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 432, 'FALSE', 'FALSE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 433, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 434, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 435, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 436, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 437, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 438, 'FALSE', 'FALSE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 439, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 440, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 441, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 442, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 443, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 444, 'FALSE', 'FALSE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 445, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 446, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 447, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 448, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 449, 'FALSE', 'TRUE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 450, 'FALSE', 'FALSE', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 451, 'FALSE', 'TRUE', 1, NOW(), 1);


END $$;