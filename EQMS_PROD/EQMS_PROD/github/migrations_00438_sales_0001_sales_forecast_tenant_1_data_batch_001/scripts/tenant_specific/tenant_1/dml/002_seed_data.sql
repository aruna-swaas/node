DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
--eqms_form
INSERT INTO abac.eqms_form (
    eqms_tenant_key, 
    fk_eqms_organization_id, 
    form_name, 
    status, 
    created_date, 
    created_by, 
    modified_date, 
    modified_by, 
    fk_eqms_form_type_lk_id, 
    is_parallel_allowed, 
    completion_tracking, 
    fk_eqms_entity_subscription_id, 
    ref_id, 
    slug
)
VALUES
    (VAR_TENANT_KEY, VAR_ORG_ID, 'Order Acknowledgement', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 98, 'order_acknowledgement'),
    (VAR_TENANT_KEY, VAR_ORG_ID, 'Customer Feedback', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 100, 'customer_feedback'),
    (VAR_TENANT_KEY, VAR_ORG_ID, 'Sales Forecast', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 101, 'sales_forecast'),
    (VAR_TENANT_KEY, VAR_ORG_ID, 'Customer Feedback Criteria', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 117, 'customer_feedback_criteria'),
    (VAR_TENANT_KEY, VAR_ORG_ID, 'Delivery Dispatch', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 118, 'delivery_dispatch'),
    (VAR_TENANT_KEY, VAR_ORG_ID, 'Initiate Quotation', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 119, 'initiate_quotation');


--eqms_form_menu_mapping
INSERT INTO abac.eqms_form_menu_mapping 
(eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by, modified_date, modified_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 205, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 208, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 101, 202, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 117, 203, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 207, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 119, 204, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 119, 262, 1, NOW (), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 264, 1, NOW (), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 265, 1, NOW (), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 266, 1, NOW (), 1, NULL, NULL);

INSERT INTO abac.eqms_form_controls (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, action_name, status, created_date, created_by, modified_date, modified_by, action_type, ref_id)
VALUES
-- Sales Forecast (Form 101)
(VAR_TENANT_KEY, VAR_ORG_ID, 101, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 390),
(VAR_TENANT_KEY, VAR_ORG_ID, 101, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 391),
(VAR_TENANT_KEY, VAR_ORG_ID, 101, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 392),
(VAR_TENANT_KEY, VAR_ORG_ID, 101, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 393),
(VAR_TENANT_KEY, VAR_ORG_ID, 101, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 394),
(VAR_TENANT_KEY, VAR_ORG_ID, 101, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 395),
-- Order Acknowledgement (Form 98)
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 396),
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 397),
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 398),
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 399),
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 400),
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 401),
--Delivery Dispatch (Form 118)
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 402),
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 403),
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 404),
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 405),
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 406),
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 407),
-- customer feedback (Form 100)
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 'Submit For Approval', 1, NOW(), 1, NULL, NULL, NULL, 408),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 'Submit For Review', 1, NOW(), 1, NULL, NULL, NULL, 409),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 'Approve', 1, NOW(), 1, NULL, NULL, NULL, 410),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 'Reject', 1, NOW(), 1, NULL, NULL, NULL, 411),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 'Cancel', 1, NOW(), 1, NULL, NULL, NULL, 412),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 'Save', 1, NOW(), 1, NULL, NULL, NULL, 413);

INSERT INTO abac.eqms_form_control_actions (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id, requires_role_validation, is_transition_action, status, created_date, created_by, modified_date, modified_by)
VALUES
-- Sales Forecast (Form 101) - Controls 390-395
(VAR_TENANT_KEY, VAR_ORG_ID, 390, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 391, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 392, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 393, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 394, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 395, false, true, 1, NOW(), 1, NULL, NULL),
-- Order Acknowledgement (Form 98) - Controls 396-401
(VAR_TENANT_KEY, VAR_ORG_ID, 396, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 397, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 398, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 399, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 400, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 401, false, true, 1, NOW(), 1, NULL, NULL),
-- Delivery Dispatch (Form 118) - Controls 402-407
(VAR_TENANT_KEY, VAR_ORG_ID, 402, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 403, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 404, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 405, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 406, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 407, false, true, 1, NOW(), 1, NULL, NULL),
-- customer feedback (Form 100) - Controls 408-413
(VAR_TENANT_KEY, VAR_ORG_ID, 408, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 409, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 410, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 411, false, true, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 412, false, false, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 413, false, true, 1, NOW(), 1, NULL, NULL);

END $$;