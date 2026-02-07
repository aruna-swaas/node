-- Rollback: Revoke permissions on tables from required module 'organization'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_timezones FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_image_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_image FROM dms_app_user;

REVOKE USAGE ON SCHEMA organization FROM dms_app_user;