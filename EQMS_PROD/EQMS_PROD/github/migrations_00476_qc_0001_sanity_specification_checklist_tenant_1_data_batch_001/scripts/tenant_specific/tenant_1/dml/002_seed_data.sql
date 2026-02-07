DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
--eqms_form
INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id, ref_id, slug)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sanity Specification Checklist', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 128, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sanity check Inspection', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 129,'sanity_check_inspection'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Non Conformance Details', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 130, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Goods Inward', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 132, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Form a Team', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 131, 'form_a_team'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Incoming Inspection', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 136, 'incoming_inspection'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'record_generation_deviation_note', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 160, 'deviation_note'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'record_generation_incoming_inspection', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 161, 'incoming_inspection');


INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 128, 228, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 129, 230, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 130, 236, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 132, 231, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 131, 233, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 136, 234, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 136, 235, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 132, 296, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 161, 297, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 160, 298, 1, NOW(), 1);

INSERT INTO abac.eqms_form_controls (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, action_name, status, created_date, created_by, modified_date, modified_by, action_type, ref_id)
VALUES
-- Sanity Specification Checklist (Form 128)
(VAR_TENANT_KEY, VAR_ORG_ID, 129, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 414),
(VAR_TENANT_KEY, VAR_ORG_ID, 129, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 415),
(VAR_TENANT_KEY, VAR_ORG_ID, 129, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 416),
(VAR_TENANT_KEY, VAR_ORG_ID, 129, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 417),
-- incoming inspection (Form 136)
(VAR_TENANT_KEY, VAR_ORG_ID, 136, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 418),
(VAR_TENANT_KEY, VAR_ORG_ID, 136, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 419),
(VAR_TENANT_KEY, VAR_ORG_ID, 136, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 420),
(VAR_TENANT_KEY, VAR_ORG_ID, 136, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 421);


INSERT INTO abac.eqms_form_control_actions (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id, requires_role_validation, is_transition_action, status, created_date, created_by, modified_date, modified_by)
VALUES
-- Sanity Specification Checklist (Form 128) - Controls 414-417
(VAR_TENANT_KEY, VAR_ORG_ID, 414, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 415, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 416, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 417, false, true, 1, NOW(), 1, NULL, NULL),
-- incoming inspection (Form 136) - Controls 418-421
(VAR_TENANT_KEY, VAR_ORG_ID, 418, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 419, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 420, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 421, false, true, 1, NOW(), 1, NULL, NULL);


END $$;