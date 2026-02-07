-- ============================================================================
-- Batch-wise Permissions for SALES Module
-- ============================================================================
-- This file grants schema and table access permissions to: sales_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA sales TO sales_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_dispatch TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_dispatch_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_dispatch_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_dispatch_supporting_files_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_product TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_product_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_site_requirement TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_site_requirement_history TO sales_app_user;
