-- ============================================================================
-- Batch-wise Permissions for RISK_MANAGEMENT Module
-- ============================================================================
-- This file grants schema and table access permissions to: risk_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA organization TO risk_app_user;
GRANT USAGE ON SCHEMA risk_management TO risk_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_harm_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hazard_identification_tool_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_harm_hazard_mapping TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_harm_hazard_mapping_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification_tool_mapper TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification_tool_mapper_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification_tool_supp_files TO risk_app_user;
