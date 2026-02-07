DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
BEGIN

INSERT INTO workflow.eqms_workflow_template (
  eqms_tenant_key, fk_eqms_organization_id, workflow_name, status, created_date, created_by,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'USER ONBOARDING', 1, NOW(), 1,3);

INSERT INTO workflow.eqms_project_type (
  eqms_tenant_key, fk_eqms_organization_id, project_type, version, status, created_date, created_by, fk_eqms_workflow_template_id, slug,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'USER ONBOARDING', 1, 1, NOW(), 1, 3, 'user_onboarding', 5);


INSERT INTO workflow.eqms_workflow_task_status (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id, task_status, status, created_date, created_by, status_order,ref_id,slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'In Progress', 1, NOW(), 1, 1,20,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'In Review', 1, NOW(), 1, 2,21,'in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Reviewer Approved', 1, NOW(), 1, 3,22,'reviewer_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Reviewer Rejected', 1, NOW(), 1, 4,23,'reviewer_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Approved', 1, NOW(), 1, 5,24,'approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Rejected', 1, NOW(), 1, 6,25,'rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'User Profile Picture In Review', 1, NOW(), 1, 2,33,'user_profile_picture_in_review');



INSERT INTO workflow.eqms_workflow_status_transition_template (
  eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id, fk_eqms_workflow_old_task_status_id, fk_eqms_workflow_new_task_status_id, status, created_date, created_by, fk_eqms_transition_owner_type_lk_id,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 20, 21, 1, NOW(), 1, 1,22),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 21, 22, 1, NOW(), 1, 2,23),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 21, 23, 1, NOW(), 1, 2,24),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 22, 24, 1, NOW(), 1, 3,25),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 22, 25, 1, NOW(), 1, 3,26),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 23, 20, 1, NOW(), 1, 1,27),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 25, 20, 1, NOW(), 1, 1,28),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 33, 24, 1, NOW(), 1, 2,37),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 33, 25, 1, NOW(), 1, 2,38);

INSERT INTO workflow.eqms_workflow_status_transition_template_role_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id, fk_eqms_role_lk_ref_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 26, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 38, 26, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_name, task_stage_order, task_order, status, created_date, created_by, has_subtask, ref_id,fk_eqms_default_workflow_task_status_id 
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'USER ONBOARDING APPROVE BY DEPARTMENT HEAD AND HR HEAD', 1, 1, 1, NOW(), 1, 1, 31,20),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'USER PROFILE APPROVE BY HR HEAD', 1, 2, 1, NOW(), 1, 1, 32,33);


INSERT INTO workflow.eqms_project_type_task_group (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_group_name, group_execution_rule, group_exit_criteria, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'USER ONBOARDING APPROVE BY DEPT HEAD AND HR HEAD', '{
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
}',  '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 24, "conditionalWorkflowStatusName": "Approved"}],"applicableStatus" :[24]}}', 1, NOW(), 1, 31),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'USER PROFILE APPROVE BY HR HEAD', '{
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
}',  '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 24, "conditionalWorkflowStatusName": "Approved"}, {"enabled": true, "priority": 2, "ruleName": "ANY_REJECT", "resultStatus": "REJECTED", "ruleDescription": "Any single rejection blocks the task", "conditionalWorkflowStatusId": 25, "conditionalWorkflowStatusName": "Rejected"}],"applicableStatus" :[24,25]}}', 1, NOW(), 1, 32);


INSERT INTO workflow.eqms_project_type_task_group_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id, fk_eqms_project_type_tasks_id, status, created_date, created_by
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 31, 31, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 32, 32, 1, NOW(), 1);

INSERT INTO workflow.eqms_project_type_task_dependencies (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_tasks_id, fk_eqms_trigger_workflow_status_id, fk_eqms_dependent_project_type_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 31, 24, 32, 1, NOW(), 1);

INSERT INTO workflow.eqms_project_type_tasks_department_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id, fk_eqms_project_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 31, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 32, 1, NOW(), 1);


INSERT INTO workflow.eqms_form_type_task_group_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_project_type_task_group_id, status, created_date, created_by
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 48, 31, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 32, 1, NOW(), 1);


END $$;