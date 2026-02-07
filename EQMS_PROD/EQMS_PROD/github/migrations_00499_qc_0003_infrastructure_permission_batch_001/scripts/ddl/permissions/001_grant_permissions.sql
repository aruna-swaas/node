-- Permissions for module 'infrastructure': Grant access to tables from required module 'qc'
-- App users: infrastructure_app_user

GRANT USAGE ON SCHEMA organization TO infrastructure_app_user;
GRANT USAGE ON SCHEMA qc TO infrastructure_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_item_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_equipment_calibration_details TO infrastructure_app_user;