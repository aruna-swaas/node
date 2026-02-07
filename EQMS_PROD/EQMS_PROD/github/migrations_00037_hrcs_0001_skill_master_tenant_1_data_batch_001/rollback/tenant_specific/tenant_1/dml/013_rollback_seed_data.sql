-- Rollback: Delete seed data from file CCC-HR-F-07-Org-Chart.sql
-- Original file: CCC-HR-F-07-Org-Chart.sql
-- Seed data file: 013_seed_data.sql
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

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_hr_employee_functional_reports_eqms_hr_employee_functional_reports_fk_eqms_organization_employee_idToeqms_organization_employee' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 175;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_hr_employee_administrative_reports_eqms_hr_employee_administrative_reports_fk_eqms_organization_employee_idToeqms_organization_employee' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 175;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee_eqms_hr_employee_functional_reports_fk_eqms_organization_employee_idToeqms_organization_employee' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 175;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_roles_lk' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 175;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 175 AND form_condition = '{"id":"@employee_id"}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 175 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 175 AND variable_key = 'mapperVariable' AND variable_identifier = '{mapperVariable}' AND status = 1 AND fk_eqms_document_template_id = 10;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee_eqms_hr_employee_administrative_reports_fk_administrative_reports_employee_idToeqms_organization_employee' AND form_column_name = 'encrypted_employee_last_name' AND status = 1 AND fk_eqms_document_template_variable_id = 174;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee_eqms_hr_employee_administrative_reports_fk_administrative_reports_employee_idToeqms_organization_employee' AND form_column_name = 'encrypted_employee_first_name' AND status = 1 AND fk_eqms_document_template_variable_id = 174;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 174 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = grid operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 174 AND variable_key = 'adminTable' AND variable_identifier = '{adminTable}' AND status = 1 AND fk_eqms_document_template_id = 10;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee_eqms_hr_employee_functional_reports_fk_eqms_functional_reports_to_employee_idToeqms_organization_employee' AND form_column_name = 'encrypted_employee_last_name' AND status = 1 AND fk_eqms_document_template_variable_id = 173;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 173 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 173 AND variable_key = 'functionalEmployeeLastName' AND variable_identifier = '{functionalEmployeeLastName}' AND status = 1 AND fk_eqms_document_template_id = 10;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee_eqms_hr_employee_functional_reports_fk_eqms_functional_reports_to_employee_idToeqms_organization_employee' AND form_column_name = 'encrypted_employee_first_name' AND status = 1 AND fk_eqms_document_template_variable_id = 172;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 172 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 172 AND variable_key = 'functionalEmployeeFirstName' AND variable_identifier = '{functionalEmployeeFirstName}' AND status = 1 AND fk_eqms_document_template_id = 10;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_roles_lk' AND form_column_name = 'role_name' AND status = 1 AND fk_eqms_document_template_variable_id = 171;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 171 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 171 AND variable_key = 'roleName' AND variable_identifier = '{roleName}' AND status = 1 AND fk_eqms_document_template_id = 10;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee' AND form_column_name = 'encrypted_employee_last_name' AND status = 1 AND fk_eqms_document_template_variable_id = 170;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 170 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 170 AND variable_key = 'employeeLastName' AND variable_identifier = '{employeeLastName}' AND status = 1 AND fk_eqms_document_template_id = 10;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_employee' AND form_column_name = 'encrypted_employee_first_name' AND status = 1 AND fk_eqms_document_template_variable_id = 169;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 169 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 169 AND variable_key = 'employeeFirstName' AND variable_identifier = '{employeeFirstName}' AND status = 1 AND fk_eqms_document_template_id = 10;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 10 AND fk_eqms_form_id = 42 AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 10 AND fk_eqms_form_id = 14 AND status = 1;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 10 AND fk_eqms_document_template_type_lk_id = 4 AND document_template_name = 'CCC-HR-F-07 Org Chart' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-07 Org Chart.docx') AND template_version = 1.0 AND status = 1 AND container_id = 'HR_ORG_CHART_DOCUMENT_GENERATION';

-- Delete from dms.eqms_document_template_magic_read_details
DELETE FROM dms.eqms_document_template_magic_read_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 10 AND container_id = 'HR_ORG_CHART_DOCUMENT_GENERATION' AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_document_template_type_lk_id = 4 AND document_template_name = 'CCC-HR-F-07 Org Chart' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-07 Org Chart.docx') AND status = 1 AND container_id = 'HR_ORG_CHART_DOCUMENT_GENERATION' AND fk_eqms_record_generation_mode_lk_id = 2 AND template_version = 1.0;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND document_template_type = 'organization_chart' AND status = 1;

END $$;
