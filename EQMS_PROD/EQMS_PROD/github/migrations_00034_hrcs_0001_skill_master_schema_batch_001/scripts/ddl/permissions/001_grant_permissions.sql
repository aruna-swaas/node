-- ============================================================================
-- Batch-wise Permissions for HRCS Module
-- ============================================================================
-- This file grants schema and table access permissions to: hrcs_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA hrcs TO hrcs_app_user;
GRANT USAGE ON SCHEMA organization TO hrcs_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_master TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_master_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_supporting_files TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_supporting_files_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_skill_level_lk TO hrcs_app_user;
