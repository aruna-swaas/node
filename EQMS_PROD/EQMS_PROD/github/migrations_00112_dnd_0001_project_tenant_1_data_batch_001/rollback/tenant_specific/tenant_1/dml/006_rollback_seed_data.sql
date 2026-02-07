-- Rollback: Delete seed data from file 006_WORKFLOW.sql
-- Original file: 006_WORKFLOW.sql
-- Seed data file: 006_seed_data.sql
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

-- Delete from workflow.eqms_project_type_entity_subscription_mapper
DELETE FROM workflow.eqms_project_type_entity_subscription_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_subscription_id = 1 AND fk_eqms_project_type_id = 2 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 27 AND template_url = '{domain}/dnd/installation-proceture/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 26 AND template_url = '{domain}/dnd/initiate-manufacturing-license/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 25 AND template_url = '{domain}/dnd/product-life-declaration/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 23 AND template_url = '{domain}/dnd/dir/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 22 AND template_url = '{domain}/dnd/acknowledgement-design-transfer/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 21 AND template_url = '{domain}/dnd/input-output-traceability-matrix/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 20 AND template_url = '{domain}/dnd/clause-applicability/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 19 AND template_url = '{domain}/dnd/design-output-document/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 18 AND template_url = '{domain}/dnd/clinical-evaluation/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 17 AND template_url = '{domain}/project-details/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 16 AND template_url = '{domain}/project-details/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 15 AND template_url = '{domain}/dnd/design-quality-plan/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 14 AND template_url = '{domain}/dnd/design-input-adequacy-checklist/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 13 AND template_url = '{domain}/dnd/dir/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 12 AND template_url = '{domain}/dnd/intended-use/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 11 AND template_url = '{domain}/dnd/functional-block/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 10 AND template_url = '{domain}/dnd/dig/specification/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 9 AND template_url = '{domain}/dnd/project-plan/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 7 AND template_url = '{domain}/project-details/pnd/review/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 6 AND template_url = '{domain}/project-details/pnd/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 5 AND template_url = '{domain}/project-details/product-realization-plan/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 4 AND template_url = '{domain}/project-details/feasibility-study/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 3 AND template_url = '{domain}/project-details/hld/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 2 AND template_url = '{domain}/project-details/market-study/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_url
DELETE FROM workflow.eqms_project_type_tasks_url WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 1 AND template_url = '{domain}/project-details/{context_instance_id}' AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 29 AND fk_eqms_project_type_task_group_id = 27 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 34 AND fk_eqms_project_type_task_group_id = 26 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 49 AND fk_eqms_project_type_task_group_id = 25 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 24 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 18 AND fk_eqms_project_type_task_group_id = 23 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 1 AND fk_eqms_project_type_task_group_id = 22 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 33 AND fk_eqms_project_type_task_group_id = 21 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 32 AND fk_eqms_project_type_task_group_id = 20 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 31 AND fk_eqms_project_type_task_group_id = 19 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 30 AND fk_eqms_project_type_task_group_id = 18 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 28 AND fk_eqms_project_type_task_group_id = 17 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 15 AND fk_eqms_project_type_task_group_id = 16 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 35 AND fk_eqms_project_type_task_group_id = 15 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 20 AND fk_eqms_project_type_task_group_id = 14 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 19 AND fk_eqms_project_type_task_group_id = 13 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 18 AND fk_eqms_project_type_task_group_id = 12 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 17 AND fk_eqms_project_type_task_group_id = 11 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 10 AND fk_eqms_project_type_task_group_id = 10 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 11 AND fk_eqms_project_type_task_group_id = 9 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 9 AND fk_eqms_project_type_task_group_id = 8 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 7 AND fk_eqms_project_type_task_group_id = 7 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 7 AND fk_eqms_project_type_task_group_id = 6 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 6 AND fk_eqms_project_type_task_group_id = 5 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 5 AND fk_eqms_project_type_task_group_id = 4 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 4 AND fk_eqms_project_type_task_group_id = 3 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 3 AND fk_eqms_project_type_task_group_id = 2 AND status = 1;

