-- Permissions for module 'pre_production': Grant access to tables from required module 'dms'
-- App users: production_app_user

GRANT USAGE ON SCHEMA dms TO production_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file TO production_app_user;