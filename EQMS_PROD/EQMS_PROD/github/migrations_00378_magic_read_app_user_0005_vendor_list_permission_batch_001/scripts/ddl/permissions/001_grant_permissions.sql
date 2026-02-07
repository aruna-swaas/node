-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'vendor'

GRANT USAGE ON SCHEMA vendor TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors TO magic_read_app_user;