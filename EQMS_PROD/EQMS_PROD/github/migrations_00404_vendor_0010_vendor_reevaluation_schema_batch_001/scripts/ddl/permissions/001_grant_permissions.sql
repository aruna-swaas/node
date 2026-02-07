-- ============================================================================
-- Batch-wise Permissions for VENDOR Module
-- ============================================================================
-- This file grants schema and table access permissions to: vendor_purchase_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA vendor TO vendor_purchase_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_applicable_group TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_applicable_group_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_group_remarks TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_group_remarks_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_group_remarks_sup_files TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_group_remarks_sup_files_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_issues_responses TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_issues_responses_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_rating TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_rating_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_supporting_files TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_supporting_files_history TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_visit TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_re_evaluation_visit_history TO vendor_purchase_app_user;
