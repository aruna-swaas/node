-- Rollback: Revoke permissions from quality_control_app_user
-- on tables created by module 'pre_production'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_assembly_part_item_details FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_applicable_settings FROM quality_control_app_user;

REVOKE USAGE ON SCHEMA pre_production FROM quality_control_app_user;