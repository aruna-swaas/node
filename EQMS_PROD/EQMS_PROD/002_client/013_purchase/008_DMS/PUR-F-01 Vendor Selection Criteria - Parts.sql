-- Classification - Confidential
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT            TEXT    := '${APIENDPOINT}';
BEGIN
-- PUR-F-01 - ADF - Adhesives Sealants Fasteners Document Template - Dev Database

-- =============================================
-- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_type_lk (ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by) VALUES 
(43, VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_selection_criteria', 1, NOW(), 1);

-- =============================================
-- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 43, 'PUR-F-01 Vendor Selection Criteria - Parts', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-01 Vendor Selection Criteria - Parts.docx'), 1.0, 1, 1, NOW(), 1, 42);

-- =============================================
-- 2.1. EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 42, CONCAT(VAR_API_ENDPOINT, '/api/v1/vendor-purchase/variables/vendor-selection-criteria/record'), 1, NOW(), 1);

-- =============================================
-- 3. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (42, VAR_TENANT_KEY, VAR_ORG_ID, 43, 'PUR-F-01 Vendor Selection Criteria - Parts', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-01 Vendor Selection Criteria - Parts.docx'), 1.0, 1, NOW(), NOW(), 1);

-- =============================================
-- 4. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_name', 42, '{vendor_name}', 1, 1, NOW(), 769),
(VAR_TENANT_KEY, VAR_ORG_ID, 'address', 42, '{address}', 1, 1, NOW(), 770),
(VAR_TENANT_KEY, VAR_ORG_ID, 'contact_person_name', 42, '{contact_person_name}', 1, 1, NOW(), 771),
(VAR_TENANT_KEY, VAR_ORG_ID, 'telephone_number', 42, '{telephone_number}', 1, 1, NOW(), 772),
(VAR_TENANT_KEY, VAR_ORG_ID, 'email', 42, '{email}', 1, 1, NOW(), 773),
(VAR_TENANT_KEY, VAR_ORG_ID, 'website', 42, '{website}', 1, 1, NOW(), 774),
(VAR_TENANT_KEY, VAR_ORG_ID, 'part_category_name', 42, '{part_category_name}', 1, 1, NOW(), 775),
(VAR_TENANT_KEY, VAR_ORG_ID, 'criteria', 42, '{criteria}', 1, 1, NOW(), 776),
(VAR_TENANT_KEY, VAR_ORG_ID, 'location', 42, '{location}', 1, 1, NOW(), 777);

END $$;

