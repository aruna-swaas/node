--Training Need
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
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'training_need', 1, NOW(), 1, 7);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, container_id, template_version, fk_eqms_record_generation_mode_lk_id, created_by, ref_id, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 7, 'CCC-HR-F-03 Training Need', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-03 Training Need.docx'), 1, 'HR_COMPETENCY_SKILL', 1.0, 2, 1, 13, NOW());

    -- =============================================
    -- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 13, 'HR_COMPETENCY_SKILL', 1, NOW(), 1);

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_FORM_MAPPING INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 13, 39, 1, NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, container_id, created_date, created_by, valid_from_date, fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, template_version) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'CCC-HR-F-03 Training Need.docx', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-03 Training Need.docx'), 1, 'HR_COMPETENCY_SKILL', NOW(), 1, NOW(), 13, 7, 1.0);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    -- function
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'function', '{function}', 1, 13, NOW(), 1, 199);

    -- firstName
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'firstName', '{firstName}', 1, 13, NOW(), 1, 200);

    -- lastName
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'lastName', '{lastName}', 1, 13, NOW(), 1, 201);

    -- role
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'role', '{role}', 1, 13, NOW(), 1, 202);

    -- empId
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'empId', '{empId}', 1, 13, NOW(), 1, 203);

    -- trainingNeeds
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'trainingNeeds', '{trainingNeeds}', 1, 13, NOW(), 1, 204);

    -- mapperVariable
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', '{mapperVariable}', 1, 13, NOW(), 1, 205);

    -- =============================================
    -- 6. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    -- function mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_department', 'department_name', 1, 199, NOW(), 1);

    -- firstName mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee', 'encrypted_employee_first_name', 1, 200, NOW(), 1);

    -- lastName mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee', 'encrypted_employee_last_name', 1, 201, NOW(), 1);

    -- role mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_roles_lk', 'role_name', 1, 202, NOW(), 1);

    -- empId mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, form_condition, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee', 'id', '{"id":"@employee_id"}', 1, 203, NOW(), 1);

    -- trainingNeeds mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_hr_employee_training_needs', 'target_date', 1, 204, NOW(), 1);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_hr_employee_training_supporting_document', 'fk_eqms_file_id', 1, 204, NOW(), 1);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_hr_employee_source_lk', 'source', 1, 204, NOW(), 1);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_hr_skill_master', 'skill_name', 1, 204, NOW(), 1);

    -- mapperVariable mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_hr_employee_training_needs_mapper', 'id', 1, 205, NOW(), 1);

    -- =============================================
    -- 7. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 199, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 200, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 201, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 202, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 203, 10, 1, 1, NOW(), 1);

    -- Grid operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 204, 7, 1, 1, NOW(), 1);

    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 205, 10, 1, 1, NOW(), 1);

END $$;