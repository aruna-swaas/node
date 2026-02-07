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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_supplier_details_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_supplier_details FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_assembly_part_item_details_supp_files_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_assembly_part_item_details_supp_files FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_assembly_part_item_details_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_assembly_part_item_details FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_applicable_settings_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_applicable_settings FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_pre_prod_case_settings_type_lk FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_pre_prod_bom_feature_settings_lk FROM production_app_user;

-- Revoke schema usage from production_app_user
REVOKE USAGE ON SCHEMA pre_production FROM production_app_user;
REVOKE USAGE ON SCHEMA organization FROM production_app_user;