-- Delete from workflow.eqms_form_type_task_group_mapping
DELETE FROM workflow.eqms_form_type_task_group_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 2 AND fk_eqms_project_type_task_group_id = 1 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 5 AND fk_eqms_project_tasks_id = 10 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 27 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 26 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 25 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 24 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 23 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 22 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 21 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 20 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 19 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 18 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 17 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 16 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 15 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 14 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 13 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 12 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 4 AND fk_eqms_project_tasks_id = 11 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 11 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 10 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 9 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 4 AND fk_eqms_project_tasks_id = 8 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 7 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 4 AND fk_eqms_project_tasks_id = 6 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 4 AND fk_eqms_project_tasks_id = 5 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 4 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 12 AND fk_eqms_project_tasks_id = 4 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 4 AND fk_eqms_project_tasks_id = 3 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 4 AND fk_eqms_project_tasks_id = 2 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 3 AND fk_eqms_project_tasks_id = 1 AND status = 1;

-- Delete from workflow.eqms_project_type_tasks_department_mapper
DELETE FROM workflow.eqms_project_type_tasks_department_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_organization_department_id = 4 AND fk_eqms_project_tasks_id = 1 AND status = 1;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 22 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 26;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 21 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 22;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 20 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 21;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 19 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 20;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 27 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 19;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 18 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 27;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 25 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 18;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 17 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 25;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 16 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 17;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 24 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 16;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 15 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 24;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 14 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 15;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 23 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 14;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 13 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 23;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 12 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 13;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 11 AND fk_eqms_trigger_workflow_status_id = 4 AND fk_eqms_dependent_project_type_tasks_id = 12;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 10 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 11;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 9 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 10;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 8 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 9;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 7 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 8;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 6 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 7;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 5 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 6;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 4 AND fk_eqms_trigger_workflow_status_id = 8 AND fk_eqms_dependent_project_type_tasks_id = 5;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 3 AND fk_eqms_trigger_workflow_status_id = 6 AND fk_eqms_dependent_project_type_tasks_id = 4;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 2 AND fk_eqms_trigger_workflow_status_id = 4 AND fk_eqms_dependent_project_type_tasks_id = 3;

