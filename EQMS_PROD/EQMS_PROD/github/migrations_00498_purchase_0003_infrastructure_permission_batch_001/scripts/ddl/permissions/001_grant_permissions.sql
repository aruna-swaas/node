-- Permissions for module 'infrastructure': Grant access to tables from required module 'purchase'
-- App users: infrastructure_app_user

GRANT USAGE ON SCHEMA purchase TO infrastructure_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_infrastructure_detail TO infrastructure_app_user;