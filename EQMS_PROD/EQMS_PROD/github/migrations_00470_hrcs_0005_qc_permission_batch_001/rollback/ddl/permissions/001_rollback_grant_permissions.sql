-- Rollback: Revoke permissions on tables from required module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_master FROM quality_control_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM quality_control_app_user;