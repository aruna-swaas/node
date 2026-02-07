DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID};

BEGIN

    INSERT INTO abac.eqms_form_action_wf_status_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id, fk_eqms_workflow_task_status_id, status, created_date, created_by, modified_date, modified_by)
    VALUES 
-- Sanity Specification Checklist (Form 129) - Controls 414-417
(VAR_TENANT_KEY, VAR_ORG_ID, 416, NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 417, 65, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 417, 64, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 415, 66, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 414, 65, 1, NOW(), 1, NULL, NULL),
--Incoming Inspection (Form 136) - Controls 418-421
(VAR_TENANT_KEY, VAR_ORG_ID, 420, NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 421, 87, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 421, 88, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 418, 88, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 419, 89, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 419, 90, 1, NOW(), 1, NULL, NULL);


END $$;