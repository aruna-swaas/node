-- Rollback: Revoke permissions on tables from required module 'abac'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_type_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form FROM risk_app_user;

REVOKE USAGE ON SCHEMA abac FROM risk_app_user;