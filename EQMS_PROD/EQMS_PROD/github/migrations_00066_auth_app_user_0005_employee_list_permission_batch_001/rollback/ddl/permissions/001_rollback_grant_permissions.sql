-- Rollback: Revoke permissions from auth_app_user
-- on tables created by module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee FROM auth_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM auth_app_user;