-- Rollback: Revoke permissions on tables from required module 'abac'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_type_lk FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form FROM vendor_purchase_app_user;

REVOKE USAGE ON SCHEMA abac FROM vendor_purchase_app_user;