-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'hrcs'

GRANT USAGE ON SCHEMA hrcs TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_com_dis_supporting_document TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_eye_test_supporting_document TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_vaccinations_supporting_document TO magic_save_app_user;