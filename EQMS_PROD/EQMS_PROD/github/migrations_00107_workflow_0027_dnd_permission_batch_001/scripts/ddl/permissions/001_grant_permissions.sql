-- Permissions for module 'dnd': Grant access to tables from required module 'workflow'
-- App users: dnd_app_user

GRANT USAGE ON SCHEMA workflow TO dnd_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_task_status TO dnd_app_user;