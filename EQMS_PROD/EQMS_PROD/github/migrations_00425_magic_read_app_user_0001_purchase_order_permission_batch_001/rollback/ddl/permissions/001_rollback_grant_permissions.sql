-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'purchase'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_ship_to FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_part_detail FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_invoice_to FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_infrastructure_detail FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA purchase FROM magic_read_app_user;