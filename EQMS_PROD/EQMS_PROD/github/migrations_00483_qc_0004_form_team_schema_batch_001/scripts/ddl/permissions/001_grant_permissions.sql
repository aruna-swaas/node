-- ============================================================================
-- Batch-wise Permissions for QC Module
-- ============================================================================
-- This file grants schema and table access permissions to: quality_control_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA qc TO quality_control_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_purchase_team TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_purchase_team_details TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_purchase_team_details_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_purchase_team_history TO quality_control_app_user;
