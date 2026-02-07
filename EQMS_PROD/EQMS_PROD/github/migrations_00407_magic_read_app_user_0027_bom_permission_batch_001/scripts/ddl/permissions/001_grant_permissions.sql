-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'vendor'

GRANT USAGE ON SCHEMA dnd TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_lk TO magic_read_app_user;