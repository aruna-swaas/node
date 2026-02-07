-- Permissions for module 'dnd': Grant access to tables from required module 'abac'
-- App users: dnd_app_user

GRANT USAGE ON SCHEMA abac TO dnd_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_policy_mapper TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_policy_mapper_history TO dnd_app_user;