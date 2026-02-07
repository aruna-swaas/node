-- Rollback: Revoke permissions on tables from required module 'workflow'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_task_status FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance FROM dnd_app_user;

REVOKE USAGE ON SCHEMA workflow FROM dnd_app_user;