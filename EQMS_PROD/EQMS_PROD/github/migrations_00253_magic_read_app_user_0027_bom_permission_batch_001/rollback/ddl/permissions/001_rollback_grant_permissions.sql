-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_master FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_parts FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_part_details FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA dnd FROM magic_read_app_user;