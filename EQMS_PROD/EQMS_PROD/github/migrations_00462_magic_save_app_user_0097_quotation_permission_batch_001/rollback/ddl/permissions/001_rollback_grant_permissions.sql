-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'sales'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_product FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_customer FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA sales FROM magic_save_app_user;