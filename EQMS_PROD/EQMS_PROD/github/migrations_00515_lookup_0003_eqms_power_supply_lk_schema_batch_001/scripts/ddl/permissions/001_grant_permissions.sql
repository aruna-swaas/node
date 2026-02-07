-- ============================================================================
-- Batch-wise Permissions for INFRASTRUCTURE Module
-- ============================================================================
-- This file grants schema and table access permissions to: infrastructure_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA organization TO infrastructure_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_power_supply_lk TO infrastructure_app_user;
