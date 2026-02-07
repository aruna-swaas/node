DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT            TEXT    := '${APIENDPOINT}';
BEGIN

-- Inserting Document Template Type Lookup
INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'design_validation_report', 1, NOW (), 1, 21);

-- Inserting Document Template into eqms_document_template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 21, 'F-22 Design Validation Report', '.docx', VAR_BUCKET_NAME, CONCAT (VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-22 Design Validation Report.docx'), 1.0, 1, 1, NOW (), 1, 20);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_API_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_api_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, endpoint, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 20, CONCAT(VAR_API_ENDPOINT, '/api/v1/dnd/design-validation-report/record'), 1, NOW(), 1);

--History table insert with the template_id
INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, created_date, created_by, valid_from_date, fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, template_version) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'F-22 Design Validation Report', '.docx', VAR_BUCKET_NAME, CONCAT (VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-22 Design Validation Report.docx'), 1, NOW (), 1, NOW (), 20, 21, 1.0);

-- Inserting Document Template Form Mapping
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by)
VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 15, 1, NOW (), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 111, 1, NOW(), 1);


-- Variable: serialNumber
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'serialNumber', 1, 20, '{serialNumber}', NOW (), 1, 322);

-- Variable: softwareVersionNumber
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'softwareVersionNumber', 1, 20, '{softwareVersionNumber}', NOW (), 1, 323);

-- Variable: validationDocument
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'validationDocument', 1, 20, '{validationDocument}', NOW (), 1, 324);

-- Variable: placeOfValidation
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'placeOfValidation', 1, 20, '{placeOfValidation}', NOW (), 1, 325);

-- Variable: patientDetails
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'patientDetails', 1, 20, '{patientDetails}', NOW (), 1, 326);

-- Variable: feedBackDetails
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'feedBackDetails', 1, 20, '{feedBackDetails}', NOW (), 1, 327);


END $$;