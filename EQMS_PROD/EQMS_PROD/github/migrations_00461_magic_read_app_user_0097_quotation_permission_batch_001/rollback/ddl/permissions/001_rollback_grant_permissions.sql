-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'sales'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_product FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_customer FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_master FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA sales FROM magic_read_app_user;