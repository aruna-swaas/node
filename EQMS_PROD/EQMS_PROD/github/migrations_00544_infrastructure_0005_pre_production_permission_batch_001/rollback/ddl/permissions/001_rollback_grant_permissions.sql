-- Rollback: Revoke permissions on tables from required module 'infrastructure'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc_details FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc FROM production_app_user;

REVOKE USAGE ON SCHEMA infrastructure FROM production_app_user;