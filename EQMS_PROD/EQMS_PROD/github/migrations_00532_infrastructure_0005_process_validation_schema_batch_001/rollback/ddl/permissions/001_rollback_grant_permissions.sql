-- ============================================================================
-- Rollback: Batch-wise Permissions for INFRASTRUCTURE Module
-- ============================================================================
-- This file revokes permissions granted to: infrastructure_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from infrastructure_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_pqc_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_pqc_details_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_pqc_details FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_pqc FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_worst_case_details_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_worst_case_details FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_best_case_details_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_best_case_details FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc_details_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc_details FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation FROM infrastructure_app_user;

-- Revoke schema usage from infrastructure_app_user
REVOKE USAGE ON SCHEMA infrastructure FROM infrastructure_app_user;
