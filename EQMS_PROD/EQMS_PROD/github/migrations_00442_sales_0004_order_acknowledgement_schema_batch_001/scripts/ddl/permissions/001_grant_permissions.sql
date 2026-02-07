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
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_order_approval_mode_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_priority_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement_supporting_files_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_approval_mode_lk_history TO sales_app_user;
