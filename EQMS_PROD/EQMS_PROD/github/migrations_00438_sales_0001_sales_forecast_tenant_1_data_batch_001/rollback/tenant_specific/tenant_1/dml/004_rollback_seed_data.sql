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
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 53 AND template_url = '{domain}/sales/customer-feedback/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 51 AND template_url = '{domain}/sales/order-acknowledgement/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 52 AND template_url = '{domain}/sales/delivery-dispatch/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 7 AND fk_eqms_project_type_id = 19 AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 7 AND fk_eqms_project_type_id = 18 AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 7 AND fk_eqms_project_type_id = 17 AND status = 1;

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 7 AND fk_eqms_project_type_id = 16 AND status = 1;

-- Delete from organization.eqms_entity_subscription
DELETE FROM organization.eqms_entity_subscription WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_subscribed_module_id = 7 AND subscription_status = 1;

-- Delete from organization.eqms_module
DELETE FROM organization.eqms_module WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND module_name = 'Sales' AND module_type = 1 AND module_slug = 'sales' AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 100 AND fk_eqms_project_type_task_group_id = 46 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 118 AND fk_eqms_project_type_task_group_id = 45 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 98 AND fk_eqms_project_type_task_group_id = 44 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 101 AND fk_eqms_project_type_task_group_id = 43 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 11 AND fk_eqms_project_tasks_id = 53 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 11 AND fk_eqms_project_tasks_id = 52 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 11 AND fk_eqms_project_tasks_id = 51 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 11 AND fk_eqms_project_tasks_id = 50 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 46 AND fk_eqms_project_type_tasks_id = 53 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 45 AND fk_eqms_project_type_tasks_id = 52 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 44 AND fk_eqms_project_type_tasks_id = 51 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 43 AND fk_eqms_project_type_tasks_id = 50 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND fk_eqms_project_type_id = 19 AND task_group_name = 'CUSTOMER FEEDBACK' AND group_execution_rule = '{
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
        "conditionalWorkflowStatusId": 61,
        "conditionalWorkflowStatusName": "Approved"
      }
    ]
  }
}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND fk_eqms_project_type_id = 18 AND task_group_name = 'DELIVERY DISPATCH' AND group_execution_rule = '{
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
        "conditionalWorkflowStatusId": 61,
        "conditionalWorkflowStatusName": "Approved"
      }
    ]
  }
}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND fk_eqms_project_type_id = 17 AND task_group_name = 'ORDER ACKNOWLEDGEMENT' AND group_execution_rule = '{
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
        "conditionalWorkflowStatusId": 61,
        "conditionalWorkflowStatusName": "Approved"
      }
    ]
  }
}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND fk_eqms_project_type_id = 16 AND task_group_name = 'SALES FORECAST' AND group_execution_rule = '{
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
        "conditionalWorkflowStatusId": 61,
        "conditionalWorkflowStatusName": "Approved"
      }
    ],
    "applicableStatus": [
      61
    ]
  }
}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND fk_eqms_project_type_id = 19 AND task_name = 'CUSTOMER FEEDBACK' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 56;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND fk_eqms_project_type_id = 18 AND task_name = 'DELIVERY DISPATCH' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 1 AND fk_eqms_default_workflow_task_status_id = 56;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND fk_eqms_project_type_id = 17 AND task_name = 'ORDER ACKNOWLEDGEMENT' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 1 AND fk_eqms_default_workflow_task_status_id = 56;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND fk_eqms_project_type_id = 16 AND task_name = 'SALES FORECAST' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 1 AND fk_eqms_default_workflow_task_status_id = 56;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 72 AND fk_eqms_role_lk_ref_id = 33;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 71 AND fk_eqms_role_lk_ref_id = 33;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 70 AND fk_eqms_role_lk_ref_id = 35;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 69 AND fk_eqms_role_lk_ref_id = 35;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 68 AND fk_eqms_role_lk_ref_id = 34;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 67 AND fk_eqms_role_lk_ref_id = 34;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 66 AND fk_eqms_role_lk_ref_id = 33;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 65 AND fk_eqms_role_lk_ref_id = 33;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND fk_organization_workflow_template_id = 8 AND fk_eqms_workflow_old_task_status_id = 62 AND fk_eqms_workflow_new_task_status_id = 57 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND fk_organization_workflow_template_id = 8 AND fk_eqms_workflow_old_task_status_id = 60 AND fk_eqms_workflow_new_task_status_id = 57 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND fk_organization_workflow_template_id = 8 AND fk_eqms_workflow_old_task_status_id = 59 AND fk_eqms_workflow_new_task_status_id = 62 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND fk_organization_workflow_template_id = 8 AND fk_eqms_workflow_old_task_status_id = 59 AND fk_eqms_workflow_new_task_status_id = 61 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND fk_organization_workflow_template_id = 8 AND fk_eqms_workflow_old_task_status_id = 58 AND fk_eqms_workflow_new_task_status_id = 60 AND fk_eqms_transition_owner_type_lk_id = 2;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 67 AND fk_organization_workflow_template_id = 8 AND fk_eqms_workflow_old_task_status_id = 58 AND fk_eqms_workflow_new_task_status_id = 59 AND fk_eqms_transition_owner_type_lk_id = 2;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 66 AND fk_organization_workflow_template_id = 8 AND fk_eqms_workflow_old_task_status_id = 57 AND fk_eqms_workflow_new_task_status_id = 58 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 65 AND fk_organization_workflow_template_id = 8 AND fk_eqms_workflow_old_task_status_id = 56 AND fk_eqms_workflow_new_task_status_id = 57 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 62 AND fk_eqms_workflow_template_id = 8 AND task_status = 'Rejected' AND status_order = 7 AND slug = 'rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 61 AND fk_eqms_workflow_template_id = 8 AND task_status = 'Approved' AND status_order = 6 AND slug = 'approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 60 AND fk_eqms_workflow_template_id = 8 AND task_status = 'Reviewer Rejected' AND status_order = 5 AND slug = 'reviewer_rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND fk_eqms_workflow_template_id = 8 AND task_status = 'Reviewer Approved' AND status_order = 4 AND slug = 'reviewer_approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND fk_eqms_workflow_template_id = 8 AND task_status = 'In Review' AND status_order = 3 AND slug = 'in_review';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND fk_eqms_workflow_template_id = 8 AND task_status = 'In Progress' AND status_order = 2 AND slug = 'in_progress';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND fk_eqms_workflow_template_id = 8 AND task_status = 'Yet to start' AND status_order = 1 AND slug = 'yet_to_start';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND project_type = 'CUSTOMER FEEDBACK' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 8 AND slug = 'customer_feedback';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND project_type = 'DELIVERY DISPATCH' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 8 AND slug = 'delivery_dispatch';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND project_type = 'ORDER ACKNOWLEDGEMENT' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 8 AND slug = 'order_acknowledgement';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND project_type = 'SALES FORECAST' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 8 AND slug = 'sales_forecast';

-- Delete from workflow.eqms_workflow_template
DELETE FROM workflow.eqms_workflow_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND workflow_name = 'Sales' AND status = 1;

END $$;
