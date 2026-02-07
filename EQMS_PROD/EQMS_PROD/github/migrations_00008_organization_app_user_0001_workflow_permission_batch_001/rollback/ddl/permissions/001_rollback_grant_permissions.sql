-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'workflow'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_task_status FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header FROM organization_app_user;

REVOKE USAGE ON SCHEMA workflow FROM organization_app_user;