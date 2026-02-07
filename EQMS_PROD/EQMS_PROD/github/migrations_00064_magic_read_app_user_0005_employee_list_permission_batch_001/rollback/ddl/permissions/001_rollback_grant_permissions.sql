-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_supporting_document FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs_mapper FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation_history FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_skill_set FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_functional_reports FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_experience_supporting_document FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_edu_qual_supporting_document FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_administrative_reports_history FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_administrative_reports FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM magic_read_app_user;