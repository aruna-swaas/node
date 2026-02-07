--Employee Checklist - Updated for New Schema
-- Declare variables for tenant, organization, and bucket
DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
BEGIN

    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'employee_checklist', 1, NOW(), 1, 1);
-- Insert document template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id,document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 1,'CCC-HR-F-10 Employee Check List', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-10 Employee Check List.docx'), 1.0, 1, 'HR_EMPLOYEE_CHECKLIST_DOCUMENT_GENERATION', 2, NOW(), 1, 7);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 7, 'HR_EMPLOYEE_CHECKLIST_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (7, VAR_TENANT_KEY, VAR_ORG_ID, 1,'CCC-HR-F-10 Employee Check List', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/HR Forms/CCC-HR-F-10 Employee Check List.docx'), 1.0, 1, 'HR_EMPLOYEE_CHECKLIST_DOCUMENT_GENERATION', NOW(), NOW(), 1);

INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 7, 36, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 7, 37, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 7, 14, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 7, 39, 1, NOW(), 1);


-- Insert document template variables
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'employeeFirstName', 7, '{employeeFirstName}', 1, 1, NOW(), 134);

--Inserting transformation rule for employeeFirstName
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 134, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'employeeLastName', 7, '{employeeLastName}', 1, 1, NOW(), 135);

--Inserting transformation rule for employeeLastName
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 135, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'employeeFunction', 7, '{employeeFunction}', 1, 1, NOW(), 136);

--Inserting transformation rule for employeeFunction
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 136, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'employeeId', 7, '{employeeId}', 1, 1, NOW(), 137);

--Inserting transformation rule for employeeId
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 137, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'employeeRole', 7, '{employeeRole}', 1, 1, NOW(), 138);

--Inserting transformation rule for employeeRole
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 138, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'empQualificationDoc', 7, '{empQualificationDoc}', 1, 1, NOW(), 139);

--Inserting transformation rule for empQualificationDoc (grid operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 139, 7, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'empExpCertificate', 7, '{empExpCertificate}', 1, 1, NOW(), 140);

--Inserting transformation rule for empExpCertificate (grid operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 140, 7, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 7, '{mapperVariable}', 1, 1, NOW(), 141);

--Inserting transformation rule for mapperVariable
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 141, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'trainingNeedDocument', 7, '{trainingNeedDocument}', 1, 1, NOW(), 142);

--Inserting transformation rule for trainingNeedDocument (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 142, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "training_need"}}', NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'trainingNeedDocumentDate', 7, '{trainingNeedDocumentDate}', 1, 1, NOW(), 143);

--Inserting transformation rule for trainingNeedDocumentDate (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 143, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "training_need"}}', NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'invidualCompetencyDocument', 7, '{invidualCompetencyDocument}', 1, 1, NOW(), 144);

--Inserting transformation rule for invidualCompetencyDocument (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 144, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "individual_competency"}}', NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'invidualCompetencyDocumentDate', 7, '{invidualCompetencyDocumentDate}', 1, 1, NOW(), 145);

--Inserting transformation rule for invidualCompetencyDocumentDate (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 145, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "individual_competency"}}', NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'orgChartDocument', 7, '{orgChartDocument}', 1, 1, NOW(), 146);

--Inserting transformation rule for orgChartDocument (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 146, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "organization_chart"}}', NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'orgChartDocumentDate', 7, '{orgChartDocumentDate}', 1, 1, NOW(), 147);

--Inserting transformation rule for orgChartDocumentDate (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 147, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "organization_chart"}}', NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'inductionChartDocument', 7, '{inductionChartDocument}', 1, 1, NOW(), 148);

--Inserting transformation rule for inductionChartDocument (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 148, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "induction"}}', NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'inductionChartDocumentDate', 7, '{inductionChartDocumentDate}', 1, 1, NOW(), 149);

--Inserting transformation rule for inductionChartDocumentDate (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 149, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "induction"}}', NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'trainingEvaluationDocument', 7, '{trainingEvaluationDocument}', 1, 1, NOW(), 150);

--Inserting transformation rule for trainingEvaluationDocument (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 150, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "training_effectiveness_evaluation"}}', NOW(), 1);

INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'trainingEvaluationDocumentDate', 7, '{trainingEvaluationDocumentDate}', 1, 1, NOW(), 151);

--Inserting transformation rule for trainingEvaluationDocumentDate (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 151, 8, 1, 1, '{"eqms_component_record": {"chosen_type": "training_effectiveness_evaluation"}}', NOW(), 1);

-- Insert document variable mappers for basic employee fields
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 134, 'eqms_organization_employee', 'encrypted_employee_first_name', 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 135, 'eqms_organization_employee', 'encrypted_employee_last_name', 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 136, 'eqms_organization_department', 'department_name', 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 137, 'eqms_organization_employee', 'encrypted_employee_id', 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 138, 'eqms_roles_lk', 'role_name', 1, 1, NOW());

-- Insert document variable mappers for qualification documents
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 139, 'eqms_file_edu', 'file_name', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 139, 'eqms_file_edu', 'status', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 139, 'eqms_file_edu', 'created_date', 1, 1, NOW());

-- Insert document variable mappers for experience certificates
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 140, 'eqms_file_exp', 'file_name', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 140, 'eqms_file_exp', 'status', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 140, 'eqms_file_exp', 'created_date', 1, 1, NOW());

-- Insert document variable mappers for mapper variable (complex relationships)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_organization_employee', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_roles_lk', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_file', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_hr_employee_edu_qual_supporting_document', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_hr_employee_experience_supporting_document', 'id', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_record', 'id', 1, 1, NOW());

-- Insert document variable mappers for training need documents
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 142, 'eqms_file_history', 'file_name', 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 143, 'eqms_file_history', 'created_date', 1, 1, NOW());

-- Insert document variable mappers for individual competency documents
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 144, 'eqms_file_history', 'file_name', 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 145, 'eqms_file_history', 'created_date', 1, 1, NOW());

-- Insert document variable mappers for organization chart documents
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 146, 'eqms_file_history', 'file_name', 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 147, 'eqms_file_history', 'created_date', 1, 1, NOW());

-- Insert document variable mappers for induction documents
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 148, 'eqms_file_history', 'file_name', 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 149, 'eqms_file_history', 'created_date', 1, 1, NOW());

-- Insert document variable mappers for training effectiveness evaluation documents
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 150, 'eqms_file_history', 'file_name', 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 151, 'eqms_file_history', 'created_date', 1, 1, NOW());

-- Insert additional mapper for employee with condition
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_organization_employee', 'id', '{"id": "@employee_id"}', 1, 1, NOW());

-- Insert additional mappers for component records
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_component_record', 'chosen_type', '{"chosen_type": "training_need", "fk_eqms_chosen_id": "@employee_id"}', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_component_record', 'chosen_type', '{"chosen_type": "individual_competency", "fk_eqms_chosen_id": "@employee_id"}', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_component_record', 'chosen_type', '{"chosen_type": "organization_chart", "fk_eqms_chosen_id": "@employee_id"}', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_component_record', 'chosen_type', '{"chosen_type": "induction", "fk_eqms_chosen_id": "@employee_id"}', 1, 1, NOW()), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 'eqms_component_record', 'chosen_type', '{"chosen_type": "training_effectiveness_evaluation", "fk_eqms_chosen_id": "@employee_id"}', 1, 1, NOW());

END $$;
