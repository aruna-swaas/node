-- ============================================================================
-- Rollback: Batch-wise Permissions for QC Module
-- ============================================================================
-- This file revokes permissions granted to: quality_control_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from quality_control_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_part_location_details_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_non_conformance_details_supporting_files_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_non_conformance_details_supporting_files FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_non_conformance_details_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_non_conformance_details FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_equipment_calibration_details FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_action_planned_scrap_details_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_action_planned_scrap_details FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_action_planned_rework_details_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_action_planned_rework_details FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_action_planned_return_details_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_action_planned_return_details FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_location_details FROM quality_control_app_user;

-- Revoke schema usage from quality_control_app_user
REVOKE USAGE ON SCHEMA qc FROM quality_control_app_user;
REVOKE USAGE ON SCHEMA organization FROM quality_control_app_user;
