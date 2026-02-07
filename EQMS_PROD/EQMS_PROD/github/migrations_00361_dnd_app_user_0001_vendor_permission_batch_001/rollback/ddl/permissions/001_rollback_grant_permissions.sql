-- Rollback: Revoke permissions from dnd_app_user
-- on tables created by module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_part_category FROM dnd_app_user;

REVOKE USAGE ON SCHEMA vendor FROM dnd_app_user;