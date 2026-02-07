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
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 426 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 422 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 368 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 364 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 362 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 358 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 423 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 365 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 359 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 425 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 425 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 367 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 367 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 361 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 361 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 424 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 424 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 366 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 366 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 360 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 360 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 427 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 427 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 369 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 369 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 363 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 363 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 351 AND fk_eqms_workflow_task_status_id = 41;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 369 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 369 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 368 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 367 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 367 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 366 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 366 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 365 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 364 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 363 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 363 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 362 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 361 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 361 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 360 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 360 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 359 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 358 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 357 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 357 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 356 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 355 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 355 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 354 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 354 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 353 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 352 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 351 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 351 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 350 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 349 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 349 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 348 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 348 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 347 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 346 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 345 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 345 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 344 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 343 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 343 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 342 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 342 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 341 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 340 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 339 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 339 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 338 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 337 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 337 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 336 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 336 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 335 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 334 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 333 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 333 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 332 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 331 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 331 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 330 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 330 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 329 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 328 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 327 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 327 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 326 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 325 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 325 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 324 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 324 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 323 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 322 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 321 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 321 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 320 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 319 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 319 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 318 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 318 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 317 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 316 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 315 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 315 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 314 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 313 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 313 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 312 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 312 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 311 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 310 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 309 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 309 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 308 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 307 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 307 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 306 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 306 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 305 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 304 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 303 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 303 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 302 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 301 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 301 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 300 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 300 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 299 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 298 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 297 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 297 AND fk_eqms_workflow_task_status_id = 35;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 296 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 295 AND fk_eqms_workflow_task_status_id = 40;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 295 AND fk_eqms_workflow_task_status_id = 38;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 294 AND fk_eqms_workflow_task_status_id = 39;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 294 AND fk_eqms_workflow_task_status_id = 37;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 293 AND fk_eqms_workflow_task_status_id = 36;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 292 AND status = 1;

END $$;
