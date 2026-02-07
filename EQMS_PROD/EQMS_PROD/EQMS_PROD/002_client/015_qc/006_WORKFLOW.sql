DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
BEGIN

INSERT INTO workflow.eqms_workflow_template (
  eqms_tenant_key, fk_eqms_organization_id, workflow_name, status, created_date, created_by,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'QC', 1, NOW(), 1,9);

INSERT INTO workflow.eqms_project_type (
  eqms_tenant_key, fk_eqms_organization_id, project_type, version, status, created_date, created_by, fk_eqms_workflow_template_id, slug,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'SANITY CHECK INSPECTION', 1, 1, NOW(), 1, 9, 'sanity_check_inspection', 20),
(VAR_TENANT_KEY, VAR_ORG_ID, 'INCOMING INSPECTION', 1, 1, NOW(), 1, 9, 'incoming_inspection', 21);


INSERT INTO workflow.eqms_workflow_task_status (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id, task_status, status, created_date, created_by, status_order,ref_id,slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Yet to start', 1, NOW(), 1, 1,63,'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'In Progress', 1, NOW(), 1, 2,64,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Approved', 1, NOW(), 1, 3,65,'approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Rejected', 1, NOW(), 1, 4,66,'rejected');


INSERT INTO workflow.eqms_workflow_status_transition_template (
  eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id, fk_eqms_workflow_old_task_status_id, fk_eqms_workflow_new_task_status_id, status, created_date, created_by, fk_eqms_transition_owner_type_lk_id,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 63, 64, 1, NOW(), 1, 1,73),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 64, 65, 1, NOW(), 1, 3,74),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 64, 66, 1, NOW(), 1, 3,75),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 64, 64, 1, NOW(), 1, 3,97);


INSERT INTO workflow.eqms_workflow_status_transition_template_role_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id, fk_eqms_role_lk_ref_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 73, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 73, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 74, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 75, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 97, 6, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_name, task_stage_order, task_order, status, created_date, created_by, has_subtask, ref_id, fk_eqms_default_workflow_task_status_id 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 'SANITY CHECK INSPECTION', 1, 1, 1, NOW(), 1, 1, 54,63),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 'INCOMING INSPECTION', 1, 1, 1, NOW(), 1, 0, 55,63);

INSERT INTO workflow.eqms_project_type_task_group (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_group_name, group_execution_rule, group_exit_criteria, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 'SANITY CHECK INSPECTION', '{
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
}', '{
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
}', 1, NOW(), 1, 47),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 'INCOMING INSPECTION', '{
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
}', '{
  "exitCriteria": {
    "exitTransitionStatus": [
      {
        "conditionalWorkflowStatusId": 65,
        "conditionalWorkflowStatusName": "Approved"
      },
      {
        "conditionalWorkflowStatusId": 66,
        "conditionalWorkflowStatusName": "Rejected"
      }
    ]
  }
}', 1, NOW(), 1, 48);

INSERT INTO workflow.eqms_project_type_task_group_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id, fk_eqms_project_type_tasks_id, status, created_date, created_by
) VALUES
 
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 54, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 55, 1, NOW(), 1);

INSERT INTO workflow.eqms_project_type_tasks_department_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id, fk_eqms_project_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 54, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 55, 1, NOW(), 1);


INSERT INTO workflow.eqms_form_type_task_group_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_project_type_task_group_id, status, created_date, created_by
) VALUES
 
(VAR_TENANT_KEY, VAR_ORG_ID, 129, 47, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 136, 48, 1, NOW(), 1);

INSERT INTO organization.eqms_module (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, module_name, module_type, module_slug, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'QC', 1, 'qc', 1, NOW(), 1);

INSERT INTO organization.eqms_entity_subscription (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_subscribed_module_id, subscription_status, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 8, 1, 1, NOW(), 1);

INSERT INTO workflow.eqms_project_type_entity_subscription_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_subscription_id, fk_eqms_project_type_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 20, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 21, 1, NULL, NULL);

INSERT INTO workflow.eqms_project_type_tasks_url
(eqms_tenant_key, fk_eqms_organization_id,fk_eqms_project_type_tasks_id,template_url,status,created_date, created_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 55, '{domain}/quality-control/sanity-check-inspection', 1, NOW(), 1);

END $$;