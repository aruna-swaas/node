-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'infrastructure'

GRANT USAGE ON SCHEMA infrastructure TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_maintenance_schedule_detail TO magic_read_app_user;