-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'hrcs'

GRANT USAGE ON SCHEMA hrcs TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_history TO organization_app_user;