-- Permissions for module 'pre_production': Grant access to tables from required module 'abac'
-- App users: production_app_user

GRANT USAGE ON SCHEMA abac TO production_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO production_app_user;