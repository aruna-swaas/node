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
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'sales_order_acknowledgement', 1, NOW(), 1, 45);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 45, 'SLS-F-03 Order Acknowledgement', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-03 Order Acknowledgement.docx'), 1.0, 1, 2, NOW(), 1, 44);


    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_FORM_MAPPING INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status,
    created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 44, 98, 1, NOW (), 1);

    -- =============================================
    -- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 44, 'SALES_ORDER_ACKNOWLEDGEMENT_DOCUMENT_GENERATION', 1, NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (44, VAR_TENANT_KEY, VAR_ORG_ID, 45, 'SLS-F-03 Order Acknowledgement', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-03 Order Acknowledgement.docx'), 1.0, 1, 'SALES_ORDER_ACKNOWLEDGEMENT_DOCUMENT_GENERATION', NOW(), NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'customerName', 1, 44, '{customerName}', NOW(), 1, 790);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'customerAddress', 1, 44, '{customerAddress}', NOW(), 1, 791);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'expectedDate', 1, 44, '{expectedDate}', NOW(), 1, 792);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'quotationDate', 1, 44, '{quotationDate}', NOW(), 1, 793);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'quotationNumber', 1, 44, '{quotationNumber}', NOW(), 1, 794);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'orderDate', 1, 44, '{orderDate}', NOW(), 1, 795);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'orderNumber', 1, 44, '{orderNumber}', NOW(), 1, 796);

    -- =============================================
    -- 6. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 790, 'eqms_customer_master', 'encrypted_customer_name', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 791, 'eqms_quotation_customer', 'encrypted_address', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 792, 'eqms_order_acknowledgement', 'expected_delivery_date', '{"id": "@order_acknowledgement_id"}', 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 793, 'eqms_quotation', 'quotation_date', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 794, 'eqms_quotation', 'quotation_number', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 795, 'eqms_order_acknowledgement', 'order_date', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 796, 'eqms_order_acknowledgement', 'order_number', NULL, 1, NULL, NOW(), 1);

    -- =============================================
    -- 7. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 790, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 791, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 792, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 793, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 794, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 795, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 796, 10, 1, 1, NOW(), 1);

END $$;


