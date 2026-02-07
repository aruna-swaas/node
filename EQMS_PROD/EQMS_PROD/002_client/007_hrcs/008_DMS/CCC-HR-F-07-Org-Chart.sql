--Org Chart - Updated for New Schema
-- Declare variables for tenant, organization, and bucket
DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
BEGIN

-- Refactored to use new scalable schema structure
INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'organization_chart', 1, NOW(), 1, 4);

------------------------------------------------------------------------DOCUMENT_TEMPLATE_DATA--------------------------------------------------------------------------
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, container_id, fk_eqms_record_generation_mode_lk_id, created_date, created_by, template_version, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 4, 'CCC-HR-F-07 Org Chart', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-07 Org Chart.docx'), 1, 'HR_ORG_CHART_DOCUMENT_GENERATION', 2, NOW(), 1, 1.0, 10);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 10, 'HR_ORG_CHART_DOCUMENT_GENERATION', 1, NOW(), 1);

--------------------------------------------------------------------DOCUMENT_TEMPLATE_HISTORY_DATA----------------------------------------------------------------------
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, valid_from_date, created_date, created_by) VALUES (10, 4, VAR_TENANT_KEY, VAR_ORG_ID, 'CCC-HR-F-07 Org Chart', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-07 Org Chart.docx'), 1.0, 1, 'HR_ORG_CHART_DOCUMENT_GENERATION', NOW(), NOW(), 1);

--INSERT INTO dms.eqms_document_template_form_mapping
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 10, 14, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 10, 42, 1, NOW(), 1);

------------------------------------------------------------------TEMPLATE_VARIABLE_AND_MAPPER_DATA---------------------------------------------------------------------
--Org char Variable into eqms_document_template_variable with Max of eqms_document_template (text operation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'employeeFirstName', '{employeeFirstName}', 1, 10, NOW(), 1, 169);

--Inserting transformation rule for employeeFirstName
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 169, 10, 1, 1, NOW(), 1);

-- Mapper data for the org chart grid
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee', 'encrypted_employee_first_name', 1, 169, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'employeeLastName', '{employeeLastName}', 1, 10, NOW(), 1, 170);

--Inserting transformation rule for employeeLastName
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 170, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee', 'encrypted_employee_last_name', 1, 170, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'roleName', '{roleName}', 1, 10, NOW(), 1, 171);

--Inserting transformation rule for roleName
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 171, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_roles_lk', 'role_name', 1, 171, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'functionalEmployeeFirstName', '{functionalEmployeeFirstName}', 1, 10, NOW(), 1, 172);

--Inserting transformation rule for functionalEmployeeFirstName
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 172, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee_eqms_hr_employee_functional_reports_fk_eqms_functional_reports_to_employee_idToeqms_organization_employee', 'encrypted_employee_first_name', 1, 172, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'functionalEmployeeLastName', '{functionalEmployeeLastName}', 1, 10, NOW(), 1, 173);

--Inserting transformation rule for functionalEmployeeLastName
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 173, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee_eqms_hr_employee_functional_reports_fk_eqms_functional_reports_to_employee_idToeqms_organization_employee', 'encrypted_employee_last_name', 1, 173, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'adminTable', '{adminTable}', 1, 10, NOW(), 1, 174);

--Inserting transformation rule for adminTable (grid operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 174, 7, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee_eqms_hr_employee_administrative_reports_fk_administrative_reports_employee_idToeqms_organization_employee', 'encrypted_employee_first_name', 1, 174, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee_eqms_hr_employee_administrative_reports_fk_administrative_reports_employee_idToeqms_organization_employee', 'encrypted_employee_last_name', 1, 174, NOW(), 1);

--Mapper Variable into eqms_document_template_variable with Max of eqms_document_template (text operation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', '{mapperVariable}', 1, 10, NOW(), 1, 175);

--Inserting transformation rule for mapperVariable
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 175, 10, 1, 1, NOW(), 1);

-- Mapper data for the mapper variable
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, form_condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee', 'id', 1, 175, '{"id":"@employee_id"}', NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_roles_lk', 'id', 1, 175, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_employee_eqms_hr_employee_functional_reports_fk_eqms_organization_employee_idToeqms_organization_employee', 'id', 1, 175, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_hr_employee_administrative_reports_eqms_hr_employee_administrative_reports_fk_eqms_organization_employee_idToeqms_organization_employee', 'id', 1, 175, NOW(), 1);
 
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_hr_employee_functional_reports_eqms_hr_employee_functional_reports_fk_eqms_organization_employee_idToeqms_organization_employee', 'id', 1, 175, NOW(), 1);

END $$;
