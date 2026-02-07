-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_role_definition FROM organization_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM organization_app_user;