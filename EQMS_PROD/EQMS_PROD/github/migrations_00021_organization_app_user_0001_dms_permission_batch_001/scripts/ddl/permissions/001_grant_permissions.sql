-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'dms'

GRANT USAGE ON SCHEMA dms TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_compressed_files TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_compressed_files_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_variable TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_type_lk TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags_history TO organization_app_user;