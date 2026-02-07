-- Permissions for module 'infrastructure': Grant access to tables from required module 'dnd'
-- App users: infrastructure_app_user

GRANT USAGE ON SCHEMA dnd TO infrastructure_app_user;
GRANT USAGE ON SCHEMA organization TO infrastructure_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk_history TO infrastructure_app_user;