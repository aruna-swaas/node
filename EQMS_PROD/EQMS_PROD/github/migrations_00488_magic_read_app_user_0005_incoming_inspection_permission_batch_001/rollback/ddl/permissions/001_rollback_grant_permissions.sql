-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'qc'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_results FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_part_details FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_incoming_inspection_deviation_note FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA qc FROM magic_read_app_user;