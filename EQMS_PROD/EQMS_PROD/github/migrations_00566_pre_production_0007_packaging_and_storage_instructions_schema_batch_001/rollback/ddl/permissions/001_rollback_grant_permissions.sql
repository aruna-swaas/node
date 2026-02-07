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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_team FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_storage_instruction_supporting_file_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_storage_instruction_supporting_file FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_part_assembly_drawing FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_packaging_storage_instruction_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_packaging_storage_instruction FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_packaging_instruction_supporting_file_history FROM production_app_user;

-- Revoke schema usage from production_app_user
REVOKE USAGE ON SCHEMA pre_production FROM production_app_user;
