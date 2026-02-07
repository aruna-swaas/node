DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT         TEXT    := '${APIENDPOINT}';
BEGIN

INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'record_generation_hazards', 1, NOW(), 1, 61);

INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 61, 'F-08 Hazards Ver 4', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-08 Hazards Ver 4.docx'), 1.0, 1, 1, NOW(), 1, 60);

INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 60, 156, 1, NOW(), 1),(VAR_TENANT_KEY, VAR_ORG_ID, 60, 91, 1, NOW(), 1);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 60, CONCAT(VAR_API_ENDPOINT, '/api/v1/risk/record-generation/hazards'), 1, NOW(), 1);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, created_by, valid_from_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 60, 36, 'F-08 Hazards Ver 4', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-08 Hazards Ver 4.docx'), 1.0, 1, NOW(), 1, NOW());


-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
-- =============================================
-- Variable: hazards
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'categories', 1, 60, '{categories}', NOW(), 1, 557);

END $$;