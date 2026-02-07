-- Rollback: Delete seed data from file SLS-F-04 Delivery Instruction.sql
-- Original file: SLS-F-04 Delivery Instruction.sql
-- Seed data file: 009_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 820 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 819 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 818 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 817 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 815 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 814 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 813 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 812 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 811 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 810 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 809 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 808 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 807 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 806 AND fk_eqms_document_variable_operation_id = 10 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 816 AND fk_eqms_document_variable_operation_id = 7 AND status = 1 AND order = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 806 AND form_table_name = 'eqms_delivery_dispatch' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 807 AND form_table_name = 'eqms_order_acknowledgement' AND form_column_name = 'expected_delivery_date' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 808 AND form_table_name = 'eqms_customer_master' AND form_column_name = 'encrypted_customer_name' AND form_condition = '{"status": 1}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 809 AND form_table_name = 'eqms_quotation_customer' AND form_column_name = 'encrypted_address' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 810 AND form_table_name = 'eqms_delivery_dispatch' AND form_column_name = 'invoice_location' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 811 AND form_table_name = 'eqms_quotation_customer' AND form_column_name = 'encrypted_contact_person_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 812 AND form_table_name = 'eqms_delivery_dispatch' AND form_column_name = 'encrypted_ship_to_address' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 813 AND form_table_name = 'eqms_delivery_dispatch' AND form_column_name = 'encrypted_ship_to_location' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 814 AND form_table_name = 'eqms_order_acknowledgement' AND form_column_name = 'order_number' AND form_condition = '{"status": 1}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 815 AND form_table_name = 'eqms_quotation' AND form_column_name = 'quotation_number' AND form_condition = '{"id": "@quotation_id"}' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 816 AND form_table_name = 'eqms_organization_product' AND form_column_name = 'product_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 816 AND form_table_name = 'eqms_product_variants' AND form_column_name = 'model_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 816 AND form_table_name = 'eqms_delivery_product' AND form_column_name = 'number_of_units' AND form_condition = '{"status": 1}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 817 AND form_table_name = 'eqms_delivery_dispatch' AND form_column_name = 'product_configuration' AND status = 1 AND value_type = 'HTML';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 818 AND form_table_name = 'eqms_delivery_dispatch' AND form_column_name = 'remarks_special_instruction' AND status = 1 AND value_type = 'HTML';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 819 AND form_table_name = 'eqms_quotation_product' AND form_column_name = 'id' AND form_condition = '{"status": 1}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 820 AND form_table_name = 'eqms_delivery_dispatch' AND form_column_name = 'encrypted_ship_to_contact_person' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 820 AND variable_key = 'shipToContactPerson' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{shipToContactPerson}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 819 AND variable_key = 'mapperVariable' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{mapperVariable}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 818 AND variable_key = 'specialInstruction' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{specialInstruction}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 817 AND variable_key = 'productConfiguration' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{productConfiguration}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 816 AND variable_key = 'productDetails' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{productDetails}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 815 AND variable_key = 'quotationNumber' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{quotationNumber}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 814 AND variable_key = 'orderNumber' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{orderNumber}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 813 AND variable_key = 'shipToLocation' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{shipToLocation}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 812 AND variable_key = 'shipToAddress' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{shipToAddress}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 811 AND variable_key = 'invoiceContactPerson' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{invoiceContactPerson}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 810 AND variable_key = 'invoiceLocation' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{invoiceLocation}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 809 AND variable_key = 'invoiceAddress' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{invoiceAddress}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 808 AND variable_key = 'customerName' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{customerName}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 807 AND variable_key = 'expectedDeliveryDate' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{expectedDeliveryDate}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 806 AND variable_key = 'deliveryInstructionId' AND status = 1 AND fk_eqms_document_template_id = 46 AND variable_identifier = '{deliveryInstructionId}';

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 46 AND fk_eqms_document_template_type_lk_id = 47 AND document_template_name = 'SLS-F-04 Delivery Instruction' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-04 Delivery Instruction.docx') AND template_version = 1.0 AND status = 1 AND container_id = 'SALES_DELIVERY_INSTRUCTION_DOCUMENT_GENERATION';

-- Delete from dms.eqms_document_template_magic_read_details
DELETE FROM dms.eqms_document_template_magic_read_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 46 AND container_id = 'SALES_DELIVERY_INSTRUCTION_DOCUMENT_GENERATION' AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 46 AND fk_eqms_form_id = 118 AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND fk_eqms_document_template_type_lk_id = 47 AND document_template_name = 'SLS-F-04 Delivery Instruction' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-04 Delivery Instruction.docx') AND template_version = 1.0 AND status = 1 AND fk_eqms_record_generation_mode_lk_id = 2;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND document_template_type = 'sales_delivery_instruction' AND status = 1;

END $$;
