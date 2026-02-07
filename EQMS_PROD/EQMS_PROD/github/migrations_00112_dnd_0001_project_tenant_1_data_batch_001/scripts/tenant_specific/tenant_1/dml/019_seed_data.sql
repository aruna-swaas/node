DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT            TEXT    := '${APIENDPOINT}';
BEGIN

-- Insert document template type lookup
INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'design_quality_plan', 1, NOW (), 1, 22);

-- Inserting Document Template into eqms_document_template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 22, 'F-16 Design Quality Plan', '.docx', VAR_BUCKET_NAME, CONCAT (VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-16 Design Quality Plan.docx'), 1.0, 1, 1, NOW (), 1, 21);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 21, CONCAT(VAR_API_ENDPOINT, '/api/v1/dnd/design-quality-plan/record'), 1, NOW(), 1);

--History table insert with the template_id
INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, created_date, created_by, valid_from_date, fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, template_version) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'F-16 Design Quality Plan', '.docx', VAR_BUCKET_NAME, CONCAT (VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-16 Design Quality Plan.docx'), 1, NOW (), 1, NOW (), 21, 22, 1.0);

-- Insert document template form mapping
INSERT INTO dms.eqms_document_template_form_mapping (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by
) VALUES 
    (VAR_TENANT_KEY, VAR_ORG_ID, 21, 20, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 21, 108, 1, NOW(), 1);

-- Variable: qualityPlan
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'qualityPlan', 1, 21, '{qualityPlan}', NOW (), 1, 329);


END $$;