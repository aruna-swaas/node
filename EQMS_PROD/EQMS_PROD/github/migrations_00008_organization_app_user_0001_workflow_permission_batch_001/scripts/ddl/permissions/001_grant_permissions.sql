-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'workflow'

GRANT USAGE ON SCHEMA workflow TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_task_status TO organization_app_user;