-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'qc'

GRANT USAGE ON SCHEMA qc TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_sanity_check_inspection TO magic_save_app_user;