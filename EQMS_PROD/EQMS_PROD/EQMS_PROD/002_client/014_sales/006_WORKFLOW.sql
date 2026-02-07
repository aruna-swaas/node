DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
BEGIN

INSERT INTO workflow.eqms_workflow_template (
  eqms_tenant_key, fk_eqms_organization_id, workflow_name, status, created_date, created_by,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sales', 1, NOW(), 1,8);

INSERT INTO workflow.eqms_project_type (
  eqms_tenant_key, fk_eqms_organization_id, project_type, version, status, created_date, created_by, fk_eqms_workflow_template_id, slug,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'SALES FORECAST', 1, 1, NOW(), 1, 8, 'sales_forecast', 16),
(VAR_TENANT_KEY, VAR_ORG_ID, 'ORDER ACKNOWLEDGEMENT', 1, 1, NOW(), 1, 8, 'order_acknowledgement', 17),
(VAR_TENANT_KEY, VAR_ORG_ID, 'DELIVERY DISPATCH', 1, 1, NOW(), 1, 8, 'delivery_dispatch', 18),
(VAR_TENANT_KEY, VAR_ORG_ID, 'CUSTOMER FEEDBACK', 1, 1, NOW(), 1, 8, 'customer_feedback', 19);


INSERT INTO workflow.eqms_workflow_task_status (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id, task_status, status, created_date, created_by, status_order,ref_id,slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Yet to start', 1, NOW(), 1, 1,56,'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'In Progress', 1, NOW(), 1, 2,57,'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'In Review', 1, NOW(), 1, 3,58,'in_review'),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Reviewer Approved', 1, NOW(), 1, 4,59,'reviewer_approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Reviewer Rejected', 1, NOW(), 1, 5,60,'reviewer_rejected'),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Approved', 1, NOW(), 1, 6,61,'approved'),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Rejected', 1, NOW(), 1, 7,62,'rejected');


INSERT INTO workflow.eqms_workflow_status_transition_template (
  eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id, fk_eqms_workflow_old_task_status_id, fk_eqms_workflow_new_task_status_id, status, created_date, created_by, fk_eqms_transition_owner_type_lk_id,ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 56, 57, 1, NOW(), 1, 1,65),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 57, 58, 1, NOW(), 1, 1,66),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 58, 59, 1, NOW(), 1, 2,67),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 58, 60, 1, NOW(), 1, 2,68),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 59, 61, 1, NOW(), 1, 3,69),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 59, 62, 1, NOW(), 1, 3,70),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 60, 57, 1, NOW(), 1, 1,71),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 62, 57, 1, NOW(), 1, 1,72);




INSERT INTO workflow.eqms_workflow_status_transition_template_role_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id, fk_eqms_role_lk_ref_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 65, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 66, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 67, 34, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 68, 34, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 69, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 70, 35, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 71, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 72, 33, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_name, task_stage_order, task_order, status, created_date, created_by, has_subtask, ref_id, fk_eqms_default_workflow_task_status_id 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 'SALES FORECAST', 1, 1, 1, NOW(), 1, 1, 50,56),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'ORDER ACKNOWLEDGEMENT', 1, 1, 1, NOW(), 1, 1, 51,56),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 'DELIVERY DISPATCH', 1, 1, 1, NOW(), 1, 1, 52,56),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 'CUSTOMER FEEDBACK', 1, 1, 1, NOW(), 1, 0, 53,56);



INSERT INTO workflow.eqms_project_type_task_group (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id, task_group_name, group_execution_rule, group_exit_criteria, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 'SALES FORECAST', '{
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
        "conditionalWorkflowStatusId": 61,
        "conditionalWorkflowStatusName": "Approved"
      }
    ],
    "applicableStatus": [
      61
    ]
  }
}', 1, NOW(), 1, 43),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'ORDER ACKNOWLEDGEMENT', '{
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
        "conditionalWorkflowStatusId": 61,
        "conditionalWorkflowStatusName": "Approved"
      }
    ]
  }
}', 1, NOW(), 1, 44),
  (VAR_TENANT_KEY, VAR_ORG_ID, 18, 'DELIVERY DISPATCH', '{
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
        "conditionalWorkflowStatusId": 61,
        "conditionalWorkflowStatusName": "Approved"
      }
    ]
  }
}', 1, NOW(), 1, 45),
  (VAR_TENANT_KEY, VAR_ORG_ID, 19, 'CUSTOMER FEEDBACK', '{
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
        "conditionalWorkflowStatusId": 61,
        "conditionalWorkflowStatusName": "Approved"
      }
    ]
  }
}', 1, NOW(), 1, 46);


INSERT INTO workflow.eqms_project_type_task_group_tasks (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id, fk_eqms_project_type_tasks_id, status, created_date, created_by
) VALUES
 
(VAR_TENANT_KEY, VAR_ORG_ID, 43, 50, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 44, 51, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 52, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 53, 1, NOW(), 1);
 
 
 
INSERT INTO workflow.eqms_project_type_tasks_department_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id, fk_eqms_project_tasks_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 50, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 51, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 52, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 53, 1, NOW(), 1);


INSERT INTO workflow.eqms_form_type_task_group_mapping (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_project_type_task_group_id, status, created_date, created_by
) VALUES
 
(VAR_TENANT_KEY, VAR_ORG_ID, 101, 43, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 44, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 45, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 46, 1, NOW(), 1);

INSERT INTO organization.eqms_module (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, module_name, module_type, module_slug, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Sales', 1, 'sales', 1, NOW(), 1);

INSERT INTO organization.eqms_entity_subscription (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_subscribed_module_id, subscription_status, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 7, 1, 1, NOW(), 1);


INSERT INTO workflow.eqms_project_type_entity_subscription_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_subscription_id, fk_eqms_project_type_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 16, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 17, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 18, 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 19, 1, NULL, NULL);

INSERT INTO workflow.eqms_project_type_tasks_url
(eqms_tenant_key, fk_eqms_organization_id,fk_eqms_project_type_tasks_id,template_url,status,created_date, created_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 52, '{domain}/sales/delivery-dispatch/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 51, '{domain}/sales/order-acknowledgement/{context_instance_id}', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, '{domain}/sales/customer-feedback/{context_instance_id}', 1, NOW(), 1);



END $$;