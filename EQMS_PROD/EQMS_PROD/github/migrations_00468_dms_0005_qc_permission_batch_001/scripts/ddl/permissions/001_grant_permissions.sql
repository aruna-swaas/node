-- Permissions for module 'qc': Grant access to tables from required module 'dms'
-- App users: quality_control_app_user

GRANT USAGE ON SCHEMA dms TO quality_control_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO quality_control_app_user;