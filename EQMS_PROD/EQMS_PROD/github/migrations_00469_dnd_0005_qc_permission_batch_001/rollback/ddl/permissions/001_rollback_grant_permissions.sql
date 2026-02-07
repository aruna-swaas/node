-- Rollback: Revoke permissions on tables from required module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_parts FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_bom_assembly_part_details FROM quality_control_app_user;

REVOKE USAGE ON SCHEMA dnd FROM quality_control_app_user;