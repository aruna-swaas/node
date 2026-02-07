-- ============================================================================
-- Rollback: Batch-wise Permissions for PRE_PRODUCTION Module
-- ============================================================================
-- This file revokes permissions granted to: production_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from production_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_work_inst_step_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_work_inst_step FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_tool_type_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_tool_type FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_test_prot_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_test_prot FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_jig_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_jig FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_equipment_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in_equipment FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_set_burn_in FROM production_app_user;

-- Revoke schema usage from production_app_user
REVOKE USAGE ON SCHEMA pre_production FROM production_app_user;
