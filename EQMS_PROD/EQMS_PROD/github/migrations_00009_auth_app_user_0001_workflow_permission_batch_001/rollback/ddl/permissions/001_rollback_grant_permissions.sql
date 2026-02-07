-- Rollback: Revoke permissions from auth_app_user
-- on tables created by module 'workflow'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_task_group_mapping FROM auth_app_user;

REVOKE USAGE ON SCHEMA workflow FROM auth_app_user;