-- Rollback: Revoke permissions on tables from required module 'purchase'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_infrastructure_detail FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order FROM infrastructure_app_user;

REVOKE USAGE ON SCHEMA purchase FROM infrastructure_app_user;