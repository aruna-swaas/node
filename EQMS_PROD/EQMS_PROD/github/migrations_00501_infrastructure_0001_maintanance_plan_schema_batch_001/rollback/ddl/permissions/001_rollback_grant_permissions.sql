-- ============================================================================
-- Rollback: Batch-wise Permissions for INFRASTRUCTURE Module
-- ============================================================================
-- This file revokes permissions granted to: infrastructure_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from infrastructure_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_tools_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_tools FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_skill_mapper_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_skill_mapper FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_equipments_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_equipments FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_detail_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan_detail FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_maintenance_plan FROM infrastructure_app_user;

-- Revoke schema usage from infrastructure_app_user
REVOKE USAGE ON SCHEMA infrastructure FROM infrastructure_app_user;
