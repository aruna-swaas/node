-- Rollback: Revoke permissions on tables from required module 'purchase'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_part_detail FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_inventory_stock_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_inventory_stock FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_purchase_order_type_lk FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_inventory_location FROM quality_control_app_user;

REVOKE USAGE ON SCHEMA purchase FROM quality_control_app_user;
REVOKE USAGE ON SCHEMA organization FROM quality_control_app_user;