-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'sales'

GRANT USAGE ON SCHEMA sales TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement TO magic_save_app_user;