-- Permissions for module 'sales': Grant access to tables from required module 'dms'
-- App users: sales_app_user

GRANT USAGE ON SCHEMA dms TO sales_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags TO sales_app_user;