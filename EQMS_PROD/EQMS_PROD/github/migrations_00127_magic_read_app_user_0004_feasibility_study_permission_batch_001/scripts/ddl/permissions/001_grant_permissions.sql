-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA organization TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_cost_heading_lk TO magic_read_app_user;