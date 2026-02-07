-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_plan_supporting_documents FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_plan_document FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_plan FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_place FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA dnd FROM magic_save_app_user;