-- Rollback: Revoke permissions on tables from required module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee FROM risk_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM risk_app_user;