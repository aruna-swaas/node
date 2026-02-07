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
(58, VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_re_evaluation', 1, NOW(), 1);

-- =============================================
-- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 58, 'PUR-F-05 Part Vendor Re-evaluation', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-05 Part Vendor Re-evaluation.docx'), 1.0, 1, 1, NOW(), 1, 57);

-- =============================================
-- 2.1. EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 57, CONCAT(VAR_API_ENDPOINT, '/api/v1/vendor-purchase/variables/vendor-reevaluation/record'), 1, NOW(), 1);

-- =============================================
-- 3. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (57, VAR_TENANT_KEY, VAR_ORG_ID, 58, 'PUR-F-05 Part Vendor Re-evaluation', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-05 Part Vendor Re-evaluation.docx'), 1.0, 1, NOW(), NOW(), 1);

-- =============================================
-- 4. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_name', 57, '{vendor_name}', 1, 1, NOW(), 903),
(VAR_TENANT_KEY, VAR_ORG_ID, 'from_date', 57, '{from_date}', 1, 1, NOW(), 904),
(VAR_TENANT_KEY, VAR_ORG_ID, 'end_date', 57, '{end_date}', 1, 1, NOW(), 905),
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_reevaluation_criteria', 57, '{vendor_reevaluation_criteria}', 1, 1, NOW(), 906),
(VAR_TENANT_KEY, VAR_ORG_ID, 'quality_rating', 57, '{quality_rating}', 1, 1, NOW(), 907),
(VAR_TENANT_KEY, VAR_ORG_ID, 'delivery_rating', 57, '{delivery_rating}', 1, 1, NOW(), 908),
(VAR_TENANT_KEY, VAR_ORG_ID, 'support_rating', 57, '{support_rating}', 1, 1, NOW(), 909),
(VAR_TENANT_KEY, VAR_ORG_ID, 'overall_rating', 57, '{overall_rating}', 1, 1, NOW(), 910),
(VAR_TENANT_KEY, VAR_ORG_ID, 'design_observation', 57, '{design_observation}', 1, 1, NOW(), 911),
(VAR_TENANT_KEY, VAR_ORG_ID, 'manufacturing_observation', 57, '{manufacturing_observation}', 1, 1, NOW(), 912),
(VAR_TENANT_KEY, VAR_ORG_ID, 'quality_control_observation', 57, '{quality_control_observation}', 1, 1, NOW(), 913),
(VAR_TENANT_KEY, VAR_ORG_ID, 'logistics_observation', 57, '{logistics_observation}', 1, 1, NOW(), 914),
(VAR_TENANT_KEY, VAR_ORG_ID, 'customer_support_observation', 57, '{customer_support_observation}', 1, 1, NOW(), 915),
(VAR_TENANT_KEY, VAR_ORG_ID, 'conclusion_audit', 57, '{conclusion_audit}', 1, 1, NOW(), 916),
(VAR_TENANT_KEY, VAR_ORG_ID, 'conclusion', 57, '{conclusion}', 1, 1, NOW(), 917),
(VAR_TENANT_KEY, VAR_ORG_ID, 'response_quality_issues', 57, '{response_quality_issues}', 1, 1, NOW(), 918);

END $$;

