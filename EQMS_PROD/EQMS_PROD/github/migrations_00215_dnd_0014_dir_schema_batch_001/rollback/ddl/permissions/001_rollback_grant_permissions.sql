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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_functional_block_type_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_deliverables_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_deliverables FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_supporting_document_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_supporting_document FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_reference_dirs_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_reference_dirs FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_input_requirement_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_input_requirement FROM dnd_app_user;

-- Revoke schema usage from dnd_app_user
REVOKE USAGE ON SCHEMA organization FROM dnd_app_user;
REVOKE USAGE ON SCHEMA dnd FROM dnd_app_user;
