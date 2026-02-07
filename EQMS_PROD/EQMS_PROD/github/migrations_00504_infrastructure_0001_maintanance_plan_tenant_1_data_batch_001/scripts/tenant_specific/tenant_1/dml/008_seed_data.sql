-- Classification - Confidential
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
--INF-F-02 Installation Report Template Document - Dev Database

-- Insert document template type lookup first
INSERT INTO dms.eqms_document_template_type_lk (ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by) VALUES 
(53, VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructure_installation_report_template', 1, NOW(), 1);

-- Insert document template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 53, 'INF-F-02 Installation Report', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Infrastructure/INF-F-02 Installation Report.docx'), 1.0, 1, 2, NOW(), 1, 52);

INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 52, 162, 1, NOW(), 1);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 52, 'INFRASTRUCTURE_INSTALLATION_REPORT_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (52, VAR_TENANT_KEY, VAR_ORG_ID, 53, 'INF-F-02 Installation Report', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Infrastructure/Infrastructure Forms/INF-F-02 Installation Report.docx'), 1.0, 1, NOW(), NOW(), 1);

-- Text Variables (ref_ids 858-870)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'installation_date', 52, '{installation_date}', 1, 1, NOW(), 858),
(VAR_TENANT_KEY, VAR_ORG_ID, 'installation_location', 52, '{installation_location}', 1, 1, NOW(), 859),
(VAR_TENANT_KEY, VAR_ORG_ID, 'receipt_date', 52, '{receipt_date}', 1, 1, NOW(), 860),
(VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructure_name', 52, '{infrastructure_name}', 1, 1, NOW(), 861),
(VAR_TENANT_KEY, VAR_ORG_ID, 'po_number', 52, '{po_number}', 1, 1, NOW(), 862),
(VAR_TENANT_KEY, VAR_ORG_ID, 'po_date', 52, '{po_date}', 1, 1, NOW(), 863),
(VAR_TENANT_KEY, VAR_ORG_ID, 'department_name', 52, '{department_name}', 1, 1, NOW(), 864),
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_name', 52, '{vendor_name}', 1, 1, NOW(), 865),
(VAR_TENANT_KEY, VAR_ORG_ID, 'model_no', 52, '{model_no}', 1, 1, NOW(), 866),
(VAR_TENANT_KEY, VAR_ORG_ID, 'maintenance_service_type', 52, '{maintenance_service_type}', 1, 1, NOW(), 867),
(VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 52, '{mapperVariable}', 1, 1, NOW(), 868),
(VAR_TENANT_KEY, VAR_ORG_ID, 'is_installation_required', 52, '{is_installation_required}', 1, 1, NOW(), 869),
(VAR_TENANT_KEY, VAR_ORG_ID, 'doc_no', 52, '{doc_no}', 1, 1, NOW(), 870);

-- Transformation Rules for Text Variables (operation_id = 10)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 858, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 859, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 860, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 861, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 862, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 863, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 864, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 865, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 866, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 867, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 868, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 869, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 870, 10, 1, 1, NOW(), 1);

-- Mapper Data for Text Variables
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date) VALUES 
-- Installation Date
(VAR_TENANT_KEY, VAR_ORG_ID, 858, 'eqms_infrastructure_installation_report', 'installation_date', NULL, 1, 1, NOW()),
-- Installation Location
(VAR_TENANT_KEY, VAR_ORG_ID, 859, 'eqms_infrastructure_installation_report', 'installation_location', NULL, 1, 1, NOW()),
-- Receipt Date
(VAR_TENANT_KEY, VAR_ORG_ID, 860, 'eqms_infrastructure_installation_report', 'receipt_date', NULL, 1, 1, NOW()),
-- Infrastructure Name
(VAR_TENANT_KEY, VAR_ORG_ID, 861, 'eqms_infrastructure', 'infrastructure_name', NULL, 1, 1, NOW()),
-- PO Number
(VAR_TENANT_KEY, VAR_ORG_ID, 862, 'eqms_purchase_order', 'po_number', NULL, 1, 1, NOW()),
-- PO Date
(VAR_TENANT_KEY, VAR_ORG_ID, 863, 'eqms_purchase_order', 'po_date', NULL, 1, 1, NOW()),
-- Department Name
(VAR_TENANT_KEY, VAR_ORG_ID, 864, 'eqms_organization_department', 'department_name', NULL, 1, 1, NOW()),
-- Vendor Name
(VAR_TENANT_KEY, VAR_ORG_ID, 865, 'eqms_vendors', 'encrypted_vendor_name', NULL, 1, 1, NOW()),
-- Model No
(VAR_TENANT_KEY, VAR_ORG_ID, 866, 'eqms_purchase_order_infrastructure_detail', 'model_no', NULL, 1, 1, NOW()),
-- Maintenance Service Type
(VAR_TENANT_KEY, VAR_ORG_ID, 867, 'eqms_maintenance_service_type_lk', 'maintenance_service_type', NULL, 1, 1, NOW()),
-- Is Installation Required
(VAR_TENANT_KEY, VAR_ORG_ID, 869, 'eqms_selection_lk_eqms_infrastructure_eqms_tenant_key_fk_eqms_organization_id_fk_eqms_selection_installation_procedure_lk_idToeqms_selection_lk', 'selection_type', NULL, 1, 1, NOW()),
-- Doc No
(VAR_TENANT_KEY, VAR_ORG_ID, 870, 'eqms_infrastructure_doc_supporting_files', 'fk_eqms_file_id', NULL, 1, 1, NOW());

-- Mapper Variable with Form Condition
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date, form_condition) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 868, 'eqms_infrastructure', 'id', NULL, 1, 1, NOW(), '{"id" : "@infrastructure_id"}');

END $$;

