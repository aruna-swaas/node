-- Rollback: Delete seed data from file CCC-HR-F-06-Candidate Evaluation.sql
-- Original file: CCC-HR-F-06-Candidate Evaluation.sql
-- Seed data file: 012_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
BEGIN

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 188 AND fk_eqms_document_variable_operation_id = 7 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 187 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 186 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 185 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 184 AND fk_eqms_document_variable_operation_id = 7 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 183 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 182 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 181 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 180 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 179 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 178 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 177 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 176 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_candidate_evalution' AND form_column_name = 'id' AND form_condition = '{"id": "@candidate_evaluation_id"}' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_user_roles' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_candidate_interviewer' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_evalution_status_lk' AND form_column_name = 'id';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_skill_level_lk' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_skill_master' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_role_definition_skill_level_mapper' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_candidate_evalution_skill_set' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_role_definition' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_roles_lk' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_resource_requisition' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 189 AND form_table_name = 'eqms_hr_candidate_evalution' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 188 AND form_table_name = 'eqms_employee_roles_lk' AND form_column_name = 'role_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 188 AND form_table_name = 'eqms_organization_employee' AND form_column_name = 'encrypted_employee_last_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 188 AND form_table_name = 'eqms_organization_employee' AND form_column_name = 'encrypted_employee_first_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 187 AND form_table_name = 'eqms_hr_candidate_evalution' AND form_column_name = 'comments' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 186 AND form_table_name = 'eqms_hr_candidate_evalution' AND form_column_name = 'justification' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 185 AND form_table_name = 'eqms_hr_evalution_status_lk' AND form_column_name = 'evalution_status';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 184 AND form_table_name = 'eqms_hr_skill_level_lk' AND form_column_name = 'skill_level' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 184 AND form_table_name = 'eqms_hr_role_definition_skill_level_mapper' AND form_column_name = 'fk_eqms_hr_skill_level_lk_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 184 AND form_table_name = 'eqms_hr_skill_master' AND form_column_name = 'skill_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 183 AND form_table_name = 'eqms_hr_role_definition' AND form_column_name = 'educational_qualification' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 182 AND form_table_name = 'eqms_hr_role_definition' AND form_column_name = 'experience' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 181 AND form_table_name = 'eqms_hr_candidate_evalution' AND form_column_name = 'actual_experience' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 180 AND form_table_name = 'eqms_hr_candidate_evalution' AND form_column_name = 'actual_educational_qualification' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 179 AND form_table_name = 'eqms_hr_candidate_evalution' AND form_column_name = 'date_of_interview' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 178 AND form_table_name = 'eqms_roles_requisition_lk' AND form_column_name = 'role_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 177 AND form_table_name = 'eqms_hr_candidate_evalution' AND form_column_name = 'encrypted_candidate_last_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 176 AND form_table_name = 'eqms_hr_candidate_evalution' AND form_column_name = 'encrypted_candidate_first_name' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 189 AND variable_key = 'mapperVariable' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{mapperVariable}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 188 AND variable_key = 'interviewerDetails' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{interviewerDetails}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 187 AND variable_key = 'comments' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{comments}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 186 AND variable_key = 'reason' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{reason}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 185 AND variable_key = 'status' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{status}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 184 AND variable_key = 'skillset' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{skillset}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 183 AND variable_key = 'jdEQ' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{jdEQ}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 182 AND variable_key = 'jdExperience' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{jdExperience}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 181 AND variable_key = 'actualExperience' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{actualExperience}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 180 AND variable_key = 'actualEQ' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{actualEQ}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 179 AND variable_key = 'dateOfInterview' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{dateOfInterview}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 178 AND variable_key = 'role' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{role}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 177 AND variable_key = 'lastName' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{lastName}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 176 AND variable_key = 'firstName' AND fk_eqms_document_template_id = 11 AND variable_identifier = '{firstName}' AND status = 1;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 11 AND fk_eqms_document_template_type_lk_id = 5 AND document_template_name = 'CCC-HR-F-06-Candidate Evaluation' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-06 - Candidate Evaluation.docx') AND template_version = 1.0 AND status = 1 AND container_id = 'HR_CANDIDATE_EVALUATION';

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 11 AND fk_eqms_form_id = 13 AND status = 1;

-- Delete from dms.eqms_document_template_magic_read_details
DELETE FROM dms.eqms_document_template_magic_read_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 11 AND container_id = 'HR_CANDIDATE_EVALUATION' AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_document_template_type_lk_id = 5 AND document_template_name = 'CCC-HR-F-06-Candidate Evaluation' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-06 - Candidate Evaluation.docx') AND container_id = 'HR_CANDIDATE_EVALUATION' AND template_version = 1.0 AND status = 1 AND fk_eqms_record_generation_mode_lk_id = 2;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND document_template_type = 'hr_candidate_evaluation' AND status = 1;

END $$;
