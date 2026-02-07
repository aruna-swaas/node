--Candidate Evaluation
-- Declare variables for tenant, organization, and bucket
DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
BEGIN

    -- =============================================
    -- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'hr_candidate_evaluation', 1, NOW(), 1, 5);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, container_id, template_version, status, fk_eqms_record_generation_mode_lk_id, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 5, 'CCC-HR-F-06-Candidate Evaluation', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-06 - Candidate Evaluation.docx'), 'HR_CANDIDATE_EVALUATION', 1.0, 1, 2, 1, NOW(), 11);

    -- =============================================
    -- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 11, 'HR_CANDIDATE_EVALUATION', 1, NOW(), 1);

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_FORM_MAPPING INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 11, 13, 1, NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (11, 5, VAR_TENANT_KEY, VAR_ORG_ID, 'CCC-HR-F-06-Candidate Evaluation', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-06 - Candidate Evaluation.docx'), 1.0, 1, 'HR_CANDIDATE_EVALUATION', NOW(), NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    -- firstName
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, created_by, created_date, status, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'firstName', 11, '{firstName}', 1, NOW(), 1, 176);

    -- lastName
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'lastName', 11, '{lastName}', 1, 1, NOW(), 177);

    -- role
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'role', 11, '{role}', 1, 1, NOW(), 178);

    -- dateOfInterview
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'dateOfInterview', 11, '{dateOfInterview}', 1, 1, NOW(), 179);

    -- actualEQ
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'actualEQ', 11, '{actualEQ}', 1, 1, NOW(), 180);

    -- actualExperience
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'actualExperience', 11, '{actualExperience}', 1, 1, NOW(), 181);

    -- jdExperience
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'jdExperience', 11, '{jdExperience}', 1, 1, NOW(), 182);

    -- jdEQ
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'jdEQ', 11, '{jdEQ}', 1, 1, NOW(), 183);

    -- skillset
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'skillset', 11, '{skillset}', 1, 1, NOW(), 184);

    -- status
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'status', 11, '{status}', 1, 1, NOW(), 185);

    -- reason
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'reason', 11, '{reason}', 1, 1, NOW(), 186);

    -- comments
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'comments', 11, '{comments}', 1, 1, NOW(), 187);

    -- interviewerDetails
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'interviewerDetails', 11, '{interviewerDetails}', 1, 1, NOW(), 188);

    -- mapperVariable
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 11, '{mapperVariable}', 1, 1, NOW(), 189);

    -- =============================================
    -- 6. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    -- firstName mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 176, 'eqms_hr_candidate_evalution', 'encrypted_candidate_first_name', 1, 1, NOW());

    -- lastName mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 177, 'eqms_hr_candidate_evalution', 'encrypted_candidate_last_name', 1, 1, NOW());

    -- role mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 178, 'eqms_roles_requisition_lk', 'role_name', 1, 1, NOW());

    -- dateOfInterview mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 179, 'eqms_hr_candidate_evalution', 'date_of_interview', 1, 1, NOW());

    -- actualEQ mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 180, 'eqms_hr_candidate_evalution', 'actual_educational_qualification', 1, 1, NOW());

    -- actualExperience mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 181, 'eqms_hr_candidate_evalution', 'actual_experience', 1, 1, NOW());

    -- jdExperience mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 182, 'eqms_hr_role_definition', 'experience', 1, 1, NOW());

    -- jdEQ mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 183, 'eqms_hr_role_definition', 'educational_qualification', 1, 1, NOW());

    -- skillset mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 184, 'eqms_hr_skill_master', 'skill_name', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 184, 'eqms_hr_role_definition_skill_level_mapper', 'fk_eqms_hr_skill_level_lk_id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 184, 'eqms_hr_skill_level_lk', 'skill_level', 1, 1, NOW());

    -- status mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 185, 'eqms_hr_evalution_status_lk', 'evalution_status', 1, 1, NOW());

    -- reason mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 186, 'eqms_hr_candidate_evalution', 'justification', 1, 1, NOW());

    -- comments mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 187, 'eqms_hr_candidate_evalution', 'comments', 1, 1, NOW());

    -- interviewerDetails mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 188, 'eqms_organization_employee', 'encrypted_employee_first_name', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 188, 'eqms_organization_employee', 'encrypted_employee_last_name', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 188, 'eqms_employee_roles_lk', 'role_name', 1, 1, NOW());

    -- mapperVariable mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_candidate_evalution', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_resource_requisition', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_roles_lk', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_role_definition', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_candidate_evalution_skill_set', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_role_definition_skill_level_mapper', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_skill_master', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_skill_level_lk', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_evalution_status_lk', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_candidate_interviewer', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_user_roles', 'id', 1, 1, NOW());

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 189, 'eqms_hr_candidate_evalution', 'id', '{"id": "@candidate_evaluation_id"}', 1, 1, NOW());

    -- =============================================
    -- 7. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 176, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 177, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 178, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 179, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 180, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 181, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 182, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 183, 10, 1, 1, NOW(), 1);

    -- Grid operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 184, 7, 1, 1, NOW(), 1);

    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 185, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 186, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 187, 10, 1, 1, NOW(), 1);

    -- Grid operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 188, 7, 1, 1, NOW(), 1);

    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 189, 10, 1, 1, NOW(), 1);

END $$;