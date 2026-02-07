
DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
    
BEGIN

INSERT INTO workflow.eqms_workflow_template (
  eqms_tenant_key, fk_eqms_organization_id, workflow_name, status, created_date, created_by,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'HR', 1, NOW(), 1,2);

INSERT INTO workflow.eqms_project_type (
  eqms_tenant_key, fk_eqms_organization_id, project_type, version, status, created_date, created_by, fk_eqms_workflow_template_id, slug,ref_id
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 'HR RESOURCE REQUISITION', 1, 1, NOW(), 1, 2, 'hr_role_requisition', 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'HR CANDIDATE EVALUATION', 1, 1, NOW(), 1, 2, 'hr_candidate_evaluation', 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'HR EMPLOYEE ONBOARDING', 1, 1, NOW(), 1, 2, 'hr_employee_onboarding', 4);


INSERT INTO workflow.eqms_workflow_task_status (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id, task_status, status, created_date, created_by, status_order,ref_id,slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Yet to start', 1, NOW(), 1, 1,10,'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'In Progress', 1, NOW(), 1, 2,11,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'In Review', 1, NOW(), 1, 3,12,'in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Reviewer Approved', 1, NOW(), 1, 4,13,'reviewer_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Reviewer Rejected', 1, NOW(), 1, 5,14,'reviewer_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Rejected', 1, NOW(), 1, 7,15,'rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Approved', 1, NOW(), 1, 6,16,'approved');


INSERT INTO workflow.eqms_workflow_status_transition_template (
  eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id, fk_eqms_workflow_old_task_status_id, fk_eqms_workflow_new_task_status_id, status, created_date, created_by, fk_eqms_transition_owner_type_lk_id,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 12, 13, 1, NOW(), 1, 2,11),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 12, 14, 1, NOW(), 1, 2,12),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 13, 15, 1, NOW(), 1, 3,13),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 13, 16, 1, NOW(), 1, 3,14),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 10, 12, 1, NOW(), 1, 1,15),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 16, 10, 1, NOW(), 1, 1,19);


INSERT INTO workflow.eqms_workflow_status_transition_template_role_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id, fk_eqms_role_lk_ref_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 20, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 29, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 32, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 38, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 20, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 29, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 32, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 38, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 12, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 18, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 24, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 27, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 30, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 36, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 14, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 20, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 29, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 32, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 38, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_name, task_stage_order, task_order, status, created_date, created_by, has_subtask, ref_id,fk_eqms_default_workflow_task_status_id 
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'RESOURCE REQUISITION  REVIEW BY DEPARTMENT HEAD', 1, 1, 1, NOW(), 1, 1, 28,10),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'CANDIDATE EVALUATION  REVIEW BY DEPARTMENT HEAD and HR HEAD', 1, 1, 1, NOW(), 1, 1, 29,10),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'EMPLOYEE ONBOARDING  REVIEW BY DEPARTMENT HEAD and HR HEAD', 1, 1, 1, NOW(), 1, 1, 30,10);


INSERT INTO workflow.eqms_project_type_task_group (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_group_name, group_execution_rule, group_exit_criteria, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'RESOURCE REQUISITION', '{
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
        "conditionalWorkflowStatusId": 16,
        "conditionalWorkflowStatusName": "Approved"
      },
      {
        "enabled": true,
        "priority": 2,
        "ruleName": "ANY_REJECT",
        "resultStatus": "REJECTED",
        "ruleDescription": "Any single rejection blocks the task",
        "conditionalWorkflowStatusId": 15,
        "conditionalWorkflowStatusName": "Rejected"
      }
    ],
    "applicableStatus": [15, 16]
  }
}', 1, NOW(), 1, 28),
 
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'CANDIDATE EVALUATION', '{
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
        "conditionalWorkflowStatusId": 16,
        "conditionalWorkflowStatusName": "Approved"
      },
      {
        "enabled": true,
        "priority": 2,
        "ruleName": "ANY_REJECT",
        "resultStatus": "REJECTED",
        "ruleDescription": "Any single rejection blocks the task",
        "conditionalWorkflowStatusId": 15,
        "conditionalWorkflowStatusName": "Rejected"
      }
    ],
    "applicableStatus": [15, 16]
  }
}', 1, NOW(), 1, 29),        
 
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'EMPLOYEE ONBOARDING', '{
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
        "conditionalWorkflowStatusId": 16,
        "conditionalWorkflowStatusName": "Approved"
      },
      {
        "enabled": true,
        "priority": 2,
        "ruleName": "ANY_REJECT",
        "resultStatus": "REJECTED",
        "ruleDescription": "Any single rejection blocks the task",
        "conditionalWorkflowStatusId": 15,
        "conditionalWorkflowStatusName": "Rejected"
      }
    ],
    "applicableStatus": [15, 16]
  }
}', 1, NOW(), 1, 30);


INSERT INTO workflow.eqms_project_type_task_group_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id, fk_eqms_project_type_tasks_id, status, created_date, created_by
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 28, 28, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 29, 29, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 30, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks_department_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id, fk_eqms_project_tasks_id, status, created_date, created_by
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 8, 28, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 29, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 30, 1, NOW(), 1);


INSERT INTO workflow.eqms_form_type_task_group_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_project_type_task_group_id, status, created_date, created_by
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 12, 28, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 29, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 30, 1, NOW(), 1);

INSERT INTO workflow.eqms_project_type_entity_subscription_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_subscription_id, fk_eqms_project_type_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 1, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 4, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 3, 1, NULL, NULL);

END $$;