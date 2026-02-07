-- Rollback: Revoke permissions on tables from required module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_verification_result_lk FROM infrastructure_app_user;

REVOKE USAGE ON SCHEMA vendor FROM infrastructure_app_user;
REVOKE USAGE ON SCHEMA organization FROM infrastructure_app_user;