-- Permissions for module 'sales': Grant access to tables from required module 'hrcs'
-- App users: sales_app_user

GRANT USAGE ON SCHEMA hrcs TO sales_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO sales_app_user;