-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'qc'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_check_inspection FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA qc FROM magic_save_app_user;