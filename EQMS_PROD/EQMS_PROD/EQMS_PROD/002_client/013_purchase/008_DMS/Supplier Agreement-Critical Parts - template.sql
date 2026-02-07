-- Classification - Confidential
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
--Supplier Agreement-Critical Parts Document - Dev Database

-- Insert document template type lookup first
INSERT INTO dms.eqms_document_template_type_lk (ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by) VALUES 
(49, VAR_TENANT_KEY, VAR_ORG_ID, 'supplier_agreement_critical_parts', 1, NOW(), 1);

-- Insert document template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 49, 'Supplier Agreement-Critical Parts - template', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/Supplier Agreement-Critical Parts - template.docx'), 1.0, 1, 2, NOW(), 1, 48);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 48, 'VENDOR_OUTSOURCED_AGREEMENT_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (48, VAR_TENANT_KEY, VAR_ORG_ID, 49, 'Supplier Agreement-Critical Parts - template', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/Supplier Agreement-Critical Parts - template.docx'), 1.0, 1, NOW(), NOW(), 1);

-- Text Variables (ref_ids 834-839)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_name', 48, '{vendor_name}', 1, 1, NOW(), 834),
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_address', 48, '{vendor_address}', 1, 1, NOW(), 835),
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_contact_person', 48, '{vendor_contact_person}', 1, 1, NOW(), 836),
(VAR_TENANT_KEY, VAR_ORG_ID, 'organization_name', 48, '{organization_name}', 1, 1, NOW(), 837),
(VAR_TENANT_KEY, VAR_ORG_ID, 'organization_address', 48, '{organization_address}', 1, 1, NOW(), 838),
(VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 48, '{mapperVariable}', 1, 1, NOW(), 839);

-- Transformation Rules for Text Variables (operation_id = 10)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 834, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 835, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 836, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 837, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 838, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 839, 10, 1, 1, NOW(), 1);

-- Mapper Data for Text Variables
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date) VALUES 
-- Vendor Name
(VAR_TENANT_KEY, VAR_ORG_ID, 834, 'eqms_vendors', 'encrypted_vendor_name', NULL, 1, 1, NOW()),
-- Vendor Address
(VAR_TENANT_KEY, VAR_ORG_ID, 835, 'eqms_vendors', 'encrypted_address', NULL, 1, 1, NOW()),
-- Vendor Contact Person
(VAR_TENANT_KEY, VAR_ORG_ID, 836, 'eqms_vendors', 'encrypted_contact_person_name', NULL, 1, 1, NOW()),
-- Organization Name
(VAR_TENANT_KEY, VAR_ORG_ID, 837, 'eqms_organization', 'organization_name', NULL, 1, 1, NOW()),
-- Organization Address
(VAR_TENANT_KEY, VAR_ORG_ID, 838, 'eqms_organization', 'official_address', NULL, 1, 1, NOW()),
-- Mapper Variable - Organization ID
(VAR_TENANT_KEY, VAR_ORG_ID, 839, 'eqms_organization', 'id', NULL, 1, 1, NOW());

-- Mapper Variable with Form Condition
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date, form_condition) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 839, 'eqms_vendors', 'id', NULL, 1, 1, NOW(), '{"id" : "@vendor_id"}');

END $$;

