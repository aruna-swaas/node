-- Classification - Confidential
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
-- INF-F-03 Infrastructure Qualification Template Document - Dev Database

-- Insert document template type lookup first
INSERT INTO dms.eqms_document_template_type_lk (
    ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by
) VALUES 
(54, VAR_TENANT_KEY, VAR_ORG_ID, 'record_generation_infrastructure_qualification', 1, NOW(), 1);

-- Insert document template
INSERT INTO dms.eqms_document_template (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'INF-F-03 Infrastructure Qualification', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Infrastructure/INF-F-03 Infrastructure Qualification.docx'), 1.0, 1, 2, NOW(), 1, 53);

INSERT INTO dms.eqms_document_template_form_mapping (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 137, 1, NOW(), 1);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'INFRASTRUCTURE_QUALIFICATION_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (
    fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by
) VALUES 
(53, VAR_TENANT_KEY, VAR_ORG_ID, 54, 'INF-F-03 Infrastructure Qualification', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Infrastructure/INF-F-03 Infrastructure Qualification.docx'), 1.0, 1, NOW(), NOW(), 1);

-- Text Variables (ref_ids 871-878, not including grid/array)
INSERT INTO dms.eqms_document_template_variable (
    eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id
) VALUES 
-- eqms_infrastructure_qualification_checklist
(VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 53, '{mapperVariable}', 1, 1, NOW(), 871),
-- eqms_infrastructure
(VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructure_name', 53, '{infrastructure_name}', 1, 1, NOW(), 872),
(VAR_TENANT_KEY, VAR_ORG_ID, 'serial_number', 53, '{serial_number}', 1, 1, NOW(), 873),
-- eqms_infrastructure_qualification
(VAR_TENANT_KEY, VAR_ORG_ID, 'application_of_infrastructure', 53, '{application_of_infrastructure}', 1, 1, NOW(), 874),
(VAR_TENANT_KEY, VAR_ORG_ID, 'qualification_procedure_criteria', 53, '{qualification_procedure_criteria}', 1, 1, NOW(), 875),
-- eqms_organization_department
(VAR_TENANT_KEY, VAR_ORG_ID, 'department_name', 53, '{department_name}', 1, 1, NOW(), 876);

-- Transformation Rules for Text Variables (operation_id = 10, all text)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 871, 10, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 872, 10, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 873, 10, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 874, 10, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 875, 10, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 876, 10, 1, 1, NOW(), 1);

-- Mapper Data for Text Variables
INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date, form_condition
) VALUES 
-- fk_eqms_infrastructure_id
(VAR_TENANT_KEY, VAR_ORG_ID, 871, 'eqms_infrastructure_qualification_checklist', 'fk_eqms_infrastructure_id', NULL, 1, 1, NOW(), '{"fk_eqms_infrastructure_id" : "@infrastructure_id"}');

-- Mapper Data for Text Variables
INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date
) VALUES 
-- infrastructure_name
(VAR_TENANT_KEY, VAR_ORG_ID, 872, 'eqms_infrastructure', 'infrastructure_name', NULL, 1, 1, NOW()),
-- serial_number
(VAR_TENANT_KEY, VAR_ORG_ID, 873, 'eqms_infrastructure', 'serial_number', NULL, 1, 1, NOW()),
-- application_of_infrastructure
(VAR_TENANT_KEY, VAR_ORG_ID, 874, 'eqms_infrastructure_qualification', 'application_of_infrastructure', NULL, 1, 1, NOW()),
-- qualification_procedure_criteria
(VAR_TENANT_KEY, VAR_ORG_ID, 875, 'eqms_infrastructure_qualification', 'qualification_procedure_criteria', NULL, 1, 1, NOW()),
-- department_name
(VAR_TENANT_KEY, VAR_ORG_ID, 876, 'eqms_organization_department', 'department_name', NULL, 1, 1, NOW());

-- =============================================
-- Grid Variables (each row = separate item, start ref_id 878)
-- =============================================
INSERT INTO dms.eqms_document_template_variable (
    eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id
) VALUES 
-- qualification_test_result
(VAR_TENANT_KEY, VAR_ORG_ID, 'qualification_test_result', 53, '{qualification_test_result}', 1, 1, NOW(), 877);

-- Grid Transformation Rules
INSERT INTO dms.eqms_document_template_variable_transformation_rules (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 877, 7, 1, 1, NOW(), 1);

-- Grid Mapper Data
INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date
) VALUES 
-- verification_result
(VAR_TENANT_KEY, VAR_ORG_ID, 877, 'eqms_verification_result_lk', 'verification_result', NULL, 1, 1, NOW()),
-- test_performed
(VAR_TENANT_KEY, VAR_ORG_ID, 877, 'eqms_infrastructure_qualification_checklist_items', 'test_performed', NULL, 1, 1, NOW()),
-- acceptance_criteria
(VAR_TENANT_KEY, VAR_ORG_ID, 877, 'eqms_infrastructure_qualification_checklist_items', 'acceptance_criteria', NULL, 1, 1, NOW());

END $$;