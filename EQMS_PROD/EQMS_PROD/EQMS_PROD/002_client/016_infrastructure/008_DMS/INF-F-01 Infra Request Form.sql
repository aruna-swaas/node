-- Classification: Confidential

DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
    -- =============================================
    -- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id)
    VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'record_generation_infrastructure_request_form', 1, NOW(), 1, 56);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name,
        document_template_extension, s3_bucket_name, s3_object_key, template_version, status,
        created_date, created_by, ref_id, fk_eqms_record_generation_mode_lk_id
    ) VALUES (
        VAR_TENANT_KEY, VAR_ORG_ID, 56, 'INF-F-01 Infra Request Form', '.docx',
        VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Infrastructure/INF-F-01 Infra Request Form.docx'),
        1.0, 1, NOW(), 1, 55, 2
    );

    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (55, VAR_TENANT_KEY, VAR_ORG_ID, 56, 'INF-F-01 Infra Request Form', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedures and Forms/Infrastructure/INF-F-01 Infra Request Form.docx'), 1.0, 1, NOW(), NOW(), 1);
 

    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 55, 158, 1, NOW(), 1);


    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable (
        eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_date, created_by, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 'requiredDate', 1, NOW(), 1, 55, '{requiredDate}', 893),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructureSpecification', 1, NOW(), 1, 55, '{infrastructureSpecification}', 892),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructureDescription', 1, NOW(), 1, 55, '{infrastructureDescription}', 891),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructureName', 1, NOW(), 1, 55, '{infrastructureName}', 890);

    -- =============================================
    -- 4. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_variable_mapper (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 893, 'eqms_infrastructure_request', 'required_date', '{"id": "@infrastructure_request_id"}', 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 892, 'eqms_infrastructure_request', 'infrastructure_specification', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 891, 'eqms_infrastructure_request', 'infrastructure_description', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 890, 'eqms_infrastructure_request', 'infrastructure_name', NULL, 1, NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 893, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 892, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 891, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 890, 10, 1, 1, NOW(), 1);

    -- =============================================
    -- 6. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 55, 'INFRASTRUCTURE_REQUEST_DOCUMENT_GENERATION', 1, NOW(), 1);

END $$;
