--Customer Feedback Form
-- Declare variables for tenant, organization, and bucket
DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT         TEXT    := '${APIENDPOINT}';
BEGIN

    -- =============================================
    -- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'customer_feedback_form', 1, NOW(), 1, 50);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 50, 'SLS-F-06 Customer Feedback Form', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-06 Customer Feedback Form.docx'), 1.0, 1, 1, 1, NOW(), 49);

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_FORM_MAPPING INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status,
    created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 49, 100, 1, NOW (), 1);

    -- =============================================
    -- EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 49, CONCAT(VAR_API_ENDPOINT, '/api/v1/sales/record-generation/customer-feedback-form'), 1, NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (49, VAR_TENANT_KEY, VAR_ORG_ID, 2, 'SLS-F-06 Customer Feedback Form', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Sales/Sales Forms/SLS-F-06 Customer Feedback Form.docx'), 1.0, 1, NOW(), NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    -- customerFeedback
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
        (VAR_TENANT_KEY, VAR_ORG_ID, 'customer_feedback_criteria', 49, '{customer_feedback_criteria}', 1, 1, NOW(), 846),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'customer_name', 49, '{customer_name}', 1, 1, NOW(), 845),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'product', 49, '{product}', 1, 1, NOW(), 844),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'model_number', 49, '{model_number}', 1, 1, NOW(), 843),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'date_of_installation', 49, '{date_of_installation}', 1, 1, NOW(), 842),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'product_serial_number', 49, '{product_serial_number}', 1, 1, NOW(), 841);

END $$;