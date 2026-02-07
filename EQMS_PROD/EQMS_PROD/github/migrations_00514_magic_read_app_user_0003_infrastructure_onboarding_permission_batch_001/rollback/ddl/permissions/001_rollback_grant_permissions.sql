-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'infrastructure'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_frequency_lk FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_read_app_user;