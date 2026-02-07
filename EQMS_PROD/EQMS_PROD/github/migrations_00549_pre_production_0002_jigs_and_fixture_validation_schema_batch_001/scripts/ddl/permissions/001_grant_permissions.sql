-- ============================================================================
-- Batch-wise Permissions for PRE_PRODUCTION Module
-- ============================================================================
-- This file grants schema and table access permissions to: production_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA pre_production TO production_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_jig_fixture_acceptance_criteria TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_jig_fixture_acceptance_criteria_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_jig_fixture_validation TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_jig_fixture_validation_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_jig_validation_report TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_jig_validation_report_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_project_jig_validation_report TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_project_jig_validation_report_history TO production_app_user;
