-- ============================================================================
-- Batch-wise Permissions for SALES Module
-- ============================================================================
-- This file grants schema and table access permissions to: sales_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA organization TO sales_app_user;
GRANT USAGE ON SCHEMA sales TO sales_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_cus_feedback_criteria_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_cus_feedback_group_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_feedback_rating_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_feedback_source_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_criteria_lk_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_group_lk_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_person_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_person_supporting_files_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_person TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_person_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_response TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_response_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_supporting_files_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_feedback_source_lk_history TO sales_app_user;
