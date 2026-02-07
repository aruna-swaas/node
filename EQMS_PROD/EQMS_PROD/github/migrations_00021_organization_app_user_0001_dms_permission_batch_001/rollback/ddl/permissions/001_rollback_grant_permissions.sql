-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'dms'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_variable FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_compressed_files_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_compressed_files FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record FROM organization_app_user;

REVOKE USAGE ON SCHEMA dms FROM organization_app_user;