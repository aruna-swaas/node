--Classification: Confidential

DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN

    -- =============================================
    -- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'initiate_quotation', 1, NOW(), 1, 44);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 44, 'SLS-F-01 Quotation Format', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-01 Quotation Format.docx'), 1.0, 1, 2, NOW(), 1, 43);

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_FORM_MAPPING INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status,
    created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 43, 119, 1, NOW (), 1);

    -- =============================================
    -- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 43, 'SALES_QUOTATION_FORMAT_DOCUMENT_GENERATION', 1, NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (43, VAR_TENANT_KEY, VAR_ORG_ID, 44, 'SLS-F-01 Quotation Format', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-01 Quotation Format.docx'), 1.0, 1, 'SALES_QUOTATION_FORMAT_DOCUMENT_GENERATION', NOW(), NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'customerName', 1, 43, '{customerName}', NOW(), 1, 782);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'quotationNumber', 1, 43, '{quotationNumber}', NOW(), 1, 783);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'address', 1, 43, '{address}', NOW(), 1, 784);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'productsTable', 1, 43, '{productsTable}', NOW(), 1, 785);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'featuresAndApplications', 1, 43, '{featuresAndApplication}', NOW(), 1, 786);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'productSupply', 1, 43, '{productSupply}', NOW(), 1, 787);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'quotationDate', 1, 43, '{quotationDate}', NOW(), 1, 788);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, 43, '{mapperVariable}', NOW(), 1, 789);

    -- =============================================
    -- 6. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 782, 'eqms_customer_master', 'encrypted_customer_name', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 783, 'eqms_quotation', 'quotation_number', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 784, 'eqms_quotation_customer', 'encrypted_address', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 785, 'eqms_quotation_product', 'quantity', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 785, 'eqms_quotation_product', 'price', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 785, 'eqms_organization_product', 'product_name', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 785, 'eqms_product_variants', 'model_name', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 786, 'eqms_quotation', 'features_and_application', NULL, 1, 'HTML', NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 787, 'eqms_quotation', 'product_supply_consists_of', NULL, 1, 'HTML', NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 788, 'eqms_quotation', 'quotation_date', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 789, 'eqms_quotation', 'id', '{"id": "@quotation_id"}', 1, NULL, NOW(), 1);

    -- =============================================
    -- 7. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 785, 7, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 782, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 783, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 784, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 786, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 787, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 788, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 789, 10, 1, 1, NOW(), 1);

END $$;
