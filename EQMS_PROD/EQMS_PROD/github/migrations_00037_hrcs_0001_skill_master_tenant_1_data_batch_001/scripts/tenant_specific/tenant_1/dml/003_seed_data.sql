DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

INSERT INTO organization.eqms_module (eqms_tenant_key, fk_eqms_organization_id, ref_id, module_name, module_type, module_slug, status, created_date, created_by)
VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 2,'HR', 1, 'hr', 1, NOW(), 1);  

INSERT INTO organization.eqms_entity_subscription (eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_subscribed_module_id, subscription_status, status, created_date, created_by)
VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 2, 2, 1, 1, NOW(), 1);



-- eqms_form
-- HR Forms Insert Statements based on eqms_form_hr.csv
-- These are the correct HR form configurations

INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id, ref_id, slug) 
VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'RESOURCE REQUISITION', 1, NOW(), 1, NULL, NULL, 1, false, false, 2, 12, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'CANDIDATE EVALUATION', 1, NOW(), 1, NULL, NULL, 1, false, false, 2, 13, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'EMPLOYEE ONBOARDING', 1, NOW(), 1, NULL, NULL, 1, false, false, 2, 14, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Training Effectiveness Evaluation', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 36, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Induction', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 37, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Training Need', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 39, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Role definition', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 41, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Organization Chart', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 42, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Individual Competency', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 43, NULL);

--eqms_form_controls

INSERT INTO abac.eqms_form_controls (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, action_name, status, created_date, created_by, modified_date, modified_by, action_type, ref_id)
VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 190),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 191),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 192),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 193),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 194),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 195),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 196),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 197),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 198),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 199),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 200),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 201),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 202),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 203),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 204),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 205),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 206),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 207);

--eqms_form_control_actions


-- HR Form Control Actions Insert Statements based on hr-form-control-action.csv
-- Form control actions for HR forms (12, 13, 14)

INSERT INTO abac.eqms_form_control_actions (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id, requires_role_validation, is_transition_action, status, created_date, created_by, modified_date, modified_by)
VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 190, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 191, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 192, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 193, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 194, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 195, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 196, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 197, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 198, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 199, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 200, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 201, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 202, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 203, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 204, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 205, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 206, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 207, false, true, 1, NOW(), 1, NULL, NULL);

-- eqms_form_menu_mapping
-- HR Form Menu Mapping Insert Statements based on hr-form-menu-mapping.csv
-- Form menu mappings for HR forms (12, 13, 14, 36, 37, 39, 41, 42, 43)

INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by, modified_date, modified_by)
VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 99, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 98, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 97, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 93, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 34, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 30, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 31, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 26, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 96, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 43, 100, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 28, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 29, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 27, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 94, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 95, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 101, 1, NOW(), 1, NULL, NULL);

END $$;