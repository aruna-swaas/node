-- ============================================================================
-- Batch-wise Permissions for HRCS Module
-- ============================================================================
-- This file grants schema and table access permissions to: hrcs_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA hrcs TO hrcs_app_user;
GRANT USAGE ON SCHEMA organization TO hrcs_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_add_employee_training_needs TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_add_employee_training_needs_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_add_employee_training_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_add_employee_training_supporting_document_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_administrative_reports TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_administrative_reports_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_area_expertise_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_area_expertise_supporting_document_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_edu_qual_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_edu_qual_supporting_document_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_experience_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_experience_supporting_document_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_functional_reports TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_functional_reports_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_skill_set TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_skill_set_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_skill_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_skill_supporting_document_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation_supporting_files TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_evaluation_supporting_files_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs_mapper TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_needs_mapper_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_employee_training_supporting_document_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_supporting_document TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_supporting_document_history TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_employee_source_lk TO hrcs_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_hr_employment_type_lk TO hrcs_app_user;
