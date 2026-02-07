-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_input_requirement TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_supporting_document TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_deliverables TO magic_read_app_user;