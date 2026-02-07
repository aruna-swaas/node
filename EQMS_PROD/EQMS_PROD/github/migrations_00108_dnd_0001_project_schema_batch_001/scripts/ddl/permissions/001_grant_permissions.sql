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
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_group_lk_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_market TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_market_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_regulations TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_regulations_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_documents TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_documents_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_regulation_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_regulation_standard_clause_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_regulation_standard_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_clause_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_market TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_regulation TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_regulation_standard TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_regulation_standard_clause TO dnd_app_user;
