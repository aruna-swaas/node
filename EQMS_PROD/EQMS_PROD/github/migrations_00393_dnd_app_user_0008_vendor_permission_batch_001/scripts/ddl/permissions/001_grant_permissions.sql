-- External permissions: Grant access to dnd_app_user (from module 'dnd')
-- on tables created by module 'vendor'

GRANT USAGE ON SCHEMA organization TO dnd_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_verification_result_lk TO dnd_app_user;