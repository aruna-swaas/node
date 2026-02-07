-- ============================================================================
-- Rollback: Batch-wise Permissions for RISK_MANAGEMENT Module
-- ============================================================================
-- This file revokes permissions granted to: risk_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from risk_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification_tool_supp_files FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification_tool_mapper_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification_tool_mapper FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_identification FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_hazard FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_harm_hazard_mapping_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_harm_hazard_mapping FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hazard_identification_tool_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_harm_lk FROM risk_app_user;

-- Revoke schema usage from risk_app_user
REVOKE USAGE ON SCHEMA risk_management FROM risk_app_user;
REVOKE USAGE ON SCHEMA organization FROM risk_app_user;
