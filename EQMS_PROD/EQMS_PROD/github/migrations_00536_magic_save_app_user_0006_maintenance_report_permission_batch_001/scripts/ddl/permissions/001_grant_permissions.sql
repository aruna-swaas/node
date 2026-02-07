-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'infrastructure'

GRANT USAGE ON SCHEMA infrastructure TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_report TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_report_detail TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_report_equipment TO magic_save_app_user;