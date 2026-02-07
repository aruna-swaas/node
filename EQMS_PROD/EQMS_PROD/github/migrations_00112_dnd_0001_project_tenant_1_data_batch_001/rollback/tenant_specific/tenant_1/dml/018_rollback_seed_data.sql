-- Rollback: Delete seed data from file F-15 Design Project Plan Ver 3.sql
-- Original file: F-15 Design Project Plan Ver 3.sql
-- Seed data file: 018_seed_data.sql
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
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 277 AND variable_key = 'otherDetails' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{otherDetails}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 276 AND variable_key = 'designTransfer' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{designTransfer}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 275 AND variable_key = 'inputOutputTraceability' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{inputOutputTraceability}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 274 AND variable_key = 'riskManagementActivities' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{riskManagementActivities}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 273 AND variable_key = 'validationMethod' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{validationMethod}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 272 AND variable_key = 'verificationMethod' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{verificationMethod}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 271 AND variable_key = 'equipments' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{equipments}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 270 AND variable_key = 'tools' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{tools}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 269 AND variable_key = 'designReview' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{designReview}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 268 AND variable_key = 'srad' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{srad}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 267 AND variable_key = 'stages' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{stages}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 266 AND variable_key = 'schedule' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{schedule}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 321 AND variable_key = 'resource' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{resource}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 265 AND variable_key = 'designTeam' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{designTeam}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 264 AND variable_key = 'referenceDocuments' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{referenceDocuments}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 263 AND variable_key = 'markets' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{markets}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 262 AND variable_key = 'designObjective' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{designObjective}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 261 AND variable_key = 'basicModel' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{basicModel}';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 260 AND variable_key = 'design' AND status = 1 AND fk_eqms_document_template_id = 17 AND variable_identifier = '{design}';

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 17 AND fk_eqms_document_template_type_lk_id = 18 AND document_template_name = 'F-15 Design Project Plan Ver 3' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-15 Design Project Plan Ver 3.docx') AND template_version = 1.0 AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 17 AND fk_eqms_form_id = 105 AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 17 AND fk_eqms_form_id = 9 AND status = 1;

-- Delete from dms.eqms_document_template_api_details
DELETE FROM dms.eqms_document_template_api_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 17 AND endpoint = CONCAT(VAR_API_ENDPOINT, '/api/v1/dnd/design-project-plan/record') AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_document_template_type_lk_id = 18 AND document_template_name = 'F-15 Design Project Plan Ver 3' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-15 Design Project Plan Ver 3.docx') AND template_version = 1.0 AND status = 1 AND fk_eqms_record_generation_mode_lk_id = 1;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND document_template_type = 'Design Project Plan' AND status = 1;

END $$;
