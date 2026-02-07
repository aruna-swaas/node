DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT         TEXT    := '${APIENDPOINT}';
BEGIN

INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'record_generation_risk_benefit_analysis', 1, NOW(), 1, 37);

INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 37, 'F-11 Benefit Risk Analysis Ver 2', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-11 Benefit Risk Analysis Ver 2.docx'), 1.0, 1, 1, NOW(), 1, 36);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 36, CONCAT(VAR_API_ENDPOINT, '/api/v1/risk/record-generation/benefit-risk-analysis'), 1, NOW(), 1);

INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 36, 157, 1, NOW(), 1),(VAR_TENANT_KEY, VAR_ORG_ID, 36, 91, 1, NOW(), 1);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, created_by, valid_from_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 36, 37, 'F-11 Benefit Risk Analysis Ver 2', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-11 Benefit Risk Analysis Ver 2.docx'), 1.0, 1, NOW(), 1, NOW());

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
-- =============================================
-- Variable: criteriaEvaluation
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'criteriaEvaluation', 1, 36, '{criteriaEvaluation}', NOW(), 1, 678);

-- Variable: criteriaEvaluation
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'risk_analysis', 1, 36, '{risk_analysis}', NOW(), 1, 931);
END $$;