-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'infrastructure'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_report_equipment FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_report_detail FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_report FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA infrastructure FROM magic_save_app_user;