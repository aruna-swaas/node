-- Rollback: Delete seed data from file 006_WORKFLOW.sql
-- Original file: 006_WORKFLOW.sql
-- Seed data file: 004_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
BEGIN

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 36 AND template_url = '{domain}/regulation/general-information/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 35 AND template_url = '{domain}/regulation/executive-summary/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 34 AND template_url = '{domain}/regulation/add-manufacturing-license-checklist/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 33 AND template_url = '{domain}/regulation/add-test-license/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 55 AND fk_eqms_project_type_task_group_id = 36 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 54 AND fk_eqms_project_type_task_group_id = 35 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 53 AND fk_eqms_project_type_task_group_id = 34 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 52 AND fk_eqms_project_type_task_group_id = 33 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 5 AND fk_eqms_project_tasks_id = 36 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 5 AND fk_eqms_project_tasks_id = 35 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 5 AND fk_eqms_project_tasks_id = 34 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 5 AND fk_eqms_project_tasks_id = 33 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 36 AND fk_eqms_project_type_tasks_id = 36 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 35 AND fk_eqms_project_type_tasks_id = 35 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 34 AND fk_eqms_project_type_tasks_id = 34 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 33 AND fk_eqms_project_type_tasks_id = 33 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_project_type_id = 9 AND task_group_name = 'DEVICE MASTER' AND group_execution_rule = '{
  "assignmentRule": {
    "assignmentCriteria": {
      "role_id": 6,
      "roleType": "system"
    },
    "executionFlow":[
      {
        "level":1,
        "executionType":"SEQUENTIAL"
      }
    ]
  }
}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 31, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_project_type_id = 8 AND task_group_name = 'PLANT MASTER' AND group_execution_rule = '{
  "assignmentRule": {
    "assignmentCriteria": {
      "role_id": 6,
      "roleType": "system"
    },
    "executionFlow":[
      {
        "level":1,
        "executionType":"SEQUENTIAL"
      }
    ]
  }
}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 31, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_project_type_id = 7 AND task_group_name = 'MANUFACTURE LICENSE' AND group_execution_rule = '{
  "assignmentRule": {
    "assignmentCriteria": {
      "role_id": 6,
      "roleType": "system"
    },
    "executionFlow":[
      {
        "level":1,
        "executionType":"SEQUENTIAL"
      }
    ]
  }
}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 31, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_project_type_id = 6 AND task_group_name = 'TEST LICENSE' AND group_execution_rule = '{
  "assignmentRule": {
    "assignmentCriteria": {
      "role_id": 6,
      "roleType": "system"
    },
    "executionFlow":[
      {
        "level":1,
        "executionType":"SEQUENTIAL"
      }
    ]
  }
}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 31, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_project_type_id = 9 AND task_name = 'DEVICE MASTER' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 26;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_project_type_id = 8 AND task_name = 'PLANT MASTER' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 26;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_project_type_id = 7 AND task_name = 'MANUFACTURE LICENSE' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 26;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_project_type_id = 6 AND task_name = 'TEST LICENSE' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 26;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 36 AND fk_eqms_role_lk_ref_id = 15;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 35 AND fk_eqms_role_lk_ref_id = 15;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 34 AND fk_eqms_role_lk_ref_id = 17;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 33 AND fk_eqms_role_lk_ref_id = 17;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 32 AND fk_eqms_role_lk_ref_id = 16;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 31 AND fk_eqms_role_lk_ref_id = 16;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 30 AND fk_eqms_role_lk_ref_id = 15;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 29 AND fk_eqms_role_lk_ref_id = 15;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_organization_workflow_template_id = 4 AND fk_eqms_workflow_old_task_status_id = 32 AND fk_eqms_workflow_new_task_status_id = 27 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_organization_workflow_template_id = 4 AND fk_eqms_workflow_old_task_status_id = 30 AND fk_eqms_workflow_new_task_status_id = 27 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_organization_workflow_template_id = 4 AND fk_eqms_workflow_old_task_status_id = 29 AND fk_eqms_workflow_new_task_status_id = 32 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_organization_workflow_template_id = 4 AND fk_eqms_workflow_old_task_status_id = 29 AND fk_eqms_workflow_new_task_status_id = 31 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_organization_workflow_template_id = 4 AND fk_eqms_workflow_old_task_status_id = 28 AND fk_eqms_workflow_new_task_status_id = 30 AND fk_eqms_transition_owner_type_lk_id = 2;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_organization_workflow_template_id = 4 AND fk_eqms_workflow_old_task_status_id = 28 AND fk_eqms_workflow_new_task_status_id = 29 AND fk_eqms_transition_owner_type_lk_id = 2;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_organization_workflow_template_id = 4 AND fk_eqms_workflow_old_task_status_id = 27 AND fk_eqms_workflow_new_task_status_id = 28 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_organization_workflow_template_id = 4 AND fk_eqms_workflow_old_task_status_id = 26 AND fk_eqms_workflow_new_task_status_id = 27 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_workflow_template_id = 4 AND task_status = 'Rejected' AND status_order = 7 AND slug = 'rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_workflow_template_id = 4 AND task_status = 'Approved' AND status_order = 6 AND slug = 'approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_workflow_template_id = 4 AND task_status = 'Reviewer Rejected' AND status_order = 5 AND slug = 'reviewer_rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_workflow_template_id = 4 AND task_status = 'Reviewer Approved' AND status_order = 4 AND slug = 'reviewer_approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_workflow_template_id = 4 AND task_status = 'In Review' AND status_order = 3 AND slug = 'in_review';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_workflow_template_id = 4 AND task_status = 'In Progress' AND status_order = 2 AND slug = 'in_progress';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_workflow_template_id = 4 AND task_status = 'Yet to Start' AND status_order = 1 AND slug = 'yet_to_start';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND project_type = 'DEVICE MASTER' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 4 AND slug = 'device_master';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND project_type = 'PLANT MASTER' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 4 AND slug = 'plant_master';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND project_type = 'MANUFACTURE LICENSE' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 4 AND slug = 'manufacture_license';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND project_type = 'TEST LICENSE' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 4 AND slug = 'test_license';

-- Delete from workflow.eqms_workflow_template
DELETE FROM workflow.eqms_workflow_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND workflow_name = 'REGULATIONS' AND status = 1;

END $$;
