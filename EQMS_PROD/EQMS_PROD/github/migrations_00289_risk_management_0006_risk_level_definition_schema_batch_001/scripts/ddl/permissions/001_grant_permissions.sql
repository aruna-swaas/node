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
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_rcm_type_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_risk_probability_level_template TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_risk_severity_level_template TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_project_risk_probability_level TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_project_risk_probability_level_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_project_risk_severity_level TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_project_risk_severity_level_history TO risk_app_user;
