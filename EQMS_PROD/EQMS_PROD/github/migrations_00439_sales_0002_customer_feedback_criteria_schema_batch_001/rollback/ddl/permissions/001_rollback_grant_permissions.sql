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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_criteria_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_criteria_detail_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_criteria_detail FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_criteria FROM sales_app_user;

-- Revoke schema usage from sales_app_user
REVOKE USAGE ON SCHEMA sales FROM sales_app_user;
