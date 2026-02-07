-- ============================================================================
-- Rollback: Batch-wise Permissions for QC Module
-- ============================================================================
-- This file revokes permissions granted to: quality_control_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from quality_control_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_sanity_spec_checklist_group_lk FROM quality_control_app_user;

-- Revoke schema usage from quality_control_app_user
REVOKE USAGE ON SCHEMA organization FROM quality_control_app_user;
