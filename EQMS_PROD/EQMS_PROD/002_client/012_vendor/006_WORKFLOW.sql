DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
    
BEGIN

INSERT INTO workflow.eqms_workflow_template (
  eqms_tenant_key, fk_eqms_organization_id, workflow_name, status, created_date, created_by,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'VENDOR', 1, NOW(), 1,6),
(VAR_TENANT_KEY, VAR_ORG_ID, 'SAMPLE INSPECTION', 1, NOW(), 1,7);

INSERT INTO workflow.eqms_project_type (
  eqms_tenant_key, fk_eqms_organization_id, project_type, version, status, created_date, created_by, fk_eqms_workflow_template_id, slug,ref_id
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 'VENDOR EVALUATION', 1, 1, NOW(), 1, 6, 'vendor_evaluation', 13),
(VAR_TENANT_KEY, VAR_ORG_ID, 'VENDOR RE EVALUATION', 1, 1, NOW(), 1, 6, 'vendor_re_evaluation', 14),
(VAR_TENANT_KEY, VAR_ORG_ID, 'SAMPLE INSPECTION', 1, 1, NOW(), 1, 7, 'sample_inspection', 15);-- template sample inspection



INSERT INTO workflow.eqms_workflow_task_status (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id, task_status, status, created_date, created_by, status_order,ref_id,slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Yet to start', 1, NOW(), 1, 1,42,'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'In Progress', 1, NOW(), 1, 2,43,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'In Review', 1, NOW(), 1, 3,44,'in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Reviewer Approved', 1, NOW(), 1, 4,45,'reviewer_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Reviewer Rejected', 1, NOW(), 1, 5,46,'reviewer_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Rejected', 1, NOW(), 1, 7,47,'rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Approved', 1, NOW(), 1, 6,48,'approved'),
-- sample inspection template
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Yet to start', 1, NOW(), 1, 1,49,'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'In Progress', 1, NOW(), 1, 2,50,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'In Review', 1, NOW(), 1, 3,51,'in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Qc Head Approved', 1, NOW(), 1, 4,52,'qc_head_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Qc Head Rejected', 1, NOW(), 1, 5,53,'qc_head_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Purchase Head Rejected', 1, NOW(), 1, 7,54,'purchase_head_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Purchase Head Approved', 1, NOW(), 1, 6,55,'purchase_head_approved');

INSERT INTO workflow.eqms_workflow_status_transition_template (
  eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id, fk_eqms_workflow_old_task_status_id, fk_eqms_workflow_new_task_status_id, status, created_date, created_by, fk_eqms_transition_owner_type_lk_id,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 42, 43, 1, NOW(), 1, 1,49),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 43, 44, 1, NOW(), 1, 1,50),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 44, 45, 1, NOW(), 1, 2,51),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 44, 46, 1, NOW(), 1, 2,52),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 46, 43, 1, NOW(), 1, 1,53),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 45, 48, 1, NOW(), 1, 3,54),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 45, 47, 1, NOW(), 1, 3,55),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 47, 43, 1, NOW(), 1, 1,56),

-- sample inspection template
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 49, 50, 1, NOW(), 1, 1,57),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 50, 51, 1, NOW(), 1, 1,58),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 51, 52, 1, NOW(), 1, 2,59),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 51, 53, 1, NOW(), 1, 2,60),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 52, 54, 1, NOW(), 1, 3,61),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 52, 55, 1, NOW(), 1, 3,62),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 53, 50, 1, NOW(), 1, 1,63),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 54, 50, 1, NOW(), 1, 1,64);

INSERT INTO workflow.eqms_workflow_status_transition_template_role_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id, fk_eqms_role_lk_ref_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 49, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 50, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 56, 3, 1, NOW(), 1),
-- sample inspection template
(VAR_TENANT_KEY, VAR_ORG_ID, 57, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 59, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 60, 8, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 61, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 62, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 63, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 64, 3, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_name, task_stage_order, task_order, status, created_date, created_by, has_subtask, ref_id,fk_eqms_default_workflow_task_status_id 
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'VENDOR EVALUATION', 1, 1, 1, NOW(), 1, 0, 40,42),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'VENDOR RE EVALUATION', 1, 1, 1, NOW(), 1, 0,41,42),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'SAMPLE INSPECTION', 1, 1, 1, NOW(), 1, 1, 42,49);


INSERT INTO workflow.eqms_project_type_task_group (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_group_name, group_execution_rule, group_exit_criteria, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'VENDOR EVALUATION', '{
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
        "conditionalWorkflowStatusId": 48,
        "conditionalWorkflowStatusName": "Approved"
      }
    ]
  }
}', 1, NOW(), 1, 40),
 
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'VENDOR RE EVALUATION', '{
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
}','{
  "exitCriteria": {
    "exitTransitionStatus": [
      {
        "conditionalWorkflowStatusId": 48,
        "conditionalWorkflowStatusName": "Approved"
      }
    ]
  }
}', 1, NOW(), 1, 41),        
 
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'SAMPLE INSPECTION', '{
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
        "conditionalWorkflowStatusId": 55,
        "conditionalWorkflowStatusName": "Purchase Head Approved"
      }
    ],
    "applicableStatus": [
      55
    ]
  }
}', 1, NOW(), 1, 42);




INSERT INTO workflow.eqms_project_type_task_group_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id, fk_eqms_project_type_tasks_id, status, created_date, created_by
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 40, 40, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 41, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 42, 1, NOW(), 1);



INSERT INTO workflow.eqms_project_type_tasks_department_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id, fk_eqms_project_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 40, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 41, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 42, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 42, 1, NOW(), 1);




INSERT INTO workflow.eqms_form_type_task_group_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_project_type_task_group_id, status, created_date, created_by
) VALUES

(VAR_TENANT_KEY, VAR_ORG_ID, 122, 40, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 124, 41, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 139, 42, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_entity_subscription_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_subscription_id, fk_eqms_project_type_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 13, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 14, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 15, 1, NULL, NULL);


INSERT INTO workflow.eqms_project_type_tasks_url
(eqms_tenant_key, fk_eqms_organization_id,fk_eqms_project_type_tasks_id,template_url,status,created_date, created_by)
VALUES
(1, 1, 40, '{domain}/vendor-management/vendor-evaluation/{context_instance_id}', 1, NOW(), 1),
(1, 1, 41, '{domain}/vendor-management/vendor-re-evaluation/{context_instance_id}', 1, NOW(), 1);

END $$;