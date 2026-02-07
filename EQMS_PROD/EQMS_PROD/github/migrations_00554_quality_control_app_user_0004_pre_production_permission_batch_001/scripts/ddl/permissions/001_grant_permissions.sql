-- External permissions: Grant access to quality_control_app_user (from module 'qc')
-- on tables created by module 'pre_production'

GRANT USAGE ON SCHEMA pre_production TO quality_control_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_applicable_settings TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE pre_production.eqms_pre_prod_bom_assembly_part_item_details TO quality_control_app_user;