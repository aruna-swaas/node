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
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 113 AND template_url = '{domain}/infrastructure-management/raise-complaint/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 94 AND template_url = '{domain}/infrastructure-management/maintenance-report/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 93 AND template_url = '{domain}/infrastructure-management/infrastructure-qualification/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 92 AND template_url = '{domain}/infrastructure-management/infrastructure-request/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 7 AND fk_eqms_project_type_id = 29 AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 7 AND fk_eqms_project_type_id = 28 AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 7 AND fk_eqms_project_type_id = 27 AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 7 AND fk_eqms_project_type_id = 26 AND status = 1;

-- Delete from organization.eqms_entity_subscription
DELETE FROM organization.eqms_entity_subscription WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_subscribed_module_id = 11 AND subscription_status = 1;

-- Delete from organization.eqms_module
DELETE FROM organization.eqms_module WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND module_name = 'INFRASTRUCTURE' AND module_type = 1 AND module_slug = 'infrastructure' AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 135 AND fk_eqms_project_type_task_group_id = 105 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 159 AND fk_eqms_project_type_task_group_id = 87 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 137 AND fk_eqms_project_type_task_group_id = 86 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 158 AND fk_eqms_project_type_task_group_id = 85 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 105 AND fk_eqms_project_type_tasks_id = 113 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 87 AND fk_eqms_project_type_tasks_id = 94 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 86 AND fk_eqms_project_type_tasks_id = 93 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 85 AND fk_eqms_project_type_tasks_id = 92 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 105 AND fk_eqms_project_type_id = 29 AND task_group_name = 'RAISE A COMPLAINT' AND group_execution_rule = '{
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
}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 84, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 87 AND fk_eqms_project_type_id = 28 AND task_group_name = 'MAINTENANCE REPORT' AND group_execution_rule = '{
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
}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 84, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND fk_eqms_project_type_id = 27 AND task_group_name = 'INFRASTRUCTURE QUALIFICATION' AND group_execution_rule = '{
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
}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 84, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND fk_eqms_project_type_id = 26 AND task_group_name = 'INFRASTRUCTURE REQUEST' AND group_execution_rule = '{
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
}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 84, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 113 AND fk_eqms_project_type_id = 29 AND task_name = 'RAISE A COMPLAINT' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 79;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 94 AND fk_eqms_project_type_id = 28 AND task_name = 'MAINTENANCE REPORT' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 79;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 93 AND fk_eqms_project_type_id = 27 AND task_name = 'INFRASTRUCTURE QUALIFICATION' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 79;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 92 AND fk_eqms_project_type_id = 26 AND task_name = 'INFRASTRUCTURE REQUEST' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 79;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 96 AND fk_eqms_role_lk_ref_id = 21;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 96 AND fk_eqms_role_lk_ref_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 95 AND fk_eqms_role_lk_ref_id = 21;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 95 AND fk_eqms_role_lk_ref_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 94 AND fk_eqms_role_lk_ref_id = 23;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 94 AND fk_eqms_role_lk_ref_id = 5;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 93 AND fk_eqms_role_lk_ref_id = 23;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 93 AND fk_eqms_role_lk_ref_id = 5;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 92 AND fk_eqms_role_lk_ref_id = 22;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 92 AND fk_eqms_role_lk_ref_id = 4;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 91 AND fk_eqms_role_lk_ref_id = 22;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 91 AND fk_eqms_role_lk_ref_id = 4;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 90 AND fk_eqms_role_lk_ref_id = 21;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 90 AND fk_eqms_role_lk_ref_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 89 AND fk_eqms_role_lk_ref_id = 21;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 89 AND fk_eqms_role_lk_ref_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 96 AND fk_organization_workflow_template_id = 11 AND fk_eqms_workflow_old_task_status_id = 85 AND fk_eqms_workflow_new_task_status_id = 80 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 95 AND fk_organization_workflow_template_id = 11 AND fk_eqms_workflow_old_task_status_id = 83 AND fk_eqms_workflow_new_task_status_id = 80 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 94 AND fk_organization_workflow_template_id = 11 AND fk_eqms_workflow_old_task_status_id = 82 AND fk_eqms_workflow_new_task_status_id = 85 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 93 AND fk_organization_workflow_template_id = 11 AND fk_eqms_workflow_old_task_status_id = 82 AND fk_eqms_workflow_new_task_status_id = 84 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 92 AND fk_organization_workflow_template_id = 11 AND fk_eqms_workflow_old_task_status_id = 81 AND fk_eqms_workflow_new_task_status_id = 83 AND fk_eqms_transition_owner_type_lk_id = 2;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 91 AND fk_organization_workflow_template_id = 11 AND fk_eqms_workflow_old_task_status_id = 81 AND fk_eqms_workflow_new_task_status_id = 82 AND fk_eqms_transition_owner_type_lk_id = 2;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 90 AND fk_organization_workflow_template_id = 11 AND fk_eqms_workflow_old_task_status_id = 80 AND fk_eqms_workflow_new_task_status_id = 81 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 89 AND fk_organization_workflow_template_id = 11 AND fk_eqms_workflow_old_task_status_id = 79 AND fk_eqms_workflow_new_task_status_id = 80 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND fk_eqms_workflow_template_id = 11 AND task_status = 'Rejected' AND status_order = 7 AND slug = 'rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 84 AND fk_eqms_workflow_template_id = 11 AND task_status = 'Approved' AND status_order = 6 AND slug = 'approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 83 AND fk_eqms_workflow_template_id = 11 AND task_status = 'Reviewer Rejected' AND status_order = 5 AND slug = 'reviewer_rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 82 AND fk_eqms_workflow_template_id = 11 AND task_status = 'Reviewer Approved' AND status_order = 4 AND slug = 'reviewer_approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 81 AND fk_eqms_workflow_template_id = 11 AND task_status = 'In Review' AND status_order = 3 AND slug = 'in_review';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND fk_eqms_workflow_template_id = 11 AND task_status = 'In Progress' AND status_order = 2 AND slug = 'in_progress';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND fk_eqms_workflow_template_id = 11 AND task_status = 'Yet to Start' AND status_order = 1 AND slug = 'yet_to_start';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND project_type = 'RAISE A COMPLAINT' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 11 AND slug = 'raise_a_complaint';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND project_type = 'MAINTENANCE REPORT' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 11 AND slug = 'maintenance_report';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND project_type = 'INFRASTRUCTURE QUALIFICATION' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 11 AND slug = 'infrastructure_qualification';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND project_type = 'INFRASTRUCTURE REQUEST' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 11 AND slug = 'infrastructure_request';

-- Delete from workflow.eqms_workflow_template
DELETE FROM workflow.eqms_workflow_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND workflow_name = 'INFRASTRUCTURE' AND status = 1;

END $$;
