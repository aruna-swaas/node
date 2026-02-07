-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_input_requirement TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_input_requirement_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_supporting_document TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_supporting_document_history TO magic_save_app_user;