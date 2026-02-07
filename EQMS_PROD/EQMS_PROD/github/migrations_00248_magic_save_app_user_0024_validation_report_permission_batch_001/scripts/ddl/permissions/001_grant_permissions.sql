-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report_feedback_details TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report_feedback_dir_mapper TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_results TO magic_save_app_user;