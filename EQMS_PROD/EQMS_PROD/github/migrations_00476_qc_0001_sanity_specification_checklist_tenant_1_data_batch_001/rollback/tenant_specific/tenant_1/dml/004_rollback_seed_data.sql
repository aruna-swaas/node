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
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 55 AND template_url = '{domain}/quality-control-management/incoming-inspection/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 8 AND fk_eqms_project_type_id = 21 AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 8 AND fk_eqms_project_type_id = 20 AND status = 1;

-- Delete from organization.eqms_entity_subscription
DELETE FROM organization.eqms_entity_subscription WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_subscribed_module_id = 8 AND subscription_status = 1;

-- Delete from organization.eqms_module
DELETE FROM organization.eqms_module WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND module_name = 'QC' AND module_type = 1 AND module_slug = 'qc' AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 136 AND fk_eqms_project_type_task_group_id = 48 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 129 AND fk_eqms_project_type_task_group_id = 47 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 2 AND fk_eqms_project_tasks_id = 55 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 2 AND fk_eqms_project_tasks_id = 54 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 48 AND fk_eqms_project_type_tasks_id = 55 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 47 AND fk_eqms_project_type_tasks_id = 54 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND fk_eqms_project_type_id = 21 AND task_group_name = 'INCOMING INSPECTION' AND group_execution_rule = '{
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
}' AND group_exit_criteria = '{
  "exitCriteria": {
    "exitTransitionStatus": [
      {
        "conditionalWorkflowStatusId": 88,
        "conditionalWorkflowStatusName": "Approved"
      },
      {
        "conditionalWorkflowStatusId": 90,
        "conditionalWorkflowStatusName": "QC Head Rejected"
      }
    ]
  }
}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND fk_eqms_project_type_id = 20 AND task_group_name = 'SANITY CHECK INSPECTION' AND group_execution_rule = '{
  "assignmentRule": {
    "assignmentCriteria": {
      "role_id": 6,
      "roleType": "system"
    },
    "executionFlow":[
      {
        "level":1,
        "executionType":"PARALLEL"
      },
      {
        "level":2,
        "executionType":"PARALLEL"
      }
    ]
  }
}' AND group_exit_criteria = '{
  "exitCriteria": {
    "taskStatusRules": [
      {
        "enabled": true,
        "priority": 1,
        "ruleName": "ALL_APPROVE",
        "resultStatus": "APPROVED",
        "ruleDescription": "All assignees must approve for task completion",
        "conditionalWorkflowStatusId": 65,
        "conditionalWorkflowStatusName": "Approved"
      },
        {
        "enabled": true,
        "priority": 2,
        "ruleName": "ANY_REJECT",
        "resultStatus": "REJECTED",
        "ruleDescription": "Any single rejection blocks the task",
        "conditionalWorkflowStatusId": 66,
        "conditionalWorkflowStatusName": "Rejected"
      }
    ],
    "applicableStatus": [
      65, 66
    ]
  }
}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND fk_eqms_project_type_id = 21 AND task_name = 'INCOMING INSPECTION' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 63;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND fk_eqms_project_type_id = 20 AND task_name = 'SANITY CHECK INSPECTION' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 1 AND fk_eqms_default_workflow_task_status_id = 63;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 102 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 101 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 100 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 100 AND fk_eqms_role_lk_ref_id = 6;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 99 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 99 AND fk_eqms_role_lk_ref_id = 6;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 98 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 98 AND fk_eqms_role_lk_ref_id = 6;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 97 AND fk_eqms_role_lk_ref_id = 6;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 75 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 74 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 73 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 73 AND fk_eqms_role_lk_ref_id = 6;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 102 AND fk_organization_workflow_template_id = 12 AND fk_eqms_workflow_old_task_status_id = 89 AND fk_eqms_workflow_new_task_status_id = 90 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 101 AND fk_organization_workflow_template_id = 12 AND fk_eqms_workflow_old_task_status_id = 89 AND fk_eqms_workflow_new_task_status_id = 88 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 100 AND fk_organization_workflow_template_id = 12 AND fk_eqms_workflow_old_task_status_id = 87 AND fk_eqms_workflow_new_task_status_id = 89 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 99 AND fk_organization_workflow_template_id = 12 AND fk_eqms_workflow_old_task_status_id = 87 AND fk_eqms_workflow_new_task_status_id = 88 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 98 AND fk_organization_workflow_template_id = 12 AND fk_eqms_workflow_old_task_status_id = 86 AND fk_eqms_workflow_new_task_status_id = 87 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 97 AND fk_organization_workflow_template_id = 9 AND fk_eqms_workflow_old_task_status_id = 64 AND fk_eqms_workflow_new_task_status_id = 64 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND fk_organization_workflow_template_id = 9 AND fk_eqms_workflow_old_task_status_id = 64 AND fk_eqms_workflow_new_task_status_id = 66 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND fk_organization_workflow_template_id = 9 AND fk_eqms_workflow_old_task_status_id = 64 AND fk_eqms_workflow_new_task_status_id = 65 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND fk_organization_workflow_template_id = 9 AND fk_eqms_workflow_old_task_status_id = 63 AND fk_eqms_workflow_new_task_status_id = 64 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 90 AND fk_eqms_workflow_template_id = 12 AND task_status = 'QC Head REJECTED' AND status_order = 5 AND slug = 'qc_head_rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 89 AND fk_eqms_workflow_template_id = 12 AND task_status = 'Rejected' AND status_order = 4 AND slug = 'rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 88 AND fk_eqms_workflow_template_id = 12 AND task_status = 'Approved' AND status_order = 3 AND slug = 'approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 87 AND fk_eqms_workflow_template_id = 12 AND task_status = 'In Progress' AND status_order = 2 AND slug = 'in_progress';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND fk_eqms_workflow_template_id = 12 AND task_status = 'Yet to start' AND status_order = 1 AND slug = 'yet_to_start';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 66 AND fk_eqms_workflow_template_id = 9 AND task_status = 'Rejected' AND status_order = 4 AND slug = 'rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 65 AND fk_eqms_workflow_template_id = 9 AND task_status = 'Approved' AND status_order = 3 AND slug = 'approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 64 AND fk_eqms_workflow_template_id = 9 AND task_status = 'In Progress' AND status_order = 2 AND slug = 'in_progress';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 63 AND fk_eqms_workflow_template_id = 9 AND task_status = 'Yet to start' AND status_order = 1 AND slug = 'yet_to_start';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND project_type = 'INCOMING INSPECTION' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 12 AND slug = 'incoming_inspection';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND project_type = 'SANITY CHECK INSPECTION' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 9 AND slug = 'sanity_check_inspection';

-- Delete from workflow.eqms_workflow_template
DELETE FROM workflow.eqms_workflow_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND workflow_name = 'QC-INCOMING INSPECTION' AND status = 1;

-- Delete from workflow.eqms_workflow_template
DELETE FROM workflow.eqms_workflow_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND workflow_name = 'QC' AND status = 1;

END $$;
