-- Permissions for module 'dnd': Grant access to tables from required module 'dms'
-- App users: dnd_app_user

GRANT USAGE ON SCHEMA dms TO dnd_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_type_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generation_type_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags_history TO dnd_app_user;