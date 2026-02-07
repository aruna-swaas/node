DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID};

BEGIN

-- Vendor Form Action Workflow Status Mapping Insert Statements
-- Form action workflow status mappings for Vendor forms (122, 124, 139)
-- VENDOR workflow template (id 6): statuses 42-48
-- SAMPLE INSPECTION workflow template (id 7): statuses 49-55

INSERT INTO abac.eqms_form_action_wf_status_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id, fk_eqms_workflow_task_status_id, status, created_date, created_by, modified_date, modified_by)
VALUES 
-- Vendor Evaluation (Form 122) - Uses VENDOR workflow (statuses 42-48)
-- Control 372: Submit For Approval
(VAR_TENANT_KEY, VAR_ORG_ID, 372, NULL, 1, NOW(), 1, NULL, NULL),
-- Control 373: Submit For Review
(VAR_TENANT_KEY, VAR_ORG_ID, 373, 44, 1, NOW(), 1, NULL, NULL),
-- Control 374: Approve
(VAR_TENANT_KEY, VAR_ORG_ID, 374, 45, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 374, 48, 1, NOW(), 1, NULL, NULL),
-- Control 375: Reject
(VAR_TENANT_KEY, VAR_ORG_ID, 375, 46, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 375, 47, 1, NOW(), 1, NULL, NULL),
-- Control 376: Cancel
(VAR_TENANT_KEY, VAR_ORG_ID, 376, NULL, 1, NOW(), 1, NULL, NULL),
-- Control 377: Save
(VAR_TENANT_KEY, VAR_ORG_ID, 377, 44, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 377, 43, 1, NOW(), 1, NULL, NULL),

-- Vendor Re Evaluation (Form 124) - Uses VENDOR workflow (statuses 42-48)
-- Control 378: Submit For Approval
(VAR_TENANT_KEY, VAR_ORG_ID, 378, NULL, 1, NOW(), 1, NULL, NULL),
-- Control 379: Submit For Review
(VAR_TENANT_KEY, VAR_ORG_ID, 379, 44, 1, NOW(), 1, NULL, NULL),
-- Control 380: Approve
(VAR_TENANT_KEY, VAR_ORG_ID, 380, 45, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 380, 48, 1, NOW(), 1, NULL, NULL),
-- Control 381: Reject
(VAR_TENANT_KEY, VAR_ORG_ID, 381, 46, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 381, 47, 1, NOW(), 1, NULL, NULL),
-- Control 382: Cancel
(VAR_TENANT_KEY, VAR_ORG_ID, 382, NULL, 1, NOW(), 1, NULL, NULL),
-- Control 383: Save
(VAR_TENANT_KEY, VAR_ORG_ID, 383, 44, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 383, 43, 1, NOW(), 1, NULL, NULL),

-- Sample Inspection (Form 139) - Uses SAMPLE INSPECTION workflow (statuses 49-55)
-- Control 384: Submit For Approval
(VAR_TENANT_KEY, VAR_ORG_ID, 384, NULL, 1, NOW(), 1, NULL, NULL),
-- Control 385: Submit For Review
(VAR_TENANT_KEY, VAR_ORG_ID, 385, 51, 1, NOW(), 1, NULL, NULL),
-- Control 386: Approve
(VAR_TENANT_KEY, VAR_ORG_ID, 386, 52, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 386, 55, 1, NOW(), 1, NULL, NULL),
-- Control 387: Reject
(VAR_TENANT_KEY, VAR_ORG_ID, 387, 53, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 387, 54, 1, NOW(), 1, NULL, NULL),
-- Control 388: Cancel
(VAR_TENANT_KEY, VAR_ORG_ID, 388, NULL, 1, NOW(), 1, NULL, NULL),
-- Control 389: Save
(VAR_TENANT_KEY, VAR_ORG_ID, 389, 49, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 389, 50, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 389, 51, 1, NOW(), 1, NULL, NULL);

END $$;

