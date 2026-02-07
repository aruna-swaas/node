-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'hrcs'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_vaccinations_supporting_document FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_eye_test_supporting_document FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_com_dis_supporting_document FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA hrcs FROM magic_save_app_user;