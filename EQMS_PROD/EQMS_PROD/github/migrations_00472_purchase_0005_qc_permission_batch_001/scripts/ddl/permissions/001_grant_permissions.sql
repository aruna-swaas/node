-- Permissions for module 'qc': Grant access to tables from required module 'purchase'
-- App users: quality_control_app_user

GRANT USAGE ON SCHEMA organization TO quality_control_app_user;
GRANT USAGE ON SCHEMA purchase TO quality_control_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_inventory_location TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_purchase_order_type_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_inventory_stock TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_inventory_stock_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_part_detail TO quality_control_app_user;