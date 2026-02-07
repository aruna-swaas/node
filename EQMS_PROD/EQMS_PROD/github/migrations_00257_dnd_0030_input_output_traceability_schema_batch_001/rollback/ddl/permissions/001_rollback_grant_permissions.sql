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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_dir_traceability_applicability_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_dir_traceability_applicability FROM dnd_app_user;

-- Revoke schema usage from dnd_app_user
REVOKE USAGE ON SCHEMA dnd FROM dnd_app_user;
