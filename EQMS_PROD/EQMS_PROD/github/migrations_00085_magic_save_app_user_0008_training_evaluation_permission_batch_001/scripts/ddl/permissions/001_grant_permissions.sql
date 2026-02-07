-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'hrcs'

GRANT USAGE ON SCHEMA hrcs TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_training_evaluation TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_training_evaluation_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_training_materials_supporting_file TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_training_materials_supporting_file_history TO magic_save_app_user;