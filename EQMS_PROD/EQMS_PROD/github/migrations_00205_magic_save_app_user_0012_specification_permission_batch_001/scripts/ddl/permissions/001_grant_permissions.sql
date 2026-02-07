-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_device_lk TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_device_lk_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_country_mapper TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_country_mapper_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_functional_block_mapper TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_functional_block_mapper_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_mapper TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_mapper_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_model_mapper TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification_model_mapper_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_labelling_packaging_type_lk_history TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_dig_models TO magic_save_app_user;