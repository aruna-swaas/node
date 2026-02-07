-- Rollback: Delete seed data from file 007_ABAC_WF_MAPPING_CONFIGURATION.sql
-- Original file: 007_ABAC_WF_MAPPING_CONFIGURATION.sql
-- Seed data file: 005_seed_data.sql
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

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 413 AND fk_eqms_workflow_task_status_id = 58;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 413 AND fk_eqms_workflow_task_status_id = 57;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 412 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 411 AND fk_eqms_workflow_task_status_id = 62;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 411 AND fk_eqms_workflow_task_status_id = 60;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 410 AND fk_eqms_workflow_task_status_id = 61;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 410 AND fk_eqms_workflow_task_status_id = 59;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 409 AND fk_eqms_workflow_task_status_id = 58;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 408 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = Form 100;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 407 AND fk_eqms_workflow_task_status_id = 58;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 407 AND fk_eqms_workflow_task_status_id = 57;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 406 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 405 AND fk_eqms_workflow_task_status_id = 62;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 405 AND fk_eqms_workflow_task_status_id = 60;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 404 AND fk_eqms_workflow_task_status_id = 61;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 404 AND fk_eqms_workflow_task_status_id = 59;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 403 AND fk_eqms_workflow_task_status_id = 58;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 402 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = Form 118;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 401 AND fk_eqms_workflow_task_status_id = 58;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 401 AND fk_eqms_workflow_task_status_id = 57;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 400 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 399 AND fk_eqms_workflow_task_status_id = 62;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 399 AND fk_eqms_workflow_task_status_id = 60;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 398 AND fk_eqms_workflow_task_status_id = 61;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 398 AND fk_eqms_workflow_task_status_id = 59;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 397 AND fk_eqms_workflow_task_status_id = 58;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 396 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = Form 98;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 395 AND fk_eqms_workflow_task_status_id = 58;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 395 AND fk_eqms_workflow_task_status_id = 57;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 394 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 393 AND fk_eqms_workflow_task_status_id = 62;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 393 AND fk_eqms_workflow_task_status_id = 60;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 392 AND fk_eqms_workflow_task_status_id = 61;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 392 AND fk_eqms_workflow_task_status_id = 59;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 391 AND fk_eqms_workflow_task_status_id = 58;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 390 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = Form 101;

END $$;
