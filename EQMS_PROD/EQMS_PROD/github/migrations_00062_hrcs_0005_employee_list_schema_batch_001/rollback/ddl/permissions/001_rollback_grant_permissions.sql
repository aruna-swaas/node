-- ============================================================================
-- Rollback: Batch-wise Permissions for HRCS Module
-- ============================================================================
-- This file revokes permissions granted to: hrcs_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from hrcs_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_employment_type_lk FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_employee_source_lk FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_supporting_document_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_supporting_document FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_supporting_document_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_supporting_document FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs_mapper_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs_mapper FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation_supporting_files_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation_supporting_files FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_skill_supporting_document_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_skill_supporting_document FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_skill_set_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_skill_set FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_functional_reports_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_functional_reports FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_experience_supporting_document_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_experience_supporting_document FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_edu_qual_supporting_document_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_edu_qual_supporting_document FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_area_expertise_supporting_document_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_area_expertise_supporting_document FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_administrative_reports_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_administrative_reports FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_add_employee_training_supporting_document_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_add_employee_training_supporting_document FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_add_employee_training_needs_history FROM hrcs_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_add_employee_training_needs FROM hrcs_app_user;

-- Revoke schema usage from hrcs_app_user
REVOKE USAGE ON SCHEMA organization FROM hrcs_app_user;
REVOKE USAGE ON SCHEMA hrcs FROM hrcs_app_user;
