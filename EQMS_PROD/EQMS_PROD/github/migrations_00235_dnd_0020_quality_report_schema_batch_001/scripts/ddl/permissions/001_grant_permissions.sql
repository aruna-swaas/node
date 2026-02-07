-- ============================================================================
-- Batch-wise Permissions for DND Module
-- ============================================================================
-- This file grants schema and table access permissions to: dnd_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA dnd TO dnd_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_quality_reports TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_quality_reports_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_quality_reports_supporting_file TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_quality_reports_supporting_file_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_quality_specifications TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_quality_specifications_history TO dnd_app_user;
