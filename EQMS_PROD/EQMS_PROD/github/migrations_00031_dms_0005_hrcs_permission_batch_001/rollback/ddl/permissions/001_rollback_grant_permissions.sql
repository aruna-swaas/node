-- Rollback: Revoke permissions on tables from required module 'dms'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA dms FROM hrcs_app_user;
REVOKE USAGE ON SCHEMA dms FROM magic_read_app_user;
REVOKE USAGE ON SCHEMA dms FROM magic_save_app_user;