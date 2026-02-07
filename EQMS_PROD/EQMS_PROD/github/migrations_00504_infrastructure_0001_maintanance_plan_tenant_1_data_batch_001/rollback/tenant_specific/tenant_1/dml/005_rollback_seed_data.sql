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
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 451 AND fk_eqms_workflow_task_status_id = 81;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 451 AND fk_eqms_workflow_task_status_id = 80;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 450 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 449 AND fk_eqms_workflow_task_status_id = 85;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 449 AND fk_eqms_workflow_task_status_id = 83;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 448 AND fk_eqms_workflow_task_status_id = 84;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 448 AND fk_eqms_workflow_task_status_id = 82;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 447 AND fk_eqms_workflow_task_status_id = 81;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 446 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 445 AND fk_eqms_workflow_task_status_id = 81;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 445 AND fk_eqms_workflow_task_status_id = 80;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 444 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 443 AND fk_eqms_workflow_task_status_id = 85;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 443 AND fk_eqms_workflow_task_status_id = 83;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 442 AND fk_eqms_workflow_task_status_id = 84;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 442 AND fk_eqms_workflow_task_status_id = 82;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 441 AND fk_eqms_workflow_task_status_id = 81;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 440 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 439 AND fk_eqms_workflow_task_status_id = 81;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 439 AND fk_eqms_workflow_task_status_id = 80;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 438 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 437 AND fk_eqms_workflow_task_status_id = 85;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 437 AND fk_eqms_workflow_task_status_id = 83;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 436 AND fk_eqms_workflow_task_status_id = 84;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 436 AND fk_eqms_workflow_task_status_id = 82;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 435 AND fk_eqms_workflow_task_status_id = 81;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 434 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 433 AND fk_eqms_workflow_task_status_id = 81;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 433 AND fk_eqms_workflow_task_status_id = 80;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 432 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 431 AND fk_eqms_workflow_task_status_id = 85;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 431 AND fk_eqms_workflow_task_status_id = 83;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 430 AND fk_eqms_workflow_task_status_id = 84;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 430 AND fk_eqms_workflow_task_status_id = 82;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 429 AND fk_eqms_workflow_task_status_id = 81;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 428 AND status = 1;

END $$;
