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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_inspection_specification_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_inspection_specification FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_inspection_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_inspection FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_insp_spec_supporting_files_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_insp_spec_supporting_files FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_insp_spec_results_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_insp_spec_results FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_inspection_procedure_files_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_inspection_procedure_files FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_verification_result_lk FROM vendor_purchase_app_user;

-- Revoke schema usage from vendor_purchase_app_user
REVOKE USAGE ON SCHEMA vendor FROM vendor_purchase_app_user;
REVOKE USAGE ON SCHEMA organization FROM vendor_purchase_app_user;
