-- Rollback: Delete seed data from file 007_ABAC_WF_MAPPING_CONFIGURATION.sql
-- Original file: 007_ABAC_WF_MAPPING_CONFIGURATION.sql
-- Seed data file: 006_seed_data.sql
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
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 389 AND fk_eqms_workflow_task_status_id = 51;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 389 AND fk_eqms_workflow_task_status_id = 50;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 389 AND fk_eqms_workflow_task_status_id = 49;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 388 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 387 AND fk_eqms_workflow_task_status_id = 54;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 387 AND fk_eqms_workflow_task_status_id = 53;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 386 AND fk_eqms_workflow_task_status_id = 55;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 386 AND fk_eqms_workflow_task_status_id = 52;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 385 AND fk_eqms_workflow_task_status_id = 51;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 384 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = statuses 49-55;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = Form 139;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 383 AND fk_eqms_workflow_task_status_id = 43;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 383 AND fk_eqms_workflow_task_status_id = 44;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 382 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 381 AND fk_eqms_workflow_task_status_id = 47;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 381 AND fk_eqms_workflow_task_status_id = 46;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 380 AND fk_eqms_workflow_task_status_id = 48;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 380 AND fk_eqms_workflow_task_status_id = 45;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 379 AND fk_eqms_workflow_task_status_id = 44;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 378 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = statuses 42-48;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = Form 124;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 377 AND fk_eqms_workflow_task_status_id = 43;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 377 AND fk_eqms_workflow_task_status_id = 44;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 376 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 375 AND fk_eqms_workflow_task_status_id = 47;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 375 AND fk_eqms_workflow_task_status_id = 46;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 374 AND fk_eqms_workflow_task_status_id = 48;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 374 AND fk_eqms_workflow_task_status_id = 45;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 373 AND fk_eqms_workflow_task_status_id = 44;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 372 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = statuses 42-48;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = Form 122;

END $$;
