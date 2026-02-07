-- ============================================================================
-- Rollback: Batch-wise Permissions for DND Module
-- ============================================================================
-- This file revokes permissions granted to: dnd_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from dnd_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_results_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_results FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report_supporting_files_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report_supporting_files FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report_feedback_dir_mapper_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report_feedback_dir_mapper FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report_feedback_details_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report_feedback_details FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pilot_validation_report FROM dnd_app_user;

-- Revoke schema usage from dnd_app_user
REVOKE USAGE ON SCHEMA dnd FROM dnd_app_user;
