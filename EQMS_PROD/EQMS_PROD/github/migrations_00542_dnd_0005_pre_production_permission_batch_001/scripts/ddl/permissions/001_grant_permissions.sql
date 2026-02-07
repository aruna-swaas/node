-- Permissions for module 'pre_production': Grant access to tables from required module 'dnd'
-- App users: production_app_user

GRANT USAGE ON SCHEMA dnd TO production_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_part_details TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_parts TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_master TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_variant_master TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_drawing_supporting_files TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_product_variants TO production_app_user;