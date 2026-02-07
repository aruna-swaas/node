-- Classification - Confidential
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
--Deviation Note Document Template - Dev Database

-- Insert document template type lookup first
INSERT INTO dms.eqms_document_template_type_lk (ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by) VALUES 
(46, VAR_TENANT_KEY, VAR_ORG_ID, 'deviation_note', 1, NOW(), 1);

-- Insert document template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 46, 'PUR-F-02 Deviation Note', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-02 Deviation Note.docx'), 1.0, 1, 2, NOW(), 1, 45);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 45, 'DEVIATION_NOTE_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (45, VAR_TENANT_KEY, VAR_ORG_ID, 46, 'Deviation Note Document Template', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-02 Deviation Note.docx'), 1.0, 1, NOW(), NOW(), 1);

-- Text Variables (ref_ids 797-805)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'product_name', 45, '{product_name}', 1, 1, NOW(), 797),
(VAR_TENANT_KEY, VAR_ORG_ID, 'model_name', 45, '{model_name}', 1, 1, NOW(), 798),
(VAR_TENANT_KEY, VAR_ORG_ID, 'bom_number', 45, '{bom_number}', 1, 1, NOW(), 799),
(VAR_TENANT_KEY, VAR_ORG_ID, 'bom_part_number', 45, '{bom_part_number}', 1, 1, NOW(), 800),
(VAR_TENANT_KEY, VAR_ORG_ID, 'bom_part_description', 45, '{bom_part_description}', 1, 1, NOW(), 801),
(VAR_TENANT_KEY, VAR_ORG_ID, 'bom_manufacturer', 45, '{bom_manufacturer}', 1, 1, NOW(), 802),
(VAR_TENANT_KEY, VAR_ORG_ID, 'deviation_reason', 45, '{deviation_reason}', 1, 1, NOW(), 803),
(VAR_TENANT_KEY, VAR_ORG_ID, 'decision_reason', 45, '{decision_reason}', 1, 1, NOW(), 804),
(VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 45, '{mapperVariable}', 1, 1, NOW(), 805);

-- Transformation Rules for Text Variables (operation_id = 10)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 797, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 798, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 799, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 800, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 801, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 802, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 803, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 804, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 805, 10, 1, 1, NOW(), 1);

-- Mapper Data for Text Variables
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date) VALUES 
-- Product Name
(VAR_TENANT_KEY, VAR_ORG_ID, 797, 'eqms_organization_product', 'product_name', NULL, 1, 1, NOW()),
-- Model Name
(VAR_TENANT_KEY, VAR_ORG_ID, 798, 'eqms_product_variants', 'model_name', NULL, 1, 1, NOW()),
-- BOM Number
(VAR_TENANT_KEY, VAR_ORG_ID, 799, 'eqms_bom_master', 'bom_number', NULL, 1, 1, NOW()),
-- BOM Part Number
(VAR_TENANT_KEY, VAR_ORG_ID, 800, 'eqms_bill_of_materials', 'mfg_part_number', NULL, 1, 1, NOW()),
-- BOM Part Description
(VAR_TENANT_KEY, VAR_ORG_ID, 801, 'eqms_bill_of_materials', 'part_description', NULL, 1, 1, NOW()),
-- BOM Manufacturer
(VAR_TENANT_KEY, VAR_ORG_ID, 802, 'eqms_bill_of_materials', 'manufacturer_name', NULL, 1, 1, NOW()),
-- Deviation Reason
(VAR_TENANT_KEY, VAR_ORG_ID, 803, 'eqms_incoming_inspection_deviation_note', 'deviation_reason', NULL, 1, 1, NOW()),
-- Decision Reason
(VAR_TENANT_KEY, VAR_ORG_ID, 804, 'eqms_incoming_inspection_deviation_note', 'decision_reason', NULL, 1, 1, NOW());

-- Mapper Variable for tables with id columns (grouped under mapperVariable)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 805, 'eqms_part_lk', 'id', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 805, 'eqms_purchase_order_part_detail', 'id', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 805, 'eqms_sanity_check_inspection', 'id', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 805, 'eqms_goods_inward_detail', 'id', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 805, 'eqms_incoming_inspection_part_details', 'id', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 805, 'eqms_incoming_inspection_results', 'id', NULL, 1, 1, NOW());

-- Mapper Variable with Form Condition (using keys section structure)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date, form_condition) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 805, 'eqms_incoming_inspection_deviation_note', 'id', NULL, 1, 1, NOW(), '{"id": "@deviation_note_id"}');

END $$;

