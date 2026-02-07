-- ============================================================================
-- Batch-wise Permissions for QC Module
-- ============================================================================
-- This file grants schema and table access permissions to: quality_control_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA organization TO quality_control_app_user;
GRANT USAGE ON SCHEMA qc TO quality_control_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_action_planned_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_item_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_failure_type_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_equipment_calibration_details_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_hardware_test_procedure_spec_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_hardware_result_supporting_files TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_hardware_result_supporting_files_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_software_result_supporting_files TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_software_result_supporting_files_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_spec_batch_results TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_spec_batch_results_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_spec_unit_results TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_insp_spec_unit_results_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_batch_results TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_batch_results_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_deviation_note TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_deviation_note_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_hardware_result TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_hardware_result_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_part_details TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_part_details_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_results TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_results_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_results_supporting_files TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_results_supporting_files_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_software_result TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_software_result_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_unit_results TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_unit_results_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_software_test_procedure_spec TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_software_test_procedure_spec_history TO quality_control_app_user;
