-- Rollback: Revoke permissions on tables from required module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_master FROM infrastructure_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM infrastructure_app_user;