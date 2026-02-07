-- Classification: Confidential

DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
    -- =============================================
    -- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id)
    VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'purchasing_information', 1, NOW(), 1, 57);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name,
        document_template_extension, s3_bucket_name, s3_object_key, template_version, status,
        created_date, created_by, ref_id, fk_eqms_record_generation_mode_lk_id
    ) VALUES (
        VAR_TENANT_KEY, VAR_ORG_ID, 57, 'PUR-F-03 Purchasing Information - Parts', '.docx',
        VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-03 Purchasing Information - Parts.docx'),
        1.0, 1, NOW(), 1, 56, 2
    );

    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (56, VAR_TENANT_KEY, VAR_ORG_ID, 57, 'PUR-F-03 Purchasing Information - Parts', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-03 Purchasing Information - Parts.docx'), 1.0, 1, NOW(), NOW(), 1);

    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id,
    status, created_by, created_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 56, 164, 1, 1, NOW());

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable (
        eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_date, created_by, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 'partNumber', 1, NOW(), 1, 56, '{partNumber}', 894),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'partName', 1, NOW(), 1, 56, '{partName}', 895),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'vendorName', 1, NOW(), 1, 56, '{vendorName}', 896),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'partDescription', 1, NOW(), 1, 56, '{partDescription}', 897),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'drawingNumber', 1, NOW(), 1, 56, '{drawingNumber}', 898),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'manufacturerName', 1, NOW(), 1, 56, '{manufacturerName}', 899),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'mfgPartNumber', 1, NOW(), 1, 56, '{mfgPartNumber}', 900),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'partSpecification', 1, NOW(), 1, 56, '{partSpecification}', 901),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, NOW(), 1, 56, '{mapperVariable}', 902);

    -- =============================================
    -- 4. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_variable_mapper (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 894, 'eqms_part_lk', 'part_number', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 895, 'eqms_part_lk', 'part_name', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 896, 'eqms_vendors', 'encrypted_vendor_name', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 897, 'eqms_part_lk', 'part_description', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 898, 'eqms_part_lk', 'drawing_number', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 899, 'eqms_bom_assembly_part_details', 'manufacturer_name', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 900, 'eqms_bom_assembly_part_details', 'mfg_part_number', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 901, 'eqms_part_lk', 'part_specification', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 902, 'eqms_purchase_order_part_detail', 'id', '{"id": "@purchase_order_part_detail_id"}', 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 902, 'eqms_purchase_order', 'id', NULL, 1, NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 894, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 895, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 896, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 897, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 898, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 899, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 900, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 901, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 902, 10, 1, 1, NOW(), 1);

    -- =============================================
    -- 6. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 56, 'PURCHASING_INFORMATION_PARTS_DOCUMENT_GENERATION', 1, NOW(), 1);

END $$;

