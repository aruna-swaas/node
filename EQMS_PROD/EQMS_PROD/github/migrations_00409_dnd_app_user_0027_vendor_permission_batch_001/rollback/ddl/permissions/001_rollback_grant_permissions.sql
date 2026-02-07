-- Rollback: Revoke permissions from dnd_app_user
-- on tables created by module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_lk FROM dnd_app_user;

REVOKE USAGE ON SCHEMA dnd FROM dnd_app_user;