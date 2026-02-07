-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'dms'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags_history FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA dms FROM magic_read_app_user;