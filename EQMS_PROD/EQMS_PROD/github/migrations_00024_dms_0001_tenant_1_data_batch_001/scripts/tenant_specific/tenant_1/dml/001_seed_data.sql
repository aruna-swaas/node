DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID INT := ${ORGID};
BEGIN


INSERT INTO dms.eqms_document_type_lk (
  eqms_tenant_key, document_type, status, created_date, created_by, fk_eqms_organization_id, ref_id
) VALUES
(VAR_TENANT_KEY, '.docx', 1, NOW(), 1, VAR_ORG_ID, 1),
(VAR_TENANT_KEY, '.doc', 1, NOW(), 1, VAR_ORG_ID, 2),
(VAR_TENANT_KEY, '.txt', 1, NOW(), 1, VAR_ORG_ID, 3),
(VAR_TENANT_KEY, '.pdf', 1, NOW(), 1, VAR_ORG_ID, 4),
(VAR_TENANT_KEY, '.md', 1, NOW(), 1, VAR_ORG_ID, 5),
(VAR_TENANT_KEY, '.xls', 1, NOW(), 1, VAR_ORG_ID, 6),
(VAR_TENANT_KEY, '.xlsx', 1, NOW(), 1, VAR_ORG_ID, 7),
(VAR_TENANT_KEY, '.csv', 1, NOW(), 1, VAR_ORG_ID, 8);

INSERT INTO dms.eqms_record_generation_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, generation_type, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'userUploaded', 1, NOW(), 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'systemGenerated', 1, NOW(), 1, 2);

INSERT INTO dms.eqms_file_category_lk (
  eqms_tenant_key, fk_eqms_organization_id, file_category, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Uploaded', 1, NOW(), 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Generator', 1, NOW(), 1, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'User Created', 1, NOW(), 1, 3);

INSERT INTO dms.eqms_file_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, file_type, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'image', 1, NOW(), 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'video', 1, NOW(), 1, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'document', 1, NOW(), 1, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'archive', 1, NOW(), 1, 4);

-- eqms_generic_details;

INSERT INTO dms.eqms_generic_details (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, detail_key, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'document_number', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'document_name', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'effective_date', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'version_no', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'product_name', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'project_id', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'owner', 1, NOW(), 1, NULL, NULL);

INSERT INTO dms.eqms_document_variable_operation(
  eqms_tenant_key, fk_eqms_organization_id, ref_id, operation_type, status, created_date, created_by
)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'add', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'multiply', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'date_format', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'currency_convert', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'subtract', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'relation_matrix', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'grid', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'nested_relation', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'foreign_map', 1, NOW(), 1),
( VAR_TENANT_KEY, VAR_ORG_ID, 10, 'text', 1, NOW(), 1);

-- eqms_record_generation_mode_lk;

INSERT INTO dms.eqms_record_generation_mode_lk(
  eqms_tenant_key, fk_eqms_organization_id, ref_id, mode, status, created_date, created_by
)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'MAGIC_READ', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'API', 1, NOW(), 1);

END $$;
