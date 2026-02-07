--Incoming Inspection
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
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'record_generation_incoming_inspection', 1, NOW(), 1, 62);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_by, created_date, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 62, 'QAC-F-03 Incoming Inspection', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Quality Control/QAC-F-03 Incoming Inspection.docx'), 1.0, 1, 1, 1, NOW(), 61);

    -- =============================================
    -- EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 61, CONCAT(VAR_API_ENDPOINT, '/api/v1/quality-control/record-generation/incoming-inspection'), 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 61, 136, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 61, 161, 1, NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (61, VAR_TENANT_KEY, VAR_ORG_ID, 62, 'QAC-F-03 Incoming Inspection', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Quality Control/QAC-F-03 Incoming Inspection.docx'), 1.0, 1, NOW(), NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable (
        eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 'part_number', 61, '{part_number}', 1, 1, NOW(), 932),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'part_description', 61, '{part_description}', 1, 1, NOW(), 933),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'safety_critical', 61, '{safety_critical}', 1, 1, NOW(), 934),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'aql', 61, '{aql}', 1, 1, NOW(), 935),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'drawing_number', 61, '{drawing_number}', 1, 1, NOW(), 936),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'quantity_recieved', 61, '{quantity_recieved}', 1, 1, NOW(), 937),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'order_quantity', 61, '{order_quantity}', 1, 1, NOW(), 938),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'po_reference_number', 61, '{po_reference_number}', 1, 1, NOW(), 939),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'supply_reference_number', 61, '{supply_reference_number}', 1, 1, NOW(), 940),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'incoming_inspection_per_batch_five', 61, '{incoming_inspection_per_batch_five}', 1, 1, NOW(), 941);

END $$;