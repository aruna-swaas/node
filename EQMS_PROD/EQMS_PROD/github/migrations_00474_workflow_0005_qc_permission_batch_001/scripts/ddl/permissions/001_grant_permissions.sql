-- Permissions for module 'qc': Grant access to tables from required module 'workflow'
-- App users: quality_control_app_user

GRANT USAGE ON SCHEMA workflow TO quality_control_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type TO quality_control_app_user;