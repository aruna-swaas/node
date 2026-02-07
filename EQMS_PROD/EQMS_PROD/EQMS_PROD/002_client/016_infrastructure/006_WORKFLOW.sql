DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
BEGIN


INSERT INTO workflow.eqms_workflow_template (
  eqms_tenant_key, fk_eqms_organization_id, workflow_name, status, created_date, created_by,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'INFRASTRUCTURE', 1, NOW(), 1,11);

INSERT INTO workflow.eqms_project_type (
  eqms_tenant_key, fk_eqms_organization_id, project_type, version, status, created_date, created_by, fk_eqms_workflow_template_id, slug,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'INFRASTRUCTURE REQUEST', 1, 1, NOW(), 1, 11, 'infrastructure_request', 26),
(VAR_TENANT_KEY, VAR_ORG_ID, 'INFRASTRUCTURE QUALIFICATION', 1, 1, NOW(), 1, 11, 'infrastructure_qualification', 27),
(VAR_TENANT_KEY, VAR_ORG_ID, 'MAINTENANCE REPORT', 1, 1, NOW(), 1, 11, 'maintenance_report', 28);


INSERT INTO workflow.eqms_workflow_task_status (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id, task_status, status, created_date, created_by, status_order,ref_id,slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Yet to Start', 1, NOW(), 1, 1,79,'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'In Progress', 1, NOW(), 1, 2,80,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'In Review', 1, NOW(), 1, 3,81,'in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Reviewer Approved', 1, NOW(), 1, 4,82,'reviewer_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Reviewer Rejected', 1, NOW(), 1, 5,83,'reviewer_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Approved', 1, NOW(), 1,6,84,'approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Rejected', 1, NOW(), 1, 7,85,'rejected');


INSERT INTO workflow.eqms_workflow_status_transition_template (
  eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id, fk_eqms_workflow_old_task_status_id, fk_eqms_workflow_new_task_status_id, status, created_date, created_by, fk_eqms_transition_owner_type_lk_id,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 79, 80, 1, NOW(), 1, 1,89),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 80, 81, 1, NOW(), 1, 1,90),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 81, 82, 1, NOW(), 1, 2,91),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 81, 83, 1, NOW(), 1, 2,92),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 82, 84, 1, NOW(), 1, 3,93),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 82, 85, 1, NOW(), 1, 3,94),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 83, 80, 1, NOW(), 1, 1,95),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 85, 80, 1, NOW(), 1, 1,96);


INSERT INTO workflow.eqms_workflow_status_transition_template_role_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id, fk_eqms_role_lk_ref_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 89, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 89, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 90, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 90, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 91, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 91, 22, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 92, 4, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 92, 22, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 93, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 93, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 94, 5, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 94, 23, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 95, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 95, 21, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 96, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 96, 21, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_name, task_stage_order, task_order, status, created_date, created_by, has_subtask, ref_id, fk_eqms_default_workflow_task_status_id 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 'INFRASTRUCTURE REQUEST', 1, 1, 1, NOW(), 1, 0, 92,79),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 'INFRASTRUCTURE QUALIFICATION', 1, 1, 1, NOW(), 1, 0, 93,79),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, 'MAINTENANCE REPORT', 1, 1, 1, NOW(), 1, 0, 94,79);



INSERT INTO workflow.eqms_project_type_task_group (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_group_name, group_execution_rule, group_exit_criteria, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 'INFRASTRUCTURE REQUEST', '{
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
}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 84, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 85),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 'INFRASTRUCTURE QUALIFICATION', '{
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
}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 84, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 86),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, 'MAINTENANCE REPORT', '{
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
}', '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 84, "conditionalWorkflowStatusName": "Approved"}]}}', 1, NOW(), 1, 87);

INSERT INTO workflow.eqms_project_type_task_group_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id, fk_eqms_project_type_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 85, 92, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 86, 93, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 87, 94, 1, NOW(), 1);





INSERT INTO workflow.eqms_form_type_task_group_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_project_type_task_group_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 85, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 86, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 87, 1, NOW(), 1);


INSERT INTO organization.eqms_module (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, module_name, module_type, module_slug, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'INFRASTRUCTURE', 1, 'infrastructure', 1, NOW(), 1);

INSERT INTO organization.eqms_entity_subscription (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_subscribed_module_id, subscription_status, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 11, 1, 1, NOW(), 1);

INSERT INTO workflow.eqms_project_type_entity_subscription_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_subscription_id, fk_eqms_project_type_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 26, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 27, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 28, 1, NULL, NULL);


INSERT INTO workflow.eqms_project_type_tasks_url
(eqms_tenant_key, fk_eqms_organization_id,fk_eqms_project_type_tasks_id,template_url,status,created_date, created_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 92, '{domain}/infrastructure/infrastructure-request/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 93, '{domain}/infrastructure/infrastructure-qualification/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 94, '{domain}/infrastructure/maintenance-report/{context_instance_id}', 1, NOW(), 1);



END $$;