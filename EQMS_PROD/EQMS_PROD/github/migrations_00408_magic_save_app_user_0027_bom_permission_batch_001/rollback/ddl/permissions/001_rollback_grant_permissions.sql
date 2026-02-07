-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_lk FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA dnd FROM magic_save_app_user;