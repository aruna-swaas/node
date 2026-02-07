-- Rollback: Revoke permissions on tables from required module 'dms'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template FROM quality_control_app_user;

REVOKE USAGE ON SCHEMA dms FROM quality_control_app_user;