-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'dms'

GRANT USAGE ON SCHEMA dms TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags_history TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags TO magic_read_app_user;