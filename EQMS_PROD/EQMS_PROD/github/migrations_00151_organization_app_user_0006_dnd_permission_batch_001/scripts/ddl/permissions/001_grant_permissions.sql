-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA organization TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_target_audience_type_lk TO organization_app_user;