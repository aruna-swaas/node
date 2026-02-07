-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'regulation'

GRANT USAGE ON SCHEMA organization TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_reg_product_classification TO magic_read_app_user;