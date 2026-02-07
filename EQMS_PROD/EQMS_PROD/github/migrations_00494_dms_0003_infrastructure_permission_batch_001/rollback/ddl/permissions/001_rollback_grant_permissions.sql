-- Rollback: Revoke permissions on tables from required module 'dms'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record FROM infrastructure_app_user;

REVOKE USAGE ON SCHEMA dms FROM infrastructure_app_user;