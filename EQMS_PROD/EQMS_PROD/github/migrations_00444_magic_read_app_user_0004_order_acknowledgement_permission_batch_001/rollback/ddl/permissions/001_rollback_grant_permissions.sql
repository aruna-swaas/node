-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'sales'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA sales FROM magic_read_app_user;