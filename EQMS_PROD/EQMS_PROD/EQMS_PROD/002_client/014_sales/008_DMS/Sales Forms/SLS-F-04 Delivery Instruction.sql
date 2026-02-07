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
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'sales_delivery_instruction', 1, NOW(), 1, 47);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 47, 'SLS-F-04 Delivery Instruction', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-04 Delivery Instruction.docx'), 1.0, 1, 2, NOW(), 1, 46);

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_FORM_MAPPING INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status,
    created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 46, 118, 1, NOW (), 1);

    -- =============================================
    -- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 46, 'SALES_DELIVERY_INSTRUCTION_DOCUMENT_GENERATION', 1, NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (46, VAR_TENANT_KEY, VAR_ORG_ID, 47, 'SLS-F-04 Delivery Instruction', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-04 Delivery Instruction.docx'), 1.0, 1, 'SALES_DELIVERY_INSTRUCTION_DOCUMENT_GENERATION', NOW(), NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'deliveryInstructionId', 1, 46, '{deliveryInstructionId}', NOW(), 1, 806);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'expectedDeliveryDate', 1, 46, '{expectedDeliveryDate}', NOW(), 1, 807);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'customerName', 1, 46, '{customerName}', NOW(), 1, 808);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'invoiceAddress', 1, 46, '{invoiceAddress}', NOW(), 1, 809);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'invoiceLocation', 1, 46, '{invoiceLocation}', NOW(), 1, 810);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'invoiceContactPerson', 1, 46, '{invoiceContactPerson}', NOW(), 1, 811);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'shipToAddress', 1, 46, '{shipToAddress}', NOW(), 1, 812);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'shipToLocation', 1, 46, '{shipToLocation}', NOW(), 1, 813);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'orderNumber', 1, 46, '{orderNumber}', NOW(), 1, 814);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'quotationNumber', 1, 46, '{quotationNumber}', NOW(), 1, 815);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'productDetails', 1, 46, '{productDetails}', NOW(), 1, 816);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'productConfiguration', 1, 46, '{productConfiguration}', NOW(), 1, 817);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'specialInstruction', 1, 46, '{specialInstruction}', NOW(), 1, 818);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, 46, '{mapperVariable}', NOW(), 1, 819);
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'shipToContactPerson', 1, 46, '{shipToContactPerson}', NOW(), 1, 820);

    -- =============================================
    -- 6. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 820, 'eqms_delivery_dispatch', 'encrypted_ship_to_contact_person', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 819, 'eqms_quotation_product', 'id', '{"status": 1}', 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 818, 'eqms_delivery_dispatch', 'remarks_special_instruction', NULL, 1, 'HTML', NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 817, 'eqms_delivery_dispatch', 'product_configuration', NULL, 1, 'HTML', NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 816, 'eqms_delivery_product', 'number_of_units', '{"status": 1}', 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 816, 'eqms_product_variants', 'model_name', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 816, 'eqms_organization_product', 'product_name', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 815, 'eqms_quotation', 'quotation_number', '{"id": "@quotation_id"}', 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 814, 'eqms_order_acknowledgement', 'order_number', '{"status": 1}', 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 813, 'eqms_delivery_dispatch', 'encrypted_ship_to_location', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 812, 'eqms_delivery_dispatch', 'encrypted_ship_to_address', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 811, 'eqms_quotation_customer', 'encrypted_contact_person_name', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 810, 'eqms_delivery_dispatch', 'invoice_location', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 809, 'eqms_quotation_customer', 'encrypted_address', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 808, 'eqms_customer_master', 'encrypted_customer_name', '{"status": 1}', 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 807, 'eqms_order_acknowledgement', 'expected_delivery_date', NULL, 1, NULL, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 806, 'eqms_delivery_dispatch', 'id', NULL, 1, NULL, NOW(), 1);

    -- =============================================
    -- 7. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 816, 7, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 806, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 807, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 808, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 809, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 810, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 811, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 812, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 813, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 814, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 815, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 817, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 818, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 819, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 820, 10, 1, 1, NOW(), 1);

END $$;


