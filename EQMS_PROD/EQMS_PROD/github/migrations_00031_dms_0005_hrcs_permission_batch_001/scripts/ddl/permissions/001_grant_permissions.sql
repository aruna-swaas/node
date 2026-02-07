-- Permissions for module 'hrcs': Grant access to tables from required module 'dms'
-- App users: hrcs_app_user, magic_read_app_user, magic_save_app_user

GRANT USAGE ON SCHEMA dms TO hrcs_app_user;
GRANT USAGE ON SCHEMA dms TO magic_read_app_user;
GRANT USAGE ON SCHEMA dms TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO magic_save_app_user;