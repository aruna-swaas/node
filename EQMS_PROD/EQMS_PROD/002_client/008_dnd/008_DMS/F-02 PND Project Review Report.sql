DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT            TEXT    := '${APIENDPOINT}';
BEGIN

-- Inserting Document Template Type Lookup
INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'pnd_review', 1, NOW (), 1, 16);

-- Inserting Document Template into eqms_document_template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, created_by, ref_id, fk_eqms_document_template_type_lk_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'F-02 PND Project Review Report', '.docx', VAR_BUCKET_NAME, CONCAT (VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-02 PND Project Review Report.docx'), 1.0, 1, 'DND_PND_DOCUMENT_GENERATION', NOW (), 1, 6, 16);

--History Table insert
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key,fk_eqms_document_template_type_lk_id,fk_eqms_organization_id, document_template_name, document_template_extension,s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (6,VAR_TENANT_KEY, 16, VAR_ORG_ID, 'F-02 PND Project Review Report', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/',VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-02 PND Project Review Report.docx'), 1.0, 1,'DND_PND_DOCUMENT_GENERATION', NOW(), NOW(), 1);

-- Inserting Document Template Form Mapping
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by)
VALUES 
    (VAR_TENANT_KEY, VAR_ORG_ID, 6, 7, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 6, 104, 1, NOW(), 1);

-- Inserting Document Template API Details
INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 6, CONCAT(VAR_API_ENDPOINT, '/api/v1/dnd/pnd-review/record'), 1, NOW(), 1);

-- Variable: review_records (ref_id 93)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'review_records', 1, 6, '{review_records}', NOW (), 1, 93);

-- Variable: reviewer_list (ref_id 94)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'reviewer_list', 1, 6, '{reviewer_list}', NOW (), 1, 94);

END $$;
