-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'abac'

GRANT USAGE ON SCHEMA abac TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO magic_save_app_user;