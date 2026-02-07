-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'infrastructure'

GRANT USAGE ON SCHEMA infrastructure TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_detail TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_equipments TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_skill_mapper TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_tools TO magic_read_app_user;