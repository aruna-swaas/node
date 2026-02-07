-- ============================================================================
-- Batch-wise Permissions for DND Module
-- ============================================================================
-- This file grants schema and table access permissions to: dnd_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA dnd TO dnd_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification_equipments TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification_equipments_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification_jigs TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification_jigs_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification_report TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification_report_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification_tools TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_verification_tools_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_lifetime_calculation_criteria TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_lifetime_calculation_criteria_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_lifetime_calculation_criteria_supp_files TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_lifetime_calculation_criteria_supp_files_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_life_declaration TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_life_declaration_history TO dnd_app_user;
