-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'infrastructure'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_test FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_checklist_items FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_checklist FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA infrastructure FROM magic_read_app_user;