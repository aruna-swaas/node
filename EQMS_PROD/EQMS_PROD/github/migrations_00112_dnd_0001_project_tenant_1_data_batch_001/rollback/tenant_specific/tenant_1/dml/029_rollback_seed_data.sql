-- Rollback: Delete seed data from file Intended Use - Format.sql
-- Original file: Intended Use - Format.sql
-- Seed data file: 029_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    :=  '${BUCKETNAME}';
BEGIN

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_product_variants' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 286;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_dig_models' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 286;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 286 AND form_condition = '{"id":"@project_id"}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 286;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 286 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 286 AND variable_key = 'mapperVariable' AND variable_identifier = '{mapperVariable}' AND status = 1 AND fk_eqms_document_template_id = 18;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = mapperVariable;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_product_variants' AND form_column_name = 'model_name' AND status = 1 AND fk_eqms_document_template_variable_id = 285;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 285;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 285 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = grid operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 285 AND variable_key = 'model_name' AND variable_identifier = '{model_name}' AND status = 1 AND fk_eqms_document_template_id = 18;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = model_name;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'contraindications_of_use' AND status = 1 AND fk_eqms_document_template_variable_id = 284;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 284;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 284 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 284 AND variable_key = 'contraindications_of_use' AND variable_identifier = '{contraindications_of_use}' AND status = 1 AND fk_eqms_document_template_id = 18;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = contraindications_of_use;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'indications_of_use' AND status = 1 AND fk_eqms_document_template_variable_id = 283;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 283;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 283 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 283 AND variable_key = 'indications_of_use' AND variable_identifier = '{indications_of_use}' AND status = 1 AND fk_eqms_document_template_id = 18;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = indications_of_use;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'intended_population' AND status = 1 AND fk_eqms_document_template_variable_id = 282;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 282;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 282 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 282 AND variable_key = 'intended_population' AND variable_identifier = '{intended_population}' AND status = 1 AND fk_eqms_document_template_id = 18;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = intended_population;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'intended_users' AND status = 1 AND fk_eqms_document_template_variable_id = 281;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 281;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 281 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 281 AND variable_key = 'intended_users' AND variable_identifier = '{intended_users}' AND status = 1 AND fk_eqms_document_template_id = 18;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = intended_users;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_product' AND form_column_name = 'product_intended_use' AND status = 1 AND fk_eqms_document_template_variable_id = 280;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 280;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 280 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 280 AND variable_key = 'product_intended_use' AND variable_identifier = '{product_intended_use}' AND status = 1 AND fk_eqms_document_template_id = 18;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = product_intended_use;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_product' AND form_column_name = 'product_name' AND status = 1 AND fk_eqms_document_template_variable_id = 279;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 279;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 279 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 279 AND variable_key = 'product_name' AND variable_identifier = '{product_name}' AND status = 1 AND fk_eqms_document_template_id = 18;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = product_name;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 18 AND fk_eqms_form_id = 106 AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 18 AND fk_eqms_form_id = 17 AND status = 1;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_type_lk_id = 19 AND document_template_name = 'Intended Use - Format' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/Design output templates/Intended Use - Format.docx') AND status = 1 AND container_id = 'DND_INTENDED_USE_DOCUMENT_GENERATION' AND fk_eqms_document_template_id = 18 AND template_version = 1.0;

-- Delete from dms.eqms_document_template_magic_read_details
DELETE FROM dms.eqms_document_template_magic_read_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 18 AND container_id = 'DND_INTENDED_USE_DOCUMENT_GENERATION' AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_document_template_type_lk_id = 19 AND document_template_name = 'Intended Use - Format' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/Design output templates/Intended Use - Format.docx') AND status = 1 AND fk_eqms_record_generation_mode_lk_id = 2 AND template_version = 1.0;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND document_template_type = 'intended_use' AND status = 1;

END $$;
