-- Rollback: Delete seed data from file CCC-HR-F-08-Induction.sql
-- Original file: CCC-HR-F-08-Induction.sql
-- Seed data file: 014_seed_data.sql
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
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 168 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 167 AND fk_eqms_document_variable_operation_id = 7 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 166 AND fk_eqms_document_variable_operation_id = 7 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 165 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 164 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 163 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 162 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 161 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_hr_induction_training_employee_header' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 168;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_hr_induction_training_topic_supporting_file' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 168;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_org_employee_induction' AND form_column_name = 'encrypted_employee_last_name' AND status = 1 AND fk_eqms_document_template_variable_id = 167;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_org_employee_induction' AND form_column_name = 'encrypted_employee_first_name' AND status = 1 AND fk_eqms_document_template_variable_id = 167;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 166;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_hr_induction_training_topic_lk' AND form_column_name = 'topic' AND status = 1 AND fk_eqms_document_template_variable_id = 166;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_roles_lk' AND form_column_name = 'role_name' AND status = 1 AND fk_eqms_document_template_variable_id = 165;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee' AND form_column_name = 'encrypted_employee_last_name' AND status = 1 AND fk_eqms_document_template_variable_id = 164;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee' AND form_column_name = 'encrypted_employee_first_name' AND status = 1 AND fk_eqms_document_template_variable_id = 163;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_hr_induction_training' AND form_column_name = 'conducted_on' AND status = 1 AND fk_eqms_document_template_variable_id = 162;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee' AND form_column_name = 'encrypted_employee_id' AND status = 1 AND fk_eqms_document_template_variable_id = 161 AND form_condition = '{"id":"@employee_id"}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 168 AND variable_key = 'mapperVariable' AND variable_identifier = '{mapperVariable}' AND status = 1 AND fk_eqms_document_template_id = 9;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 167 AND variable_key = 'conductedDetails' AND variable_identifier = '{conductedDetails}' AND status = 1 AND fk_eqms_document_template_id = 9;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 166 AND variable_key = 'trainingDocuments' AND variable_identifier = '{trainingDocuments}' AND status = 1 AND fk_eqms_document_template_id = 9;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 165 AND variable_key = 'role' AND variable_identifier = '{role}' AND status = 1 AND fk_eqms_document_template_id = 9;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 164 AND variable_key = 'lastName' AND variable_identifier = '{lastName}' AND status = 1 AND fk_eqms_document_template_id = 9;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 163 AND variable_key = 'firstName' AND variable_identifier = '{firstName}' AND status = 1 AND fk_eqms_document_template_id = 9;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 162 AND variable_key = 'conducted' AND variable_identifier = '{conducted}' AND status = 1 AND fk_eqms_document_template_id = 9;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 161 AND variable_key = 'empNo' AND variable_identifier = '{empNo}' AND status = 1 AND fk_eqms_document_template_id = 9;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND document_template_name = 'CCC-HR-F-08-Induction' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-08 - Induction.docx') AND status = 1 AND container_id = 'INDUCTION' AND fk_eqms_document_template_id = 9 AND fk_eqms_document_template_type_lk_id = 3 AND template_version = 1.0;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 9 AND fk_eqms_form_id = 37 AND status = 1;

-- Delete from dms.eqms_document_template_magic_read_details
DELETE FROM dms.eqms_document_template_magic_read_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 9 AND container_id = 'INDUCTION' AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_document_template_type_lk_id = 3 AND document_template_name = 'CCC-HR-F-08-Induction' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-08 - Induction.docx') AND status = 1 AND container_id = 'INDUCTION' AND fk_eqms_record_generation_mode_lk_id = 2 AND template_version = 1.0;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND document_template_type = 'induction' AND status = 1;

END $$;
