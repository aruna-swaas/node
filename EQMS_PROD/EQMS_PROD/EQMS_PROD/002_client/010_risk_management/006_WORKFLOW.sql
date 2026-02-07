DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
BEGIN

INSERT INTO workflow.eqms_workflow_template (
  eqms_tenant_key, fk_eqms_organization_id, workflow_name, status, created_date, created_by,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'RISK', 1, NOW(), 1,5);

INSERT INTO workflow.eqms_project_type (
  eqms_tenant_key, fk_eqms_organization_id, project_type, version, status, created_date, created_by, fk_eqms_workflow_template_id, slug,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'RISK MANAGEMENT PLAN', 1, 1, NOW(), 1, 5, 'risk_management_plan', 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 'RISK CONTROL MEASURE', 1, 1, NOW(), 1, 5, 'risk_control_measure', 12),
(VAR_TENANT_KEY, VAR_ORG_ID, 'OVERALL RISK BENEFIT ANALYSIS', 1, 1, NOW(), 1, 5, 'overall_risk_benefit_analysis', 22),
(VAR_TENANT_KEY, VAR_ORG_ID, 'RISK REVIEW', 1, 1, NOW(), 1, 5, 'risk_review', 23),
(VAR_TENANT_KEY, VAR_ORG_ID, 'HAZARD IDENTIFICATION USED', 1, 1, NOW(), 1, 5, 'hazard_identification_used', 24);



INSERT INTO workflow.eqms_workflow_task_status (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id, task_status, status, created_date, created_by, status_order,ref_id,slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Yet to Start', 1, NOW(), 1, 1,34,'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'In Progress', 1, NOW(), 1, 2,35,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'In Review', 1, NOW(), 1, 3,36,'in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Reviewer Approved', 1, NOW(), 1, 4,37,'reviewer_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Reviewer Rejected', 1, NOW(), 1, 5,38,'reviewer_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Approved', 1, NOW(), 1,6,39,'approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Rejected', 1, NOW(), 1, 7,40,'rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Re Open', 1, NOW(), 1, 8,41,'re_open');



INSERT INTO workflow.eqms_workflow_status_transition_template (
  eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id, fk_eqms_workflow_old_task_status_id, fk_eqms_workflow_new_task_status_id, status, created_date, created_by, fk_eqms_transition_owner_type_lk_id,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 34, 35, 1, NOW(), 1, 1,39),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 35, 36, 1, NOW(), 1, 1,40),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 36, 37, 1, NOW(), 1, 2,41),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 36, 38, 1, NOW(), 1, 2,42),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 37, 39, 1, NOW(), 1, 3,43),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 37, 40, 1, NOW(), 1, 3,44),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 38, 35, 1, NOW(), 1, 1,45),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 40, 35, 1, NOW(), 1, 1,46),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 39, 41, 1, NOW(), 1, 1,47),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 41, 35, 1, NOW(), 1, 1,48);

-- INSERT Query for workflow.eqms_workflow_status_transition_template_role_mapper
INSERT INTO workflow.eqms_workflow_status_transition_template_role_mapper (
eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id, fk_eqms_role_lk_ref_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 43, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 43, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 44, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 44, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 11, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 6, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 7, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 9, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 10, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 11, 1, NOW(), 1);




INSERT INTO workflow.eqms_project_type_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_name, task_stage_order, task_order, status, created_date, created_by, has_subtask, ref_id, fk_eqms_default_workflow_task_status_id 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'RISK MANAGEMENT PLAN', 1, 1, 1, NOW(), 1, 0, 37,34),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'RISK CONTROL MEASURE', 1, 1, 1, NOW(), 1, 1, 39,34),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 'OVERALL RISK BENEFIT ANALYSIS', 1, 1, 1, NOW(), 1, 0, 56,35),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 'RISK REVIEW', 1, 1, 1, NOW(), 1, 1, 57,34),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 'HAZARD IDENTIFICATION USED', 1, 1, 1, NOW(), 1, 0, 58,35);


INSERT INTO workflow.eqms_project_type_task_group (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_group_name, group_execution_rule, group_exit_criteria, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'RISK MANAGEMENT PLAN', '{
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
}', null, 1, NOW(), 1, 37),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'RISK CONTROL MEASURE', '{
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
        "conditionalWorkflowStatusId": 39,
        "conditionalWorkflowStatusName": "Approved"
      }
    ],
    "applicableStatus": []
  }
}', 1, NOW(), 1, 39),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 'OVERALL RISK BENEFIT ANALYSIS', '{
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
}', null, 1, NOW(), 1, 49),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 'RISK REVIEW', '{
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
        "conditionalWorkflowStatusId": 39,
        "conditionalWorkflowStatusName": "Approved"
      }
    ],
    "applicableStatus": []
  }
}', 1, NOW(), 1, 50),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 'HAZARD IDENTIFICATION USED', '{
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
}', null, 1, NOW(), 1, 51);


INSERT INTO workflow.eqms_project_type_task_group_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id, fk_eqms_project_type_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 37, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 39, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 49, 56, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 50, 57, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 58, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks_department_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id, fk_eqms_project_tasks_id , status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 39, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 39, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 56, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 56, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 57, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 57, 1, NOW(), 1);


INSERT INTO workflow.eqms_form_type_task_group_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_project_type_task_group_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 88, 37, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 89, 39, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 91, 49, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 153, 50, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 90, 51, 1, NOW(), 1);


INSERT INTO organization.eqms_entity_subscription (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_subscribed_module_id, subscription_status, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 5, 1, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_entity_subscription_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_subscription_id, fk_eqms_project_type_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 10, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 12, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 22, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 23, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 24, 1, NULL, NULL);

INSERT INTO workflow.eqms_project_type_tasks_url
(eqms_tenant_key, fk_eqms_organization_id,fk_eqms_project_type_tasks_id,template_url,status,created_date, created_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 37, '{domain}/risk-management/production-post-production-info/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 56, '{domain}/risk-management/overall-risk-benefit-analysis/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, '{domain}/risk-management/hazard-identification-used/{context_instance_id}', 1, NOW(), 1);

END $$;