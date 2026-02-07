-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'sales'

GRANT USAGE ON SCHEMA sales TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_customer TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_product TO magic_save_app_user;