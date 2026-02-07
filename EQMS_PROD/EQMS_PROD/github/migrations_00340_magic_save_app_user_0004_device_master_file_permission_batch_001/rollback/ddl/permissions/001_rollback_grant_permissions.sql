-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'regulation'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_reg_device_product_specification_aspects FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_save_app_user;