-- ============================================================================
-- Batch-wise Permissions for INFRASTRUCTURE Module
-- ============================================================================
-- This file grants schema and table access permissions to: infrastructure_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA infrastructure TO infrastructure_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc_details TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc_details_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_best_case_details TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_best_case_details_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_worst_case_details TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_oqc_worst_case_details_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_pqc TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_pqc_details TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_pqc_details_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_pqc_history TO infrastructure_app_user;
