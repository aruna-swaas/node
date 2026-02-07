-- Rollback: Revoke permissions on tables from required module 'dms'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generation_type_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_type_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record FROM dnd_app_user;

REVOKE USAGE ON SCHEMA dms FROM dnd_app_user;