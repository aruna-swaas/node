-- Permissions for module 'vendor': Grant access to tables from required module 'dnd'
-- App users: vendor_purchase_app_user

GRANT USAGE ON SCHEMA dnd TO vendor_purchase_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_parts TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_master TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_variant_master TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_drawing_supporting_files TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project TO vendor_purchase_app_user;