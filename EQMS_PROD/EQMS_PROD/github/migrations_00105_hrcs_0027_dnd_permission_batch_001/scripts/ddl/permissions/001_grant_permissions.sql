-- Permissions for module 'dnd': Grant access to tables from required module 'hrcs'
-- App users: dnd_app_user

GRANT USAGE ON SCHEMA hrcs TO dnd_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO dnd_app_user;