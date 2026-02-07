-- Rollback: Delete seed data from file F-06 Risk Management File Ver 3.sql
-- Original file: F-06 Risk Management File Ver 3.sql
-- Seed data file: 008_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY           INT     := ${TENANTKEY};
    VAR_ORG_ID               INT     := ${ORGID};
    VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT         TEXT    := '${APIENDPOINT}';
BEGIN

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 679 AND variable_key = 'documentDetails' AND status = 1 AND fk_eqms_document_template_id = 50 AND variable_identifier = '{documentDetails}';

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 50 AND fk_eqms_form_id = 133 AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 50 AND fk_eqms_form_id = 88 AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 50 AND fk_eqms_form_id = 134 AND status = 1;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 50 AND fk_eqms_document_template_type_lk_id = 38 AND document_template_name = 'F-06 Risk Management File Ver 3' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-06 Risk Management File Ver 3.docx') AND template_version = 1.0 AND status = 1;

-- Delete from dms.eqms_document_template_api_details
DELETE FROM dms.eqms_document_template_api_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 50 AND endpoint = CONCAT(VAR_API_ENDPOINT, '/api/v1/risk/record-generation/risk-management-file') AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND fk_eqms_document_template_type_lk_id = 38 AND document_template_name = 'F-06 Risk Management File Ver 3' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Risk Management/F-06 Risk Management File Ver 3.docx') AND template_version = 1.0 AND status = 1 AND fk_eqms_record_generation_mode_lk_id = 1;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND document_template_type = 'risk_management_file' AND status = 1;

END $$;
