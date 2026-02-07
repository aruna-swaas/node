-- Permissions for module 'hrcs': Grant access to tables from required module 'workflow'
-- App users: hrcs_app_user, magic_read_app_user, magic_save_app_user

GRANT USAGE ON SCHEMA workflow TO hrcs_app_user;
GRANT USAGE ON SCHEMA workflow TO magic_read_app_user;
GRANT USAGE ON SCHEMA workflow TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type TO magic_save_app_user;