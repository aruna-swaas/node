-- Rollback: Revoke permissions from pms_app_user
-- on tables created by module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee FROM pms_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM pms_app_user;