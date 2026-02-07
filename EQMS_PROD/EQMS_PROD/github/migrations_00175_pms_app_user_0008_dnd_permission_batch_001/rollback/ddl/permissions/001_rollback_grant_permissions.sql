-- Rollback: Revoke permissions from pms_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stages FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stage_order FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage FROM pms_app_user;

REVOKE USAGE ON SCHEMA dnd FROM pms_app_user;