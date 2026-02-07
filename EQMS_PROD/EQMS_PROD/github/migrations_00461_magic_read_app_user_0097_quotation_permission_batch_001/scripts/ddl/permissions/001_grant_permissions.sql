-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'sales'

GRANT USAGE ON SCHEMA sales TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_master TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_customer TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_product TO magic_read_app_user;