--Classification: Confidential

DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN

    -- =============================================
    -- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'record_generation_deviation_note', 1, NOW(), 1, 52);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 52, 'QAC-F-04 Deviation Note', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Quality Control/QAC-F-04 Deviation Note.docx'), 1.0, 1, 2, NOW(), 1, 51);

    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 51, 136, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 51, 160, 1, NOW(), 1);

    -- =============================================
    -- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 51, 'QC_DEVIATION_NOTE_DOCUMENT_GENERATION', 1, NOW(), 1);

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (51, VAR_TENANT_KEY, VAR_ORG_ID, 52, 'QAC-F-04 Deviation Note', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Quality Control/QAC-F-04 Deviation Note.docx'), 1.0, 1, 'QC_DEVIATION_NOTE_DOCUMENT_GENERATION', NOW(), NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    --    (with created_date, created_by, variable_identifier)
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'supplyReferenceNumber', 1, 51, '{supplyReferenceNumber}', NOW(), 1, 851), (VAR_TENANT_KEY, VAR_ORG_ID, 'partDescription', 1, 51, '{partDescription}', NOW(), 1, 852), (VAR_TENANT_KEY, VAR_ORG_ID, 'partNumber', 1, 51, '{partNumber}', NOW(), 1, 853), (VAR_TENANT_KEY, VAR_ORG_ID, 'deviationReason', 1, 51, '{deviationReason}', NOW(), 1, 854), (VAR_TENANT_KEY, VAR_ORG_ID, 'deviationComments', 1, 51, '{deviationComments}', NOW(), 1, 855), (VAR_TENANT_KEY, VAR_ORG_ID, 'decisionReason', 1, 51, '{decisionReason}', NOW(), 1, 856), (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, 51, '{mapperVariable}', NOW(), 1, 857);

    -- =============================================
    -- 5. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    --    (updated based on provided mappings, with created_date & created_by)
    -- =============================================
    INSERT INTO dms.eqms_document_variable_mapper (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 857, 'eqms_purchase_order_part_detail', 'id', NULL, 1, NULL, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 857, 'eqms_goods_inward_details', 'id', NULL, 1, NULL, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 853, 'eqms_part_lk', 'part_number', NULL, 1, NULL, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 851, 'eqms_sanity_check_inspection', 'supply_reference_number', NULL, 1, NULL, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 856, 'eqms_incoming_inspection_deviation_note', 'decision_reason', NULL, 1, NULL, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 855, 'eqms_incoming_inspection_deviation_note', 'deviation_comments', NULL, 1, NULL, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 854, 'eqms_incoming_inspection_deviation_note', 'deviation_reason', NULL, 1, NULL, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 857, 'eqms_incoming_inspection_part_details', 'id', NULL, 1, NULL, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 857, 'eqms_incoming_inspection_results', 'id', '{"id": "@incoming_inspection_results_id"}', 1, NULL, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 852, 'eqms_part_lk', 'part_description', NULL, 1, NULL, NOW(), 1);

    -- =============================================
    -- 6. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    --    (based on provided rules, with created_date & created_by)
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 857, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 851, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 852, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 853, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 854, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 855, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 856, 10, 1, 1, NOW(), 1);

END $$;

