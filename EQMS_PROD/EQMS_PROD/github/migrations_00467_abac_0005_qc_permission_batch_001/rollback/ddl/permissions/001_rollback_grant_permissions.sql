-- Rollback: Revoke permissions on tables from required module 'abac'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form FROM quality_control_app_user;

REVOKE USAGE ON SCHEMA abac FROM quality_control_app_user;