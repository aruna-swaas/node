-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation FROM organization_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM organization_app_user;