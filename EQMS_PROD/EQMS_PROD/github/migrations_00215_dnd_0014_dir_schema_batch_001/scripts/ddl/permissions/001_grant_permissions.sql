-- ============================================================================
-- Batch-wise Permissions for DND Module
-- ============================================================================
-- This file grants schema and table access permissions to: dnd_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA dnd TO dnd_app_user;
GRANT USAGE ON SCHEMA organization TO dnd_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_input_requirement TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_input_requirement_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_reference_dirs TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_reference_dirs_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_supporting_document TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dir_supporting_document_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_deliverables TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_deliverables_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_functional_block_type_lk TO dnd_app_user;
