-- ============================================================================
-- Batch-wise Permissions for VENDOR Module
-- ============================================================================
-- This file grants schema and table access permissions to: vendor_purchase_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA vendor TO vendor_purchase_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_part_mapper TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_part_mapper_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_orders TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_orders_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_orders_supporting_files TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_orders_supporting_files_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_agreement_checklist TO vendor_purchase_app_user;
