-- Rollback: Revoke permissions on tables from required module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk_history FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project FROM infrastructure_app_user;

REVOKE USAGE ON SCHEMA organization FROM infrastructure_app_user;
REVOKE USAGE ON SCHEMA dnd FROM infrastructure_app_user;