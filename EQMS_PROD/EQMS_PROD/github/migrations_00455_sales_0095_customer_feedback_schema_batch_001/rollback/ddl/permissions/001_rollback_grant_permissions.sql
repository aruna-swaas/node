-- ============================================================================
-- Rollback: Batch-wise Permissions for SALES Module
-- ============================================================================
-- This file revokes permissions granted to: sales_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from sales_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_feedback_source_lk_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_supporting_files_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_supporting_files FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_response_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_response FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_person_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_person FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_person_supporting_files_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_person_supporting_files FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_group_lk_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_criteria_lk_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_feedback_source_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_feedback_rating_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_cus_feedback_group_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_cus_feedback_criteria_lk FROM sales_app_user;

-- Revoke schema usage from sales_app_user
REVOKE USAGE ON SCHEMA sales FROM sales_app_user;
REVOKE USAGE ON SCHEMA organization FROM sales_app_user;
