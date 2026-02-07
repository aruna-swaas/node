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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_individual_residual_risk_analysis_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE risk_management.eqms_individual_residual_risk_analysis FROM risk_app_user;

-- Revoke schema usage from risk_app_user
REVOKE USAGE ON SCHEMA risk_management FROM risk_app_user;
