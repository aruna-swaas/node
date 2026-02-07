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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pre_design_transfer_documents_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pre_design_transfer_documents FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_manufacturing_actions_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_manufacturing_actions FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_documents_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_documents FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_acknowledgement_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_acknowledgement_checklist_mapper_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_acknowledgement_checklist_mapper FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_acknowledgement FROM dnd_app_user;

-- Revoke schema usage from dnd_app_user
REVOKE USAGE ON SCHEMA dnd FROM dnd_app_user;
