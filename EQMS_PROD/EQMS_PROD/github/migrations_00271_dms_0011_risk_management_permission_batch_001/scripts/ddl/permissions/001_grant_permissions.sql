-- Permissions for module 'risk_management': Grant access to tables from required module 'dms'
-- App users: risk_app_user

GRANT USAGE ON SCHEMA dms TO risk_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_history TO risk_app_user;