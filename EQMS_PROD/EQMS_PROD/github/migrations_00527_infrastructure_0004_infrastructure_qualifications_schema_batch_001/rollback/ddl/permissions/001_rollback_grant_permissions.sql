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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_maintenance_service_type_lk FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_test_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_test FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_checklist_items_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_checklist_items FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_checklist_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_checklist FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification FROM infrastructure_app_user;

-- Revoke schema usage from infrastructure_app_user
REVOKE USAGE ON SCHEMA organization FROM infrastructure_app_user;
REVOKE USAGE ON SCHEMA infrastructure FROM infrastructure_app_user;
