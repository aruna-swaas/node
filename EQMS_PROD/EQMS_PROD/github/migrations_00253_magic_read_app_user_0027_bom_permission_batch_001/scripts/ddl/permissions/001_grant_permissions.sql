-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_part_details TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_parts TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_master TO magic_read_app_user;