-- Permissions for module 'risk_management': Grant access to tables from required module 'abac'
-- App users: risk_app_user

GRANT USAGE ON SCHEMA abac TO risk_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_type_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context TO risk_app_user;