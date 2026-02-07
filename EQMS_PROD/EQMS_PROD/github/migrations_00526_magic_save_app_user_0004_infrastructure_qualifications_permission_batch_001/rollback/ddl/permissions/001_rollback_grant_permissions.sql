-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'infrastructure'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_maintenance_service_type_lk FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_save_app_user;