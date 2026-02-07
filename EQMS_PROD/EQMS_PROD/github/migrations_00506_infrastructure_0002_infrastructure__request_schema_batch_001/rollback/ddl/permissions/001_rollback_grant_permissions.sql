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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_iqc_group_lk FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_request_supporting_files_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_request_supporting_files FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_request_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_request FROM infrastructure_app_user;

-- Revoke schema usage from infrastructure_app_user
REVOKE USAGE ON SCHEMA organization FROM infrastructure_app_user;
REVOKE USAGE ON SCHEMA infrastructure FROM infrastructure_app_user;
