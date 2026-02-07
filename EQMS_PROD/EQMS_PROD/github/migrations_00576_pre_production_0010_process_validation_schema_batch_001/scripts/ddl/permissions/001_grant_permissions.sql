-- ============================================================================
-- Batch-wise Permissions for PRE_PRODUCTION Module
-- ============================================================================
-- This file grants schema and table access permissions to: production_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA organization TO production_app_user;
GRANT USAGE ON SCHEMA pre_production TO production_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_pre_prod_installation_qualification_group_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_pre_prod_installation_qualification_reporter_type_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_pre_prod_process_validation_type_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_installation_qualification_group_lk_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_installation_qualification_metadata TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_installation_qualification_metadata_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_proc_valid_inst_qual TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_proc_valid_inst_qual_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_proc_valid_perf_qual TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_proc_valid_perf_qual_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_process_validation TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_process_validation_case_settings TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_process_validation_case_settings_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_process_validation_history TO production_app_user;
