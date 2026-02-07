-- Permissions for module 'purchase': Grant access to tables from required module 'dms'
-- App users: vendor_purchase_app_user

GRANT USAGE ON SCHEMA dms TO vendor_purchase_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags TO vendor_purchase_app_user;