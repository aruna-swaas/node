-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'qc'

GRANT USAGE ON SCHEMA qc TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_equipment_calibration_details TO magic_read_app_user;