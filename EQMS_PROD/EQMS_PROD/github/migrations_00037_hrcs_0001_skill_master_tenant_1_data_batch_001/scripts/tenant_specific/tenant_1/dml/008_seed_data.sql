--Job Description
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
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'job_description', 1, NOW(), 1, 9);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 9, 'CCC-HR-F-01 Job Description', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-01 Job Description.docx'), 1.0, 1, 'HR_JOB_DESCRIPTION', 2, NOW(), 1, 15);

    -- =============================================
    -- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 15, 'HR_JOB_DESCRIPTION', 1, NOW(), 1);

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_FORM_MAPPING INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 15, 41, 1, NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (15, 9, VAR_TENANT_KEY, VAR_ORG_ID, 'CCC-HR-F-01 Job Description', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-01 Job Description.docx'), 1.0, 1, 'HR_JOB_DESCRIPTION', NOW(), NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    -- department
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'department', 1, 15, '{department}', NOW(), 1, 215);

    -- role
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'role', 1, 15, '{role}', NOW(), 1, 216);

    -- status
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'status', 1, 15, '{status}', NOW(), 1, 217);

    -- jobResponsibility
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'jobResponsibility', 1, 15, '{jobResponsibility}', NOW(), 1, 218);

    -- educationalQualification
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'educationalQualification', 1, 15, '{educationalQualification}', NOW(), 1, 219);

    -- experience
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'experience', 1, 15, '{experience}', NOW(), 1, 220);

    -- skill_set
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'skill_set', 1, 15, '{skill_set}', NOW(), 1, 221);

    -- mapperVariable
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, 15, '{mapperVariable}', NOW(), 1, 222);

    -- reportsTo
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'reportsTo', 1, 15, '{reportsTo}', NOW(), 1, 223);

    -- =============================================
    -- 6. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    -- department mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 215, 'eqms_organization_department', 'department_name', 1, NOW(), 1);

    -- role mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 216, 'eqms_roles_lk_eqms_hr_role_definition_eqms_tenant_key_fk_eqms_organization_id_fk_eqms_roles_lk_idToeqms_roles_lk', 'role_name', 1, NOW(), 1);

    -- status mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 217, 'eqms_hr_employment_type_lk', 'employment_type', 1, NOW(), 1);

    -- jobResponsibility mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 218, 'eqms_hr_role_definition', 'job_responsibilities', '{"id": "@role_definition_id"}', 1, NOW(), 1);

    -- educationalQualification mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 219, 'eqms_hr_role_definition', 'educational_qualification', '{"id": "@role_definition_id"}', 1, NOW(), 1);

    -- experience mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 220, 'eqms_hr_role_definition', 'experience', 1, NOW(), 1);

    -- skill_set mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 221, 'eqms_hr_skill_master', 'skill_name', 1, NOW(), 1);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 221, 'eqms_hr_skill_level_lk', 'skill_level', 1, NOW(), 1);

    -- mapperVariable mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 222, 'eqms_hr_role_definition_skill_level_mapper', 'id', 1, NOW(), 1);

    -- reportsTo mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 223, 'eqms_roles_lk_eqms_hr_role_definition_eqms_tenant_key_fk_eqms_organization_id_fk_eqms_reports_to_role_idToeqms_roles_lk', 'role_name', 1, NOW(), 1);

    -- =============================================
    -- 7. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 215, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 216, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 217, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 218, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 219, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 220, 10, 1, 1, NOW(), 1);

    -- Grid operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 221, 7, 1, 1, NOW(), 1);

    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 222, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 223, 10, 1, 1, NOW(), 1);

END $$;
