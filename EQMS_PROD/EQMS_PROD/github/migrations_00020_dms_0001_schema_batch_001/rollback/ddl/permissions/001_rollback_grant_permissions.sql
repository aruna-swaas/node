-- ============================================================================
-- Rollback: Batch-wise Permissions for DMS Module
-- ============================================================================
-- This file revokes permissions granted to: dms_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from dms_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_video_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_video FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification_comments_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification_comments FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_verification FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_variables_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_variables FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_variable_mapper_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_variable_mapper FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_type_lk FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generic_details_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generic_details FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generation_type_lk FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record_generation_mode_lk FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_record FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_generic_details_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_generic_details FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_type_lk FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variables_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variables FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variable_operation FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variable_mapper_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_variable_mapper FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_type_lk FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_variable_transformation_rules FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_variable FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_magic_read_details FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_api_details FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_sections FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_compressed_files_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_compressed_files FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record_history FROM dms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_component_record FROM dms_app_user;

-- Revoke schema usage from dms_app_user
REVOKE USAGE ON SCHEMA dms FROM dms_app_user;