-- Delete from workflow.eqms_project_type_task_dependencies
DELETE FROM workflow.eqms_project_type_task_dependencies WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_tasks_id = 1 AND fk_eqms_trigger_workflow_status_id = 4 AND fk_eqms_dependent_project_type_tasks_id = 2;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 27 AND fk_eqms_project_type_tasks_id = 27 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 26 AND fk_eqms_project_type_tasks_id = 26 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 25 AND fk_eqms_project_type_tasks_id = 25 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 24 AND fk_eqms_project_type_tasks_id = 24 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 23 AND fk_eqms_project_type_tasks_id = 23 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 21 AND fk_eqms_project_type_tasks_id = 22 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 20 AND fk_eqms_project_type_tasks_id = 21 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 19 AND fk_eqms_project_type_tasks_id = 20 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 18 AND fk_eqms_project_type_tasks_id = 19 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 17 AND fk_eqms_project_type_tasks_id = 18 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 16 AND fk_eqms_project_type_tasks_id = 17 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 15 AND fk_eqms_project_type_tasks_id = 16 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 14 AND fk_eqms_project_type_tasks_id = 15 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 13 AND fk_eqms_project_type_tasks_id = 14 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 12 AND fk_eqms_project_type_tasks_id = 13 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 11 AND fk_eqms_project_type_tasks_id = 12 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 10 AND fk_eqms_project_type_tasks_id = 11 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 9 AND fk_eqms_project_type_tasks_id = 10 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 8 AND fk_eqms_project_type_tasks_id = 9 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 7 AND fk_eqms_project_type_tasks_id = 8 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 6 AND fk_eqms_project_type_tasks_id = 7 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 5 AND fk_eqms_project_type_tasks_id = 6 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 4 AND fk_eqms_project_type_tasks_id = 5 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 3 AND fk_eqms_project_type_tasks_id = 4 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 2 AND fk_eqms_project_type_tasks_id = 3 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 1 AND fk_eqms_project_type_tasks_id = 2 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group_tasks
DELETE FROM workflow.eqms_project_type_task_group_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_project_type_task_group_id = 22 AND fk_eqms_project_type_tasks_id = 1 AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_project_type_id = 2 AND task_group_name = 'INSTALLATION PROCEDURE' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_project_type_id = 2 AND task_group_name = 'INITIATE MANUFACTURING LICENSE' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_project_type_id = 2 AND task_group_name = 'PRODUCT LIFE DECLARATION' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_project_type_id = 2 AND task_group_name = 'EXECUTION AND VERIFICATION' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}, {"level": 2, "executionType": "SEQUENTIAL"}, {"level": 3, "executionType": "SEQUENTIAL"}, {"level": 4, "executionType": "PARALLEL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}, {"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 18, "conditionalWorkflowStatusName": "Functional Head Approved"}], "applicableStatus": [6, 18]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_project_type_id = 2 AND task_group_name = 'DIR-LIST' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_project_type_id = 2 AND task_group_name = 'PROJECT CREATION' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_project_type_id = 2 AND task_group_name = 'ACKNOWLEDGEMENT OF DESIGN TRANSFER' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_project_type_id = 2 AND task_group_name = 'INPUT OUTPUT TRACEABILITY MATRIX' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_project_type_id = 2 AND task_group_name = 'QMS CLASS APPLICABILITY' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_project_type_id = 2 AND task_group_name = 'DESIGN OUTPUT DOCUMENT' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "PARALLEL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}], "applicableStatus": [6]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_project_type_id = 2 AND task_group_name = 'CLINICAL EVALUATION' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_project_type_id = 2 AND task_group_name = 'PILOT VALIDATION REPORT' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_project_type_id = 2 AND task_group_name = 'PILOT VALIDATION PLAN' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_project_type_id = 2 AND task_group_name = 'DESIGN QUALITY PLAN' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}, {"enabled": true, "priority": 2, "ruleName": "ANY_REJECT", "resultStatus": "REJECTED", "ruleDescription": "Any single rejection blocks the task", "conditionalWorkflowStatusId": 7, "conditionalWorkflowStatusName": "Rejected"}], "applicableStatus": [6, 7]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_project_type_id = 2 AND task_group_name = 'DESIGN INPUT ADEQUACY CHECKLIST' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_project_type_id = 2 AND task_group_name = 'DIR' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "PARALLEL"}, {"level": 2, "executionType": "PARALLEL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Functional Heads Approved"}], "applicableStatus": [6]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_project_type_id = 2 AND task_group_name = 'INTENDED USE' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_project_type_id = 2 AND task_group_name = 'FUNCTIONAL BLOCK' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_project_type_id = 2 AND task_group_name = 'SPECIFICATION APPLICABILITY' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_project_type_id = 2 AND task_group_name = 'PROJECT PLAN' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_project_type_id = 2 AND task_group_name = 'PND REVIEW BY  FUNCTIONAL HEADS' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "PARALLEL"}, {"level": 2, "executionType": "PARALLEL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"taskStatusRules": [{"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}, {"enabled": true, "priority": 2, "ruleName": "ANY_REJECT", "resultStatus": "REJECTED", "ruleDescription": "Any single rejection blocks the task", "conditionalWorkflowStatusId": 7, "conditionalWorkflowStatusName": "Rejected"}, {"enabled": true, "priority": 1, "ruleName": "ALL_APPROVE", "resultStatus": "APPROVED", "ruleDescription": "All assignees must approve for task completion", "conditionalWorkflowStatusId": 18, "conditionalWorkflowStatusName": "Functional Head Approved"}, {"enabled": true, "priority": 2, "ruleName": "ANY_REJECT", "resultStatus": "REJECTED", "ruleDescription": "Any single rejection blocks the task", "conditionalWorkflowStatusId": 19, "conditionalWorkflowStatusName": "Functional Head Rejected"}], "applicableStatus": [6, 7, 18, 19]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_project_type_id = 2 AND task_group_name = 'PND REVIEW' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_project_type_id = 2 AND task_group_name = 'PND' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_project_type_id = 2 AND task_group_name = 'PRODUCT REALIZATION PLAN' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_project_type_id = 2 AND task_group_name = 'FEASIBILITY' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 8, "conditionalWorkflowStatusName": " CEO Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_project_type_id = 2 AND task_group_name = 'HLD' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_task_group
DELETE FROM workflow.eqms_project_type_task_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_project_type_id = 2 AND task_group_name = 'MARKET RESEARCH STUDY' AND group_execution_rule = '{"assignmentRule": {"executionFlow": [{"level": 1, "executionType": "SEQUENTIAL"}], "assignmentCriteria": {"role_id": 6, "roleType": "system"}}}' AND group_exit_criteria = '{"exitCriteria": {"exitTransitionStatus": [{"conditionalWorkflowStatusId": 6, "conditionalWorkflowStatusName": "Approved"}]}}' AND status = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_project_type_id = 2 AND task_name = 'INSTALLATION PROCEDURE' AND task_stage_order = 1 AND task_order = 27 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_project_type_id = 2 AND task_name = 'INITIATE MANUFACTURING LICENSE' AND task_stage_order = 1 AND task_order = 26 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_project_type_id = 2 AND task_name = 'PRODUCT LIFE DECLARATION' AND task_stage_order = 1 AND task_order = 25 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_project_type_id = 2 AND task_name = 'EXECUTION AND VERIFICATION' AND task_stage_order = 1 AND task_order = 24 AND status = 1 AND has_subtask = 1 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_project_type_id = 2 AND task_name = 'DIR LIST' AND task_stage_order = 1 AND task_order = 23 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 2;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_project_type_id = 2 AND task_name = 'ACKNOWLEDGEMENT OF DESIGN TRANSFER' AND task_stage_order = 1 AND task_order = 22 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_project_type_id = 2 AND task_name = 'INPUT OUTPUT TRACEABILITY MATRIX' AND task_stage_order = 1 AND task_order = 21 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_project_type_id = 2 AND task_name = 'QMS CLASS APPLICABILITY' AND task_stage_order = 1 AND task_order = 20 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_project_type_id = 2 AND task_name = 'DESIGN OUTPUT DOCUMENT' AND task_stage_order = 1 AND task_order = 19 AND status = 1 AND has_subtask = 1 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_project_type_id = 2 AND task_name = 'CLINICAL EVALUATION' AND task_stage_order = 1 AND task_order = 18 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_project_type_id = 2 AND task_name = 'PILOT VALIDATION REPORT' AND task_stage_order = 1 AND task_order = 17 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_project_type_id = 2 AND task_name = 'PILOT VALIDATION PLAN' AND task_stage_order = 1 AND task_order = 16 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_project_type_id = 2 AND task_name = 'DESIGN QUALITY PLAN' AND task_stage_order = 1 AND task_order = 15 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_project_type_id = 2 AND task_name = 'DESIGN INPUT ADEQUACY CHECKLIST' AND task_stage_order = 1 AND task_order = 14 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_project_type_id = 2 AND task_name = 'DIR' AND task_stage_order = 1 AND task_order = 13 AND status = 1 AND has_subtask = 1 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_project_type_id = 2 AND task_name = 'INTENDED USE' AND task_stage_order = 1 AND task_order = 12 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_project_type_id = 2 AND task_name = 'FUNCTIONAL BLOCK' AND task_stage_order = 1 AND task_order = 11 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_project_type_id = 2 AND task_name = 'SPECIFICATION APPLICABILITY' AND task_stage_order = 1 AND task_order = 10 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_project_type_id = 2 AND task_name = 'DESIGN PROJECT PLAN' AND task_stage_order = 1 AND task_order = 9 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_project_type_id = 2 AND task_name = 'PND REVIEW BY FUNCTIONAL HEAD' AND task_stage_order = 1 AND task_order = 8 AND status = 1 AND has_subtask = 1 AND fk_eqms_default_workflow_task_status_id = 17;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_project_type_id = 2 AND task_name = 'PND REVIEW' AND task_stage_order = 1 AND task_order = 7 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_project_type_id = 2 AND task_name = 'PND' AND task_stage_order = 1 AND task_order = 6 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_project_type_id = 2 AND task_name = 'PRODUCT REALIZATION PLAN' AND task_stage_order = 1 AND task_order = 5 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_project_type_id = 2 AND task_name = 'FEASIBILITY STUDY' AND task_stage_order = 1 AND task_order = 4 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_project_type_id = 2 AND task_name = 'HLD' AND task_stage_order = 1 AND task_order = 3 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_project_type_id = 2 AND task_name = 'MARKET RESEARCH AND STUDY' AND task_stage_order = 1 AND task_order = 2 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_project_type_tasks
DELETE FROM workflow.eqms_project_type_tasks WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_project_type_id = 2 AND task_name = 'PROJECT CREATION' AND task_stage_order = 1 AND task_order = 1 AND status = 1 AND has_subtask = 0 AND fk_eqms_default_workflow_task_status_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 18 AND fk_eqms_role_lk_ref_id = 14;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 17 AND fk_eqms_role_lk_ref_id = 14;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 16 AND fk_eqms_role_lk_ref_id = 14;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 10 AND fk_eqms_role_lk_ref_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 9 AND fk_eqms_role_lk_ref_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 36;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 33;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 30;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 27;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 24;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 21;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 18;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 15;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 12;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 9;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 6;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 8 AND fk_eqms_role_lk_ref_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 38;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 35;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 32;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 29;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 26;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 23;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 20;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 17;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 14;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 11;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 7 AND fk_eqms_role_lk_ref_id = 5;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 38;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 35;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 32;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 29;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 26;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 23;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 20;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 17;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 14;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 11;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 8;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 6 AND fk_eqms_role_lk_ref_id = 5;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 36;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 33;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 30;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 27;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 24;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 21;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 18;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 15;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 12;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 9;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 6;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 5 AND fk_eqms_role_lk_ref_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 37;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 34;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 31;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 28;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 25;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 22;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 19;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 16;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 13;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 10;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 7;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 4 AND fk_eqms_role_lk_ref_id = 4;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 37;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 34;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 31;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 28;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 25;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 22;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 19;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 16;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 13;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 10;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 7;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 3 AND fk_eqms_role_lk_ref_id = 4;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 36;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 33;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 30;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 27;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 24;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 21;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 18;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 15;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 12;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 9;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 6;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 2 AND fk_eqms_role_lk_ref_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 17;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 36;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 33;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 30;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 27;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 24;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 21;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 18;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 15;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 12;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 9;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 6;

-- Delete from workflow.eqms_workflow_status_transition_template_role_mapper
DELETE FROM workflow.eqms_workflow_status_transition_template_role_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_workflow_status_transition_template_id = 1 AND fk_eqms_role_lk_ref_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 19 AND fk_eqms_workflow_new_task_status_id = 17 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 17 AND fk_eqms_workflow_new_task_status_id = 19 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 17 AND fk_eqms_workflow_new_task_status_id = 6 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 6 AND fk_eqms_workflow_new_task_status_id = 9 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 6 AND fk_eqms_workflow_new_task_status_id = 8 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 7 AND fk_eqms_workflow_new_task_status_id = 2 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 4 AND fk_eqms_workflow_new_task_status_id = 7 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 4 AND fk_eqms_workflow_new_task_status_id = 6 AND fk_eqms_transition_owner_type_lk_id = 3;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 5 AND fk_eqms_workflow_new_task_status_id = 2 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 3 AND fk_eqms_workflow_new_task_status_id = 5 AND fk_eqms_transition_owner_type_lk_id = 2;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 3 AND fk_eqms_workflow_new_task_status_id = 4 AND fk_eqms_transition_owner_type_lk_id = 2;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 2 AND fk_eqms_workflow_new_task_status_id = 3 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_status_transition_template
DELETE FROM workflow.eqms_workflow_status_transition_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_organization_workflow_template_id = 1 AND fk_eqms_workflow_old_task_status_id = 1 AND fk_eqms_workflow_new_task_status_id = 2 AND fk_eqms_transition_owner_type_lk_id = 1;

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_workflow_template_id = 1 AND task_status = 'Functional Head Rejected' AND status_order = 7 AND slug = 'functional_head_rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_workflow_template_id = 1 AND task_status = 'Functional Head Approved' AND status_order = 6 AND slug = 'functional_head_approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_workflow_template_id = 1 AND task_status = 'Functional Head In Review' AND status_order = 3 AND slug = 'functional_head_in_review';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_workflow_template_id = 1 AND task_status = 'CEO Rejected' AND status_order = 9 AND slug = 'ceo_rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_workflow_template_id = 1 AND task_status = 'CEO Approved' AND status_order = 8 AND slug = 'ceo_approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_workflow_template_id = 1 AND task_status = 'Rejected' AND status_order = 7 AND slug = 'rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_workflow_template_id = 1 AND task_status = 'Approved' AND status_order = 6 AND slug = 'approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_workflow_template_id = 1 AND task_status = 'Reviewer Rejected' AND status_order = 5 AND slug = 'reviewer_rejected';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_workflow_template_id = 1 AND task_status = 'Reviewer Approved' AND status_order = 4 AND slug = 'reviewer_approved';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_workflow_template_id = 1 AND task_status = 'In Review' AND status_order = 3 AND slug = 'in_review';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_workflow_template_id = 1 AND task_status = 'In Progress' AND status_order = 2 AND slug = 'in_progress';

-- Delete from workflow.eqms_workflow_task_status
DELETE FROM workflow.eqms_workflow_task_status WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_workflow_template_id = 1 AND task_status = 'Yet to start' AND status_order = 1 AND slug = 'yet_to_start';

-- Delete from workflow.eqms_project_type
DELETE FROM workflow.eqms_project_type WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND project_type = 'DESIGN' AND version = 1 AND status = 1 AND fk_eqms_workflow_template_id = 1 AND slug = 'design';

-- Delete from workflow.eqms_workflow_template
DELETE FROM workflow.eqms_workflow_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND workflow_name = 'Design and Development' AND status = 1;

END $$;
