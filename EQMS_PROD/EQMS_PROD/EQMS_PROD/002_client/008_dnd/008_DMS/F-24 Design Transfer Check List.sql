DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN

-- Design Transfer Check List
-- Refactored to use new scalable schema structure

-- Insert document template type lookup with ref_id = 29
INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'design_transfer_checklist', 1, NOW(), 1, 29);

-- Insert document template with ref_id = 28
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, template_version, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 29, 'F-24 Design Transfer Check List', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-24 Design Transfer Check List.docx'), 1, 1, NOW(), 1, 1.0, 28);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 28, 'https://dev-client-tenant-api-eqms.i2itechsolutions.com/api/v1/dnd/design-transfer-checklist/record', 1, NOW(), 1);

-- Insert into history table with template_id = 28
INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, created_date, created_by, valid_from_date, fk_eqms_document_template_id, template_version, fk_eqms_document_template_type_lk_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'F-24 Design Transfer Check List', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-24 Design Transfer Check List.docx'), 1, NOW(), 1, NOW(), 28, 1.0, 29);

-- INSERT INTO dms.eqms_document_template_form_mapping
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 28, 33, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, 115, 1, NOW(), 1);

-- documentList Variable into eqms_document_template_variable with ref_id = 385
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'documentList', '{documentList}', 1, 28, NOW(), 1, 385);


END $$;