-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'purchase'

GRANT USAGE ON SCHEMA purchase TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_infrastructure_detail TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_invoice_to TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_part_detail TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_ship_to TO magic_save_app_user;