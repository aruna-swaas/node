DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

INSERT INTO abac.eqms_form_action_wf_status_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id, fk_eqms_workflow_task_status_id, status, created_date, created_by
) VALUES

--Infrastructure Request Form Action Workflow Status Mapping
(VAR_TENANT_KEY, VAR_ORG_ID, 428, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 429, 81, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 430, 82, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 430, 84, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 431, 83, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 431, 85, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 432, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 433, 80, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 433, 81, 1, NOW(), 1),
--Infrastructure Qualification Form Action Workflow Status Mapping
(VAR_TENANT_KEY, VAR_ORG_ID, 434, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 435, 81, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 436, 82, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 436, 84, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 437, 83, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 437, 85, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 438, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 439, 80, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 439, 81, 1, NOW(), 1),
--Maintenance Report Form Action Workflow Status Mapping
(VAR_TENANT_KEY, VAR_ORG_ID, 440, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 441, 81, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 442, 82, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 442, 84, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 443, 83, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 443, 85, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 444, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 445, 80, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 445, 81, 1, NOW(), 1);



END $$;