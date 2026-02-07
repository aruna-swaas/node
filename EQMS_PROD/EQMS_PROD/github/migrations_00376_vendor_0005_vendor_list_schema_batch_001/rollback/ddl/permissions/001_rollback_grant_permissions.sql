-- ============================================================================
-- Rollback: Batch-wise Permissions for VENDOR Module
-- ============================================================================
-- This file revokes permissions granted to: vendor_purchase_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from vendor_purchase_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_reference_supporting_files_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_reference_supporting_files FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_selection_criteria_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_selection_criteria FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_other_details_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_other_details FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_mapper_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_mapper FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_type_lk FROM vendor_purchase_app_user;

-- Revoke schema usage from vendor_purchase_app_user
REVOKE USAGE ON SCHEMA vendor FROM vendor_purchase_app_user;
REVOKE USAGE ON SCHEMA organization FROM vendor_purchase_app_user;
