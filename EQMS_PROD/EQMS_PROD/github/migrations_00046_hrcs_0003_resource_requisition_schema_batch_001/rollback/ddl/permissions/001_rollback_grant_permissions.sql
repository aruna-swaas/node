-- ============================================================================
-- Rollback: Batch-wise Permissions for HRCS Module
-- ============================================================================
-- This file revokes permissions granted to: hrcs_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from hrcs_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_resource_required_type_lk FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_recruitment_type_lk FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_resource_requisition_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_resource_requisition FROM hrcs_app_user;

-- Revoke schema usage from hrcs_app_user
REVOKE USAGE ON SCHEMA organization FROM hrcs_app_user;
REVOKE USAGE ON SCHEMA hrcs FROM hrcs_app_user;
