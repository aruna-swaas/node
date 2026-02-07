-- Permissions for module 'pre_production': Grant access to tables from required module 'hrcs'
-- App users: production_app_user

GRANT USAGE ON SCHEMA hrcs TO production_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO production_app_user;