-- Rollback: Delete seed data from file PUR-F-05 Part Vendor Re-evaluation.sql
-- Original file: PUR-F-05 Part Vendor Re-evaluation.sql
-- Seed data file: 012_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
    VAR_API_ENDPOINT            TEXT    := '${APIENDPOINT}';
BEGIN

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 918 AND variable_key = 'response_quality_issues' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{response_quality_issues}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 917 AND variable_key = 'conclusion' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{conclusion}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 916 AND variable_key = 'conclusion_audit' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{conclusion_audit}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 915 AND variable_key = 'customer_support_observation' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{customer_support_observation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 914 AND variable_key = 'logistics_observation' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{logistics_observation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 913 AND variable_key = 'quality_control_observation' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{quality_control_observation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 912 AND variable_key = 'manufacturing_observation' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{manufacturing_observation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 911 AND variable_key = 'design_observation' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{design_observation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 910 AND variable_key = 'overall_rating' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{overall_rating}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 909 AND variable_key = 'support_rating' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{support_rating}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 908 AND variable_key = 'delivery_rating' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{delivery_rating}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 907 AND variable_key = 'quality_rating' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{quality_rating}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 906 AND variable_key = 'vendor_reevaluation_criteria' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{vendor_reevaluation_criteria}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 905 AND variable_key = 'end_date' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{end_date}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 904 AND variable_key = 'from_date' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{from_date}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 903 AND variable_key = 'vendor_name' AND fk_eqms_document_template_id = 57 AND variable_identifier = '{vendor_name}' AND status = 1;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 57 AND fk_eqms_document_template_type_lk_id = 58 AND document_template_name = 'PUR-F-05 Part Vendor Re-evaluation' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-05 Part Vendor Re-evaluation.docx') AND template_version = 1.0 AND status = 1;

-- Delete from dms.eqms_document_template_api_details
DELETE FROM dms.eqms_document_template_api_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 57 AND endpoint = CONCAT(VAR_API_ENDPOINT, '/api/v1/vendor-purchase/variables/vendor-reevaluation/record') AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND fk_eqms_document_template_type_lk_id = 58 AND document_template_name = 'PUR-F-05 Part Vendor Re-evaluation' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Purchase/Purchase Forms/PUR-F-05 Part Vendor Re-evaluation.docx') AND template_version = 1.0 AND status = 1 AND fk_eqms_record_generation_mode_lk_id = 1;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND document_template_type = 'vendor_re_evaluation' AND status = 1;

END $$;
