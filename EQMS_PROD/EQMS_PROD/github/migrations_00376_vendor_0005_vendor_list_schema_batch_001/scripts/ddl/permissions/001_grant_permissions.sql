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
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_type_lk TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_mapper TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_mapper_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_other_details TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_other_details_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_selection_criteria TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_selection_criteria_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_reference_supporting_files TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_reference_supporting_files_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors_history TO vendor_purchase_app_user;
