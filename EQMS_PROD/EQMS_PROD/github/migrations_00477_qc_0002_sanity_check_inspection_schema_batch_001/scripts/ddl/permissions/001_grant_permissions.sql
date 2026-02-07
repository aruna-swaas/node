-- ============================================================================
-- Batch-wise Permissions for QC Module
-- ============================================================================
-- This file grants schema and table access permissions to: quality_control_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA qc TO quality_control_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_check_inspection TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_check_inspection_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_check_inspection_spec_results TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_check_inspection_spec_results_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_check_inspection_supporting_files TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_check_inspection_supporting_files_history TO quality_control_app_user;
