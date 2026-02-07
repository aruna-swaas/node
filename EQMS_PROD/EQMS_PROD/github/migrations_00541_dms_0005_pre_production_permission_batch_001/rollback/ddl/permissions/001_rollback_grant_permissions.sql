-- Rollback: Revoke permissions on tables from required module 'dms'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file FROM production_app_user;

REVOKE USAGE ON SCHEMA dms FROM production_app_user;