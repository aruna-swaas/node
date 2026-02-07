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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_evalution_status_lk FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_candidate_interviewer_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_candidate_interviewer FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_candidate_evalution_supporting_files_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_candidate_evalution_supporting_files FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_candidate_evalution_skill_set_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_candidate_evalution_skill_set FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_candidate_evalution_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_candidate_evalution FROM hrcs_app_user;

-- Revoke schema usage from hrcs_app_user
REVOKE USAGE ON SCHEMA organization FROM hrcs_app_user;
REVOKE USAGE ON SCHEMA hrcs FROM hrcs_app_user;
