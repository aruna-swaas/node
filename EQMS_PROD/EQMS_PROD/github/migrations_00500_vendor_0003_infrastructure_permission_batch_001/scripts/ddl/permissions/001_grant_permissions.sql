-- Permissions for module 'infrastructure': Grant access to tables from required module 'vendor'
-- App users: infrastructure_app_user

GRANT USAGE ON SCHEMA organization TO infrastructure_app_user;
GRANT USAGE ON SCHEMA vendor TO infrastructure_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_verification_result_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors TO infrastructure_app_user;