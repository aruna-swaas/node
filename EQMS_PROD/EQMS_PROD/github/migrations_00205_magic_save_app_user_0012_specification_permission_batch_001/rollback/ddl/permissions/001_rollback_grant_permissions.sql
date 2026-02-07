-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_dig_models FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_labelling_packaging_type_lk_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_model_mapper_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_model_mapper FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_mapper_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_mapper FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_functional_block_mapper_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_functional_block_mapper FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_country_mapper_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_country_mapper FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_device_lk_history FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_device_lk FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA dnd FROM magic_save_app_user;