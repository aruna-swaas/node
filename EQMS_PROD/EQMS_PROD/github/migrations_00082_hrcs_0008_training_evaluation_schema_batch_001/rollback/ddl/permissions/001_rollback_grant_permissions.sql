-- ============================================================================
-- Rollback: Batch-wise Permissions for HRCS Module
-- ============================================================================
-- This file revokes permissions granted to: hrcs_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from hrcs_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_training_materials_supporting_file_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_training_materials_supporting_file FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_training_evaluation_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_training_evaluation FROM hrcs_app_user;

-- Revoke schema usage from hrcs_app_user
REVOKE USAGE ON SCHEMA hrcs FROM hrcs_app_user;
