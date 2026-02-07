-- Permissions for module 'pre_production': Grant access to tables from required module 'infrastructure'
-- App users: production_app_user

GRANT USAGE ON SCHEMA infrastructure TO production_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_process_validation_iqc_details TO production_app_user;