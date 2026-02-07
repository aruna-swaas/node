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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_software_test_procedure_spec_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_software_test_procedure_spec FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_unit_results_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_unit_results FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_software_result_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_software_result FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_results_supporting_files_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_results_supporting_files FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_results_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_results FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_part_details_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_part_details FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_hardware_result_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_hardware_result FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_deviation_note_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_deviation_note FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_batch_results_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_batch_results FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_spec_unit_results_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_spec_unit_results FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_spec_batch_results_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_spec_batch_results FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_software_result_supporting_files_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_software_result_supporting_files FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_hardware_result_supporting_files_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_hardware_result_supporting_files FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_hardware_test_procedure_spec_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_equipment_calibration_details_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_failure_type_lk FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_item_history FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_action_planned_lk FROM quality_control_app_user;

-- Revoke schema usage from quality_control_app_user
REVOKE USAGE ON SCHEMA qc FROM quality_control_app_user;
REVOKE USAGE ON SCHEMA organization FROM quality_control_app_user;
