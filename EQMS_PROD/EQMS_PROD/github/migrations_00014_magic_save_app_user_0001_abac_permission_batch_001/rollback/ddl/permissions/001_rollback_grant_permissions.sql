-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'abac'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA abac FROM magic_save_app_user;