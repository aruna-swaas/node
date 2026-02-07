-- Global user permissions: Grant access to auth_app_user
-- on tables created by module 'workflow'

GRANT USAGE ON SCHEMA workflow TO auth_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_task_group_mapping TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header TO auth_app_user;