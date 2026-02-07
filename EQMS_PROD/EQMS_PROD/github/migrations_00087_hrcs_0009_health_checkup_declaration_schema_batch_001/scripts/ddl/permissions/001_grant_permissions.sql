-- ============================================================================
-- Batch-wise Permissions for HRCS Module
-- ============================================================================
-- This file grants schema and table access permissions to: hrcs_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA hrcs TO hrcs_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_com_dis_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_com_dis_supporting_document_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_eye_test_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_eye_test_supporting_document_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_vaccinations_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_health_checkup_vaccinations_supporting_document_history TO hrcs_app_user;
