-- Classification - Confidential
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
--PUR-F-04 Vendor Agreement Check List Document - Dev Database

-- Insert document template type lookup first
INSERT INTO dms.eqms_document_template_type_lk (ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by) VALUES 
(59, VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_agreement_checklist', 1, NOW(), 1);

-- Insert document template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 59, 'PUR-F-04 Vendor Agreement Check List', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-04 Vendor Agreement Check List.docx'), 1.0, 1, 2, NOW(), 1, 58);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 58, 'VENDOR_AGREEMENT_CHECKLIST_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (58, VAR_TENANT_KEY, VAR_ORG_ID, 59, 'PUR-F-04 Vendor Agreement Check List', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-04 Vendor Agreement Check List.docx'), 1.0, 1, NOW(), NOW(), 1);

--Document template form mapping
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id,
fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 58, 96, 1, NOW (), 1);

-- Text Variables (ref_ids 919-921)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendorName', 58, '{vendorName}', 1, 1, NOW(), 919),
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendorAC', 58, '{vendorAC}', 1, 1, NOW(), 920),
(VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 58, '{mapperVariable}', 1, 1, NOW(), 921);

-- Transformation Rules for Text Variables (operation_id = 10)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 919, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 920, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 921, 10, 1, 1, NOW(), 1);

-- Mapper Data for Text Variables
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_by, created_date) VALUES 
-- Vendor Name
(VAR_TENANT_KEY, VAR_ORG_ID, 919, 'eqms_vendors', 'encrypted_vendor_name', NULL, 1, 1, NOW()),
-- Vendor Agreement Checklist Item
(VAR_TENANT_KEY, VAR_ORG_ID, 920, 'eqms_vendor_agreement_checklist_lk', 'check_list_item', NULL, 1, 1, NOW()),
-- Vendor Agreement Checklist Status
(VAR_TENANT_KEY, VAR_ORG_ID, 920, 'eqms_vendor_agreement_checklist_status', 'checklist_status', NULL, 1, 1, NOW()),
-- Vendor Agreement Checklist ID
(VAR_TENANT_KEY, VAR_ORG_ID, 921, 'eqms_vendor_agreement_checklist', 'id', '{"id": "@vendor_agreement_checklist_id"}', 1, 1, NOW());

END $$;