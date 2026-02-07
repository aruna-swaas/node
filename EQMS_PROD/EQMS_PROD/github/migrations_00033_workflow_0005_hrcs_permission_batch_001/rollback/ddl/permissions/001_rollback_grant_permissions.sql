-- Rollback: Revoke permissions on tables from required module 'workflow'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA workflow FROM hrcs_app_user;
REVOKE USAGE ON SCHEMA workflow FROM magic_read_app_user;
REVOKE USAGE ON SCHEMA workflow FROM magic_save_app_user;