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
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_pre_prod_product_process_checklist_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_product_process_checklist_lk_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_product_trace_card_process_checklist TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_product_trace_card_process_checklist_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_product_traceability_card TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_product_traceability_card_history TO production_app_user;
