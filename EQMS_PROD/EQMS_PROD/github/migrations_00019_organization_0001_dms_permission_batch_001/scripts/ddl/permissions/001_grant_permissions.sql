-- Permissions for module 'dms': Grant access to tables from required module 'organization'
-- App users: dms_app_user

GRANT USAGE ON SCHEMA organization TO dms_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_image TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_image_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_timezones TO dms_app_user;