-- Rollback: Revoke permissions from dnd_app_user
-- on tables created by module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_verification_result_lk FROM dnd_app_user;

REVOKE USAGE ON SCHEMA organization FROM dnd_app_user;