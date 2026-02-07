-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'hrcs'

GRANT USAGE ON SCHEMA hrcs TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_master TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_master_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_supporting_files TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_supporting_files_history TO magic_save_app_user;