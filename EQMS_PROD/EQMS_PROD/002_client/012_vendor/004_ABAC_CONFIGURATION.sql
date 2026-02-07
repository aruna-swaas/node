DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
--Vendor  Module
INSERT INTO organization.eqms_module (eqms_tenant_key, fk_eqms_organization_id, ref_id, module_name, module_type, module_slug, status, created_date, created_by)
VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 6,'Vendor', 1, 'vendor', 1, NOW(), 1); 

INSERT INTO organization.eqms_entity_subscription (eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_subscribed_module_id, subscription_status, status, created_date, created_by)
VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 6, 6, 1, 1, NOW(), 1);

INSERT INTO abac.eqms_form (
  eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id, ref_id, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Vendor agreement checklist', 1, NOW(), 1, 3, 'FALSE', 'FALSE', NULL, 96, 'vendor_agreement_checklist'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Vendor selection criteria', 1, NOW(), 1, 3, 'FALSE', 'FALSE', NULL, 127, 'vendor_selection_criteria'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Vendor Re Evaluation Criteria', 1, NOW(), 1, 1, false, false, NULL, 120, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sample Inspection Criteria', 1, NOW(), 1, 1, false, false, NULL, 121, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sample Inspection ', 1, NOW(), 1, 1, false, false, NULL, 139, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Vendor Evaluation', 1, NOW(), 1, 1, 'false', 'false', null, 122, null),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Part Category', 1, NOW(), 1, 1, 'false', 'false', null, 123, null),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Vendor Re Evaluation', 1, NOW(), 1, 1, 'false', 'false', null, 124, 'vendor_re_evaluation'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Vendor List', 1, NOW(), 1, 3, 'FALSE', 'FALSE', NULL, 125, 'vendor_list'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sample Order', 1, NOW(), 1, 3, 'FALSE', 'FALSE', NULL, 126, 'sample_order');



INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by, modified_date, modified_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 120, 217, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 121, 218, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 96, 195, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 139, 194, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 122, 192, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 123, 199, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 124, 196, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 125, 193, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 126, 191, 1, NOW(), 1, NULL, NULL);

-- eqms_form_controls
-- Vendor Form Controls Insert Statements
-- Form controls for Vendor workflow-enabled forms (122, 124, 139)
-- Maximum ref_id across all modules: 371, starting from 372

INSERT INTO abac.eqms_form_controls (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, action_name, status, created_date, created_by, modified_date, modified_by, action_type, ref_id)
VALUES
-- Vendor Evaluation (Form 122)
(VAR_TENANT_KEY, VAR_ORG_ID, 122, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 372),
(VAR_TENANT_KEY, VAR_ORG_ID, 122, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 373),
(VAR_TENANT_KEY, VAR_ORG_ID, 122, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 374),
(VAR_TENANT_KEY, VAR_ORG_ID, 122, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 375),
(VAR_TENANT_KEY, VAR_ORG_ID, 122, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 376),
(VAR_TENANT_KEY, VAR_ORG_ID, 122, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 377),
-- Vendor Re Evaluation (Form 124)
(VAR_TENANT_KEY, VAR_ORG_ID, 124, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 378),
(VAR_TENANT_KEY, VAR_ORG_ID, 124, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 379),
(VAR_TENANT_KEY, VAR_ORG_ID, 124, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 380),
(VAR_TENANT_KEY, VAR_ORG_ID, 124, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 381),
(VAR_TENANT_KEY, VAR_ORG_ID, 124, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 382),
(VAR_TENANT_KEY, VAR_ORG_ID, 124, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 383),
-- Sample Inspection (Form 139)
(VAR_TENANT_KEY, VAR_ORG_ID, 139, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 384),
(VAR_TENANT_KEY, VAR_ORG_ID, 139, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 385),
(VAR_TENANT_KEY, VAR_ORG_ID, 139, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 386),
(VAR_TENANT_KEY, VAR_ORG_ID, 139, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 387),
(VAR_TENANT_KEY, VAR_ORG_ID, 139, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 388),
(VAR_TENANT_KEY, VAR_ORG_ID, 139, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 389);

-- eqms_form_control_actions
-- Vendor Form Control Actions Insert Statements
-- Form control actions for Vendor forms (122, 124, 139)

INSERT INTO abac.eqms_form_control_actions (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id, requires_role_validation, is_transition_action, status, created_date, created_by, modified_date, modified_by)
VALUES
-- Vendor Evaluation (Form 122) - Controls 372-377
(VAR_TENANT_KEY, VAR_ORG_ID, 372, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 373, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 374, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 375, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 376, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 377, false, true, 1, NOW(), 1, NULL, NULL),
-- Vendor Re Evaluation (Form 124) - Controls 378-383
(VAR_TENANT_KEY, VAR_ORG_ID, 378, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 379, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 380, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 381, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 382, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 383, false, true, 1, NOW(), 1, NULL, NULL),
-- Sample Inspection (Form 139) - Controls 384-389
(VAR_TENANT_KEY, VAR_ORG_ID, 384, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 385, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 386, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 387, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 388, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 389, false, true, 1, NOW(), 1, NULL, NULL);

END $$;