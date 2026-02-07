-- Rollback: Delete seed data from file split_001_LOOKUP.sql
-- Original file: split_001_LOOKUP.sql
-- Seed data file: 001_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID INT := ${ORGID};
BEGIN

-- Delete from dms.eqms_record_generation_mode_lk
DELETE FROM dms.eqms_record_generation_mode_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND mode = 'API' AND status = 1;

-- Delete from dms.eqms_record_generation_mode_lk
DELETE FROM dms.eqms_record_generation_mode_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND mode = 'MAGIC_READ' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND operation_type = 'text' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND operation_type = 'foreign_map' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND operation_type = 'nested_relation' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND operation_type = 'grid' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND operation_type = 'relation_matrix' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND operation_type = 'subtract' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND operation_type = 'currency_convert' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND operation_type = 'date_format' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND operation_type = 'multiply' AND status = 1;

-- Delete from dms.eqms_document_variable_operation
DELETE FROM dms.eqms_document_variable_operation WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND operation_type = 'add' AND status = 1;

-- Delete from dms.eqms_generic_details
DELETE FROM dms.eqms_generic_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND detail_key = 'owner' AND status = 1;

-- Delete from dms.eqms_generic_details
DELETE FROM dms.eqms_generic_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND detail_key = 'project_id' AND status = 1;

-- Delete from dms.eqms_generic_details
DELETE FROM dms.eqms_generic_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND detail_key = 'product_name' AND status = 1;

-- Delete from dms.eqms_generic_details
DELETE FROM dms.eqms_generic_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND detail_key = 'version_no' AND status = 1;

-- Delete from dms.eqms_generic_details
DELETE FROM dms.eqms_generic_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND detail_key = 'effective_date' AND status = 1;

-- Delete from dms.eqms_generic_details
DELETE FROM dms.eqms_generic_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND detail_key = 'document_name' AND status = 1;

-- Delete from dms.eqms_generic_details
DELETE FROM dms.eqms_generic_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND detail_key = 'document_number' AND status = 1;

-- Delete from dms.eqms_file_type_lk
DELETE FROM dms.eqms_file_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND file_type = 'archive' AND status = 1;

-- Delete from dms.eqms_file_type_lk
DELETE FROM dms.eqms_file_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND file_type = 'document' AND status = 1;

-- Delete from dms.eqms_file_type_lk
DELETE FROM dms.eqms_file_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND file_type = 'video' AND status = 1;

-- Delete from dms.eqms_file_type_lk
DELETE FROM dms.eqms_file_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND file_type = 'image' AND status = 1;

-- Delete from dms.eqms_file_category_lk
DELETE FROM dms.eqms_file_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND file_category = 'User Created' AND status = 1;

-- Delete from dms.eqms_file_category_lk
DELETE FROM dms.eqms_file_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND file_category = 'Generator' AND status = 1;

-- Delete from dms.eqms_file_category_lk
DELETE FROM dms.eqms_file_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND file_category = 'Uploaded' AND status = 1;

-- Delete from dms.eqms_record_generation_type_lk
DELETE FROM dms.eqms_record_generation_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND generation_type = 'systemGenerated' AND status = 1;

-- Delete from dms.eqms_record_generation_type_lk
DELETE FROM dms.eqms_record_generation_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND generation_type = 'userUploaded' AND status = 1;

-- Delete from dms.eqms_document_type_lk
DELETE FROM dms.eqms_document_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND document_type = '.csv' AND status = 1;

-- Delete from dms.eqms_document_type_lk
DELETE FROM dms.eqms_document_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND document_type = '.xlsx' AND status = 1;

-- Delete from dms.eqms_document_type_lk
DELETE FROM dms.eqms_document_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND document_type = '.xls' AND status = 1;

-- Delete from dms.eqms_document_type_lk
DELETE FROM dms.eqms_document_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND document_type = '.md' AND status = 1;

-- Delete from dms.eqms_document_type_lk
DELETE FROM dms.eqms_document_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND document_type = '.pdf' AND status = 1;

-- Delete from dms.eqms_document_type_lk
DELETE FROM dms.eqms_document_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND document_type = '.txt' AND status = 1;

-- Delete from dms.eqms_document_type_lk
DELETE FROM dms.eqms_document_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND document_type = '.doc' AND status = 1;

-- Delete from dms.eqms_document_type_lk
DELETE FROM dms.eqms_document_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND document_type = '.docx' AND status = 1;

END $$;
