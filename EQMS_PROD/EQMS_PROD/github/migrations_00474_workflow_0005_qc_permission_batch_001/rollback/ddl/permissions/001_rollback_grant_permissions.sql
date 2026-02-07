-- Rollback: Revoke permissions on tables from required module 'workflow'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header FROM quality_control_app_user;

REVOKE USAGE ON SCHEMA workflow FROM quality_control_app_user;