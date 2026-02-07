-- ============================================================================
-- Batch-wise Permissions for VENDOR Module
-- ============================================================================
-- This file grants schema and table access permissions to: vendor_purchase_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA organization TO vendor_purchase_app_user;
GRANT USAGE ON SCHEMA vendor TO vendor_purchase_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_performance_rating_lk TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation_group_remarks TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation_group_remarks_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation_group_remarks_supporting_files TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation_group_remarks_supporting_files_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation_supporting_files TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation_supporting_files_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation_visit TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_evaluation_visit_history TO vendor_purchase_app_user;
