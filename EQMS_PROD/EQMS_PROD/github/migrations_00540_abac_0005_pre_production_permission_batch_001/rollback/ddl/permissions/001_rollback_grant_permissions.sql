-- Rollback: Revoke permissions on tables from required module 'abac'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form FROM production_app_user;

REVOKE USAGE ON SCHEMA abac FROM production_app_user;