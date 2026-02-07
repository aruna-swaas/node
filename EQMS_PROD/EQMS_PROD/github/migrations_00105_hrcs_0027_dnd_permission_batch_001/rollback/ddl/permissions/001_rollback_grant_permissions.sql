-- Rollback: Revoke permissions on tables from required module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee FROM dnd_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM dnd_app_user;