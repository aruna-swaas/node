-- Permissions for module 'qc': Grant access to tables from required module 'dnd'
-- App users: quality_control_app_user

GRANT USAGE ON SCHEMA dnd TO quality_control_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_part_details TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_parts TO quality_control_app_user;