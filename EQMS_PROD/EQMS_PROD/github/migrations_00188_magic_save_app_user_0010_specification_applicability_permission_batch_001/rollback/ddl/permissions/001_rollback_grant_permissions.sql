-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_applicable_specification FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA dnd FROM magic_save_app_user;