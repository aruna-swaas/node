-- Classification - Confidential
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
--PUR-F-06 Purchase Order Document Template - Dev Database

-- Insert document template type lookup first
INSERT INTO dms.eqms_document_template_type_lk (ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by) VALUES 
(48, VAR_TENANT_KEY, VAR_ORG_ID, 'purchase_order', 1, NOW(), 1);

-- Insert document template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 48, 'PUR-F-06 Purchase Order', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-06 Purchase Order.docx'), 1.0, 1, 2, NOW(), 1, 47);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 47, 'PURCHASE_ORDER_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (47, VAR_TENANT_KEY, VAR_ORG_ID, 48, 'PUR-F-06 Purchase Order', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-06 Purchase Order.docx'), 1.0, 1, NOW(), NOW(), 1);

-- Insert document template form mapping
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 47, 116, 1, NOW(), 1);

-- Text Variables (ref_ids 821-833)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
-- Purchase Order fields
(VAR_TENANT_KEY, VAR_ORG_ID, 'po_number', 47, '{po_number}', 1, 1, NOW(), 821),
(VAR_TENANT_KEY, VAR_ORG_ID, 'po_date', 47, '{po_date}', 1, 1, NOW(), 822),
(VAR_TENANT_KEY, VAR_ORG_ID, 'quotation_reference', 47, '{quotation_reference}', 1, 1, NOW(), 823),
(VAR_TENANT_KEY, VAR_ORG_ID, 'total_amount', 47, '{total_amount}', 1, 1, NOW(), 824),
(VAR_TENANT_KEY, VAR_ORG_ID, 'sub_total', 47, '{sub_total}', 1, 1, NOW(), 825),
(VAR_TENANT_KEY, VAR_ORG_ID, 'packaging_transport', 47, '{packaging_transport}', 1, 1, NOW(), 826),
(VAR_TENANT_KEY, VAR_ORG_ID, 'total_ex_work', 47, '{total_ex_work}', 1, 1, NOW(), 827),
(VAR_TENANT_KEY, VAR_ORG_ID, 'gst', 47, '{gst}', 1, 1, NOW(), 828),
-- Ship To fields
(VAR_TENANT_KEY, VAR_ORG_ID, 'ship_to_address', 47, '{ship_to_address}', 1, 1, NOW(), 829),
(VAR_TENANT_KEY, VAR_ORG_ID, 'ship_to_location', 47, '{ship_to_location}', 1, 1, NOW(), 830),
(VAR_TENANT_KEY, VAR_ORG_ID, 'ship_to_contact_person', 47, '{ship_to_contact_person}', 1, 1, NOW(), 831),
-- Invoice To fields
(VAR_TENANT_KEY, VAR_ORG_ID, 'invoice_to_location', 47, '{invoice_to_location}', 1, 1, NOW(), 832),
-- Grid variable for part details
(VAR_TENANT_KEY, VAR_ORG_ID, 'part_details', 47, '{part_details}', 1, 1, NOW(), 833);

-- Transformation Rules for Text Variables (operation_id = 10)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 821, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 822, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 823, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 824, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 825, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 826, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 827, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 828, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 829, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 830, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 831, 10, 1, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 832, 10, 1, 1, NOW(), 1);

-- Transformation Rule for Grid Variable (operation_id = 7)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 833, 7, 1, 1, NOW(), 1);

-- Mapper Data for Text Variables
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date) VALUES 
-- Purchase Order fields
(VAR_TENANT_KEY, VAR_ORG_ID, 821, 'eqms_purchase_order', 'po_number', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 822, 'eqms_purchase_order', 'po_date', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 823, 'eqms_purchase_order', 'quotation_reference', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 824, 'eqms_purchase_order', 'total_amount', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 825, 'eqms_purchase_order', 'sub_total', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 826, 'eqms_purchase_order', 'packaging_transport', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 827, 'eqms_purchase_order', 'total_ex_work', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 828, 'eqms_purchase_order', 'gst', NULL, 1, 1, NOW()),
-- Ship To fields
(VAR_TENANT_KEY, VAR_ORG_ID, 829, 'eqms_purchase_order_ship_to', 'address', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 830, 'eqms_purchase_order_ship_to', 'location', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 831, 'eqms_purchase_order_ship_to', 'encrypted_contact_person', NULL, 1, 1, NOW()),
-- Invoice To fields
(VAR_TENANT_KEY, VAR_ORG_ID, 832, 'eqms_purchase_order_invoice_to', 'location', NULL, 1, 1, NOW());

-- Mapper Data for Grid Variable (part_details) - all columns map to the same grid variable
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date) VALUES 
-- Purchase Order Part Detail fields (grid)
(VAR_TENANT_KEY, VAR_ORG_ID, 833, 'eqms_purchase_order_part_detail', 'quantity', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 833, 'eqms_purchase_order_part_detail', 'unit_rate', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 833, 'eqms_purchase_order_part_detail', 'price', NULL, 1, 1, NOW()),
-- Part Lookup fields (grid)
(VAR_TENANT_KEY, VAR_ORG_ID, 833, 'eqms_part_lk', 'part_name', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 833, 'eqms_part_lk', 'part_number', NULL, 1, 1, NOW());

-- Mapper Variables with Form Condition (using keys section - filters related tables by purchase order id)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date, form_condition) VALUES 
-- Ship To (related to purchase order)
(VAR_TENANT_KEY, VAR_ORG_ID, 821, 'eqms_purchase_order', 'id', NULL, 1, 1, NOW(), '{"id": "@purchase_order_id"}');
END $$;

