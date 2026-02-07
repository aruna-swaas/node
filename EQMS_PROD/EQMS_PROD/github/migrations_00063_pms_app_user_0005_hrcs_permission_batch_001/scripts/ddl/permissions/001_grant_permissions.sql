-- External permissions: Grant access to pms_app_user (from module 'workflow')
-- on tables created by module 'hrcs'

GRANT USAGE ON SCHEMA hrcs TO pms_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO pms_app_user;