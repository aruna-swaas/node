-- ============================================================================
-- Batch-wise Permissions for HRCS Module
-- ============================================================================
-- This file grants schema and table access permissions to: hrcs_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA hrcs TO hrcs_app_user;
GRANT USAGE ON SCHEMA organization TO hrcs_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_induction_training TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_induction_training_employee_header TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_induction_training_employee_header_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_induction_training_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_induction_training_topic_supporting_file_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_induction_training_topic_lk TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_induction_training_topic_supporting_file TO hrcs_app_user;
