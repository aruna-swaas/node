DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
BEGIN

INSERT INTO workflow.eqms_workflow_template (
  eqms_tenant_key, fk_eqms_organization_id, workflow_name, status, created_date, created_by,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'REGULATIONS', 1, NOW(), 1,4);

INSERT INTO workflow.eqms_project_type (
  eqms_tenant_key, fk_eqms_organization_id, project_type, version, status, created_date, created_by, fk_eqms_workflow_template_id, slug,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'TEST LICENSE', 1, 1, NOW(), 1, 4, 'test_license', 6),
(VAR_TENANT_KEY, VAR_ORG_ID, 'MANUFACTURE LICENSE', 1, 1, NOW(), 1, 4, 'manufacture_license', 7),
(VAR_TENANT_KEY, VAR_ORG_ID, 'PLANT MASTER', 1, 1, NOW(), 1, 4, 'plant_master', 8),
(VAR_TENANT_KEY, VAR_ORG_ID, 'DEVICE MASTER', 1, 1, NOW(), 1, 4, 'device_master', 9);


INSERT INTO workflow.eqms_workflow_task_status (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id, task_status, status, created_date, created_by, status_order,ref_id,slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Yet to Start', 1, NOW(), 1, 1,26,'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'In Progress', 1, NOW(), 1, 2,27,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'In Review', 1, NOW(), 1, 3,28,'in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Reviewer Approved', 1, NOW(), 1, 4,29,'reviewer_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Reviewer Rejected', 1, NOW(), 1, 5,30,'reviewer_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Approved', 1, NOW(), 1,6,31,'approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Rejected', 1, NOW(), 1, 7,32,'rejected');



INSERT INTO workflow.eqms_workflow_status_transition_template (
  eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id, fk_eqms_workflow_old_task_status_id, fk_eqms_workflow_new_task_status_id, status, created_date, created_by, fk_eqms_transition_owner_type_lk_id,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 26, 27, 1, NOW(), 1, 1,29),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 27, 28, 1, NOW(), 1, 1,30),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 28, 29, 1, NOW(), 1, 2,31),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 28, 30, 1, NOW(), 1, 2,32),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 29, 31, 1, NOW(), 1, 3,33),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 29, 32, 1, NOW(), 1, 3,34),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 30, 27, 1, NOW(), 1, 1,35),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 32, 27, 1, NOW(), 1, 1,36);

INSERT INTO workflow.eqms_workflow_status_transition_template_role_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id, fk_eqms_role_lk_ref_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 29, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 31, 16, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 32, 16, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 33, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, 17, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, 15, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 15, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_name, task_stage_order, task_order, status, created_date, created_by, has_subtask, ref_id, fk_eqms_default_workflow_task_status_id 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'TEST LICENSE', 1, 1, 1, NOW(), 1, 0, 33,26),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'MANUFACTURE LICENSE', 1, 1, 1, NOW(), 1, 0, 34,26),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'PLANT MASTER', 1, 1, 1, NOW(), 1, 0, 35,26),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'DEVICE MASTER', 1, 1, 1, NOW(), 1, 0, 36,26);


INSERT INTO workflow.eqms_project_type_task_group (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_group_name, group_execution_rule, group_exit_criteria, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'TEST LICENSE', '{
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
}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 31, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 33),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'MANUFACTURE LICENSE', '{
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
}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 31, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 34),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'PLANT MASTER', '{
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
}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 31, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 35),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'DEVICE MASTER', '{
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
}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 31, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 36);


INSERT INTO workflow.eqms_project_type_task_group_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id, fk_eqms_project_type_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 33, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, 34, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 36, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks_department_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id, fk_eqms_project_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 34, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 36, 1, NOW(), 1);


INSERT INTO workflow.eqms_form_type_task_group_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_project_type_task_group_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 34, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 36, 1, NOW(), 1);

INSERT INTO workflow.eqms_project_type_tasks_url
(eqms_tenant_key, fk_eqms_organization_id,fk_eqms_project_type_tasks_id,template_url,status,created_date, created_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 33, '{domain}/regulation/add-test-license/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, '{domain}/regulation/add-manufacturing-license-checklist/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, '{domain}/regulation/executive-summary/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, '{domain}/regulation/general-information/{context_instance_id}', 1, NOW(), 1);

END $$;