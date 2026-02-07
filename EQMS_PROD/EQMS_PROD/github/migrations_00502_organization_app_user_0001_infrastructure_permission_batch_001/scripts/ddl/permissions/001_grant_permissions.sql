-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'infrastructure'

GRANT USAGE ON SCHEMA infrastructure TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan TO organization_app_user;