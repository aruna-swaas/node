-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'purchase'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_part_detail FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order FROM organization_app_user;

REVOKE USAGE ON SCHEMA purchase FROM organization_app_user;