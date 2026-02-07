-- Rollback: Revoke permissions on tables from required module 'qc'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_equipment_calibration_details FROM infrastructure_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_item_history FROM infrastructure_app_user;

REVOKE USAGE ON SCHEMA qc FROM infrastructure_app_user;
REVOKE USAGE ON SCHEMA organization FROM infrastructure_app_user;