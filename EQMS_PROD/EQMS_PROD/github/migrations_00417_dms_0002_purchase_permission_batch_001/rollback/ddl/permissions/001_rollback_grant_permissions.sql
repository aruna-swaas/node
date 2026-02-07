-- Rollback: Revoke permissions on tables from required module 'dms'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template FROM vendor_purchase_app_user;

REVOKE USAGE ON SCHEMA dms FROM vendor_purchase_app_user;