-- Global user permissions: Grant access to auth_app_user
-- on tables created by module 'hrcs'

GRANT USAGE ON SCHEMA hrcs TO auth_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO auth_app_user;