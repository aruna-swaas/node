-- Rollback: Revoke permissions on tables from required module 'abac'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form FROM sales_app_user;

REVOKE USAGE ON SCHEMA abac FROM sales_app_user;