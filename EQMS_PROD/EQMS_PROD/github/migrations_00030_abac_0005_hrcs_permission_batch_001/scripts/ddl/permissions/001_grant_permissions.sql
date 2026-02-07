-- Permissions for module 'hrcs': Grant access to tables from required module 'abac'
-- App users: hrcs_app_user, magic_read_app_user, magic_save_app_user

GRANT USAGE ON SCHEMA abac TO hrcs_app_user;
GRANT USAGE ON SCHEMA abac TO magic_read_app_user;
GRANT USAGE ON SCHEMA abac TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context TO magic_save_app_user;