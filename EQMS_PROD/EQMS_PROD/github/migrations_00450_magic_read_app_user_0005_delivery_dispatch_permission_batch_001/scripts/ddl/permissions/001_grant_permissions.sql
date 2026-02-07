-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'sales'

GRANT USAGE ON SCHEMA sales TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_dispatch TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_product TO magic_read_app_user;