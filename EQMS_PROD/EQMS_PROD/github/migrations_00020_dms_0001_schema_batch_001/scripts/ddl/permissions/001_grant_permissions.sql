-- ============================================================================
-- Batch-wise Permissions for DMS Module
-- ============================================================================
-- This file grants schema and table access permissions to: dms_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA dms TO dms_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_compressed_files TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_compressed_files_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_sections TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_api_details TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_magic_read_details TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_variable TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_variable_transformation_rules TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_type_lk TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variable_mapper TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variable_mapper_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variable_operation TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variables TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variables_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_type_lk TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_generic_details TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_generic_details_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generation_mode_lk TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generation_type_lk TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generic_details TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generic_details_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_type_lk TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_variable_mapper TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_variable_mapper_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_variables TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_variables_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification_comments TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification_comments_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags_history TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_video TO dms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_video_history TO dms_app_user;
