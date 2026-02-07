-- ============================================================================
-- Batch-wise Permissions for INFRASTRUCTURE Module
-- ============================================================================
-- This file grants schema and table access permissions to: infrastructure_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA infrastructure TO infrastructure_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_complaint TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_complaint_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_complaint_supporting_files TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_complaint_supporting_files_history TO infrastructure_app_user;
