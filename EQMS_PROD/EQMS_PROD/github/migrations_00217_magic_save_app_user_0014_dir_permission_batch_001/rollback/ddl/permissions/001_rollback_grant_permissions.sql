-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_supporting_document_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_supporting_document FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_input_requirement_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_input_requirement FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA dnd FROM magic_save_app_user;