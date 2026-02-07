-- ============================================================================
-- Rollback: Batch-wise Permissions for PURCHASE Module
-- ============================================================================
-- This file revokes permissions granted to: vendor_purchase_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from vendor_purchase_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_requisition FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_supporting_files_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_supporting_files FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_source_log_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_source_log FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_ship_to_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_ship_to FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_part_detail_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_part_detail FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_invoice_to_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_invoice_to FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_infrastructure_detail_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_infrastructure_detail FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_order FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_infrastructure_request_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE purchase.eqms_purchase_infrastructure_request FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_purchase_order_type_lk FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_purchase_type_lk FROM vendor_purchase_app_user;

-- Revoke schema usage from vendor_purchase_app_user
REVOKE USAGE ON SCHEMA purchase FROM vendor_purchase_app_user;
REVOKE USAGE ON SCHEMA organization FROM vendor_purchase_app_user;
