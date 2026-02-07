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
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 207 AND fk_eqms_workflow_task_status_id = 12;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 207 AND fk_eqms_workflow_task_status_id = 11;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 206 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 205 AND fk_eqms_workflow_task_status_id = 15;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 205 AND fk_eqms_workflow_task_status_id = 14;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 204 AND fk_eqms_workflow_task_status_id = 16;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 204 AND fk_eqms_workflow_task_status_id = 13;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 203 AND fk_eqms_workflow_task_status_id = 12;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 202 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 201 AND fk_eqms_workflow_task_status_id = 12;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 201 AND fk_eqms_workflow_task_status_id = 11;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 200 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 199 AND fk_eqms_workflow_task_status_id = 15;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 199 AND fk_eqms_workflow_task_status_id = 14;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 198 AND fk_eqms_workflow_task_status_id = 16;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 198 AND fk_eqms_workflow_task_status_id = 13;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 197 AND fk_eqms_workflow_task_status_id = 12;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 196 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 195 AND fk_eqms_workflow_task_status_id = 12;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 195 AND fk_eqms_workflow_task_status_id = 11;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 194 AND status = 1;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 193 AND fk_eqms_workflow_task_status_id = 15;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 193 AND fk_eqms_workflow_task_status_id = 14;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 192 AND fk_eqms_workflow_task_status_id = 16;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 192 AND fk_eqms_workflow_task_status_id = 13;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 191 AND fk_eqms_workflow_task_status_id = 12;

-- Delete from abac.eqms_form_action_wf_status_mapping
DELETE FROM abac.eqms_form_action_wf_status_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_controls_id = 190 AND status = 1;

END $$;
