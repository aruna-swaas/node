-- Classification - Confidential
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
-- QAC-F-01 Goods Inwards Document Template - Dev Database

-- =============================================
-- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_type_lk (ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by) VALUES (63, VAR_TENANT_KEY, VAR_ORG_ID, 'goods_inwards', 1, NOW(), 1);

-- =============================================
-- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 63, 'QAC-F-01 Goods Inwards', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Quality Control/QAC-F-01 Goods Inwards.docx'), 1.0, 1, 2, NOW(), 1, 62);

-- =============================================
-- 3. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 62, 'QC_GOODS_INWARD_DOCUMENT_GENERATION', 1, NOW(), 1);

-- =============================================
-- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (62, VAR_TENANT_KEY, VAR_ORG_ID, 63, 'QAC-F-01 Goods Inwards', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Quality Control/QAC-F-01 Goods Inwards.docx'), 1.0, 1, NOW(), NOW(), 1);

-- =============================================
-- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'goodsInwardDetail', 62, '{goodsInwardDetail}', 1, 1, NOW(), 942), (VAR_TENANT_KEY, VAR_ORG_ID, 'receivedDate', 62, '{recievedDate}', 1, 1, NOW(), 943), (VAR_TENANT_KEY, VAR_ORG_ID, 'goodsInwardId', 62, '{goodsInwardId}', 1, 1, NOW(), 944);

-- =============================================
-- 6. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
-- =============================================
-- Mappers for goodsInwardDetail (ref_id 942)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 942, 'eqms_purchase_order_part_detail', 'quantity', NULL, 1, NOW(), 1, NULL), (VAR_TENANT_KEY, VAR_ORG_ID, 942, 'eqms_sanity_check_inspection', 'supply_reference_number', NULL, 1, NOW(), 1, NULL), (VAR_TENANT_KEY, VAR_ORG_ID, 942, 'eqms_part_lk', 'part_number', NULL, 1, NOW(), 1, NULL), (VAR_TENANT_KEY, VAR_ORG_ID, 942, 'eqms_goods_inward_detail', 'received_quantity', NULL, 1, NOW(), 1, NULL);

-- Mapper for receivedDate (ref_id 943)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 943, 'eqms_goods_inward', 'received_date', NULL, 1, NOW(), 1, NULL);

-- Mapper for goodsInwardId (ref_id 944)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 944, 'eqms_goods_inward', 'id', '{"id": "@goods_inward_id"}', 1, NOW(), 1, NULL);

-- =============================================
-- 7. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 942, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 943, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 944, 10, 1, 1, NOW(), 1);

END $$;



