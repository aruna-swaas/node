-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'infrastructure'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_report_equipment FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_report_detail FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_report FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_maintenance_plan_tools FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_maintenance_plan_skill_mapper FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_maintenance_plan_equipments FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_maintenance_plan_detail FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_maintenance_plan FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA infrastructure FROM magic_read_app_user;