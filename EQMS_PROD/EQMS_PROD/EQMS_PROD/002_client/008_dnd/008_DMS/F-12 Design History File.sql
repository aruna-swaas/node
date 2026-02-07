DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT            TEXT    := '${APIENDPOINT}';
BEGIN
    -- =============================================
    -- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'design_history_file', 1, NOW(), 1, 25);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, fk_eqms_document_template_type_lk_id, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'F-12 Design History File', '.docx', 25, VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-12 Design History File.docx'), 1.0, 1, 1, NOW(), 1, 24);

    -- =============================================
    -- EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 24, CONCAT(VAR_API_ENDPOINT, '/api/v1/dnd/design-history-file/record'), 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_form_mapping (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by
    ) VALUES
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 75, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 3, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 4, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 5, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 6, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 7, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 8, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 9, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 15, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 17, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 19, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 20, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 30, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 32, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 33, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 45, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 46, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 47, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 24, 49, 1, NOW(), 1);

-- =============================================
-- 3. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
-- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (24, 25, VAR_TENANT_KEY, VAR_ORG_ID, 'F-12 Design History File', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-12 Design History File.docx'), 1.0, 1, NOW(), NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    -- documentDetails
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'documentDetails', 1, 24, '{documentDetails}', NOW(), 1, 352);


END $$;