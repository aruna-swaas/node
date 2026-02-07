-- Rollback: Delete seed data from file f-13-Design-Input-Requirements.sql
-- Original file: f-13-Design-Input-Requirements.sql
-- Seed data file: 016_seed_data.sql
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
BEGIN

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 318;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 318 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "shelf_life"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 318 AND variable_key = 'shelfLifeFiles' AND variable_identifier = '{shelfLifeFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 318;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 317;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 317 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "statutory"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 317 AND variable_key = 'statutoryFiles' AND variable_identifier = '{statutoryFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 317;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 316;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 316 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "safety"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 316 AND variable_key = 'safetyFiles' AND variable_identifier = '{safetyFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 316;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 315;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 315 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "regulations"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 315 AND variable_key = 'regulationsFiles' AND variable_identifier = '{regulationsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 315;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 314;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 314 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "other_requirements"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 314 AND variable_key = 'otherRequirementsFiles' AND variable_identifier = '{otherRequirementsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 314;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 313;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 313 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "other_device_compatibility"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 313 AND variable_key = 'otherDeviceCompatibilityFiles' AND variable_identifier = '{otherDeviceCompatibilityFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 313;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 312;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 312 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "accessories_&_consumables"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 312 AND variable_key = 'accessoriesAndConsumablesFiles' AND variable_identifier = '{accessoriesAndConsumablesFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 312;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 311;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 311 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "toxicity_&_biocompatability"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 311 AND variable_key = 'toxicityAndBiocompatibilityFiles' AND variable_identifier = '{toxicityAndBiocompatibilityFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 311;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 310;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 310 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "reliability_requirements"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 310 AND variable_key = 'reliabilityRequirementsFiles' AND variable_identifier = '{reliabilityRequirementsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 310;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 309;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 309 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "sterilization_requirements"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 309 AND variable_key = 'sterilizationRequirementsFiles' AND variable_identifier = '{sterilizationRequirementsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 309;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 308;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 308 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "lifetime_of_the_device"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 308 AND variable_key = 'lifetimeOfTheDeviceFiles' AND variable_identifier = '{lifetimeOfTheDeviceFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 308;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 307;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 307 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "training_requirements_for_customers"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 307 AND variable_key = 'trainingRequirementsForCustomersFiles' AND variable_identifier = '{trainingRequirementsForCustomersFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 307;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 306;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 306 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "references_from_the_previous_design"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 306 AND variable_key = 'referencesFromPreviousDesignFiles' AND variable_identifier = '{referencesFromPreviousDesignFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 306;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 305;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 305 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "adverse_events_design_input"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 305 AND variable_key = 'adverseEventsDesignInputFiles' AND variable_identifier = '{adverseEventsDesignInputFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 305;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 304;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 304 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "risk_control_measures"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 304 AND variable_key = 'riskControlMeasuresFiles' AND variable_identifier = '{riskControlMeasuresFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 304;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 303;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 303 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "servicing_requirements"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 303 AND variable_key = 'servicingRequirementsFiles' AND variable_identifier = '{servicingRequirementsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 303;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 302;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 302 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "installation_requirements"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 302 AND variable_key = 'installationRequirementsFiles' AND variable_identifier = '{installationRequirementsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 302;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 301;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 301 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "manufacturing_process"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 301 AND variable_key = 'manufacturingProcessFiles' AND variable_identifier = '{manufacturingProcessFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 301;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 300;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 300 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "storage_&_handling_requirements"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 300 AND variable_key = 'storageAndHandlingRequirementsFiles' AND variable_identifier = '{storageAndHandlingRequirementsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 300;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 299;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 299 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "labelling_and_packaging_requirements"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 299 AND variable_key = 'labellingAndPackagingRequirementsFiles' AND variable_identifier = '{labellingAndPackagingRequirementsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 299;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 298;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 298 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "software_requirements"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 298 AND variable_key = 'softwareRequirementsFiles' AND variable_identifier = '{softwareRequirementsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 298;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 297;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 297 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "safety_and_regulation_check"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 297 AND variable_key = 'safetyAndRegulationCheckFiles' AND variable_identifier = '{safetyAndRegulationCheckFiles}' AND status = 0 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = disabled;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 297;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 296;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 296 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "environmental_specifications"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 296 AND variable_key = 'environmentalSpecificationsFiles' AND variable_identifier = '{environmentalSpecificationsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 296;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 295;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 295 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "communication_protocol"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 295 AND variable_key = 'communicationProtocolFiles' AND variable_identifier = '{communicationProtocolFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 295;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 294;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 294 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "usability_interface_specifications"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 294 AND variable_key = 'usabilityInterfaceSpecificationsFiles' AND variable_identifier = '{usabilityInterfaceSpecificationsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 294;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 293;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 293 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "power_supply"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 293 AND variable_key = 'powerSupplyFiles' AND variable_identifier = '{powerSupplyFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 293;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 292;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 292 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "physical_characteristics"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 292 AND variable_key = 'physicalCharacteristicsFiles' AND variable_identifier = '{physicalCharacteristicsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 292;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 291;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 291 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "user_and_patient_requirements"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 291 AND variable_key = 'userAndPatientRequirementsFiles' AND variable_identifier = '{userAndPatientRequirementsFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 291;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 290;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 290;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 290 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "functional_specifications"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 290 AND variable_key = 'functionalFiles' AND variable_identifier = '{functionalFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 290;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_file' AND form_column_name = 'file_name' AND status = 1 AND fk_eqms_document_template_variable_id = 289;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 289;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 289 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "performance_specification"}}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 289 AND variable_key = 'performanceFiles' AND variable_identifier = '{performanceFiles}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 289;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 289-318;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_design_specification_type_lk' AND form_column_name = 'slug' AND status = 1 AND fk_eqms_document_template_variable_id = 259;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_quality_plan' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 259;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_applicable_specification' AND form_column_name = 'fk_eqms_project_id' AND status = 1 AND fk_eqms_document_template_variable_id = 259 AND form_condition = '{"fk_eqms_project_id": "@project_id"}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_quality_plan' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 259;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 259 AND form_condition = '{"status": 1}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 259;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 259;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dir_supporting_document' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 259;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_product' AND form_column_name = 'id' AND status = 1 AND fk_eqms_document_template_variable_id = 259;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = keep only @project_id conditions;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 259;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 259 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 259 AND variable_key = 'mapperVariable' AND variable_identifier = '{mapperVariable}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 259;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 258;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 258;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 258;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 258;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 258 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "shelf_life"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 258 AND variable_key = 'shelfLife' AND variable_identifier = '{shelfLifeParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 258;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 257;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 257;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 257;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 257;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 257 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "statutory"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 257 AND variable_key = 'statutory' AND variable_identifier = '{statutoryParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 257;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 256;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 256;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 256;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 256;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 256 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "safety"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 256 AND variable_key = 'safety' AND variable_identifier = '{safetyParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 256;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_description' AND status = 1 AND fk_eqms_document_template_variable_id = 255 AND value_type = 'HTML';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 255;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 255;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 255 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "regulations"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 255 AND variable_key = 'regulations' AND variable_identifier = '{regulationsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 255;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 254;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 254;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 254;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 254;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 254 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "other_requirements"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 254 AND variable_key = 'otherRequirements' AND variable_identifier = '{otherRequirementsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 254;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 253;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 253;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 253;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 253;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 253 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "other_device_compatibility"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 253 AND variable_key = 'otherDeviceCompatibility' AND variable_identifier = '{otherDeviceCompatibilityParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 253;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 252;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 252;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 252;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 252;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 252 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "accessories_&_consumables"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 252 AND variable_key = 'accessoriesAndConsumables' AND variable_identifier = '{accessoriesAndConsumablesParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 252;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 251;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 251;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 251;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 251;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 251 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "toxicity_&_biocompatability"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 251 AND variable_key = 'toxicityAndBiocompatibility' AND variable_identifier = '{toxicityAndBiocompatibilityParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 251;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 250;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 250;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 250;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 250;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 250 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "reliability_requirements"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 250 AND variable_key = 'reliabilityRequirements' AND variable_identifier = '{reliabilityRequirementsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 250;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 249;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 249;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 249;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 249;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 249 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "sterilization_requirements"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 249 AND variable_key = 'sterilizationRequirements' AND variable_identifier = '{sterilizationRequirementsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 249;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'lifetime_of_device' AND status = 1 AND fk_eqms_document_template_variable_id = 248;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_description' AND status = 1 AND fk_eqms_document_template_variable_id = 248 AND value_type = 'HTML';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 248;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 248 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "lifetime_of_the_device"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 248 AND variable_key = 'lifetimeOfTheDevice' AND variable_identifier = '{lifetimeOfTheDeviceParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 248;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_description' AND status = 1 AND fk_eqms_document_template_variable_id = 247 AND value_type = 'HTML';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 247;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 247;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 247 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "training_requirements_for_customers"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 247 AND variable_key = 'trainingRequirementsForCustomers' AND variable_identifier = '{trainingRequirementsForCustomersParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 247;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 246;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 246;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 246;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 246;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 246 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "references_from_the_previous_design"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 246 AND variable_key = 'referencesFromPreviousDesign' AND variable_identifier = '{referencesFromPreviousDesignParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 246;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_description' AND status = 1 AND fk_eqms_document_template_variable_id = 245 AND value_type = 'HTML';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'adverse_event' AND status = 1 AND fk_eqms_document_template_variable_id = 245;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 245;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 245;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 245 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "adverse_events_design_input"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 245 AND variable_key = 'adverseEventsDesignInput' AND variable_identifier = '{adverseEventsDesignInputParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 245;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 244;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 244;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 244;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 244;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 244 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "risk_control_measures"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 244 AND variable_key = 'riskControlMeasures' AND variable_identifier = '{riskControlMeasuresParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 244;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 243;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 243;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 243;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 243;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 243 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "servicing_requirements"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 243 AND variable_key = 'servicingRequirements' AND variable_identifier = '{servicingRequirementsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 243;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 242;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 242;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 242;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 242;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 242 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "installation_requirements"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 242 AND variable_key = 'installationRequirements' AND variable_identifier = '{installationRequirementsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 242;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_description' AND status = 1 AND fk_eqms_document_template_variable_id = 241 AND value_type = 'HTML';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 241;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 241;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 241 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "manufacturing_process"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 241 AND variable_key = 'manufacturingProcess' AND variable_identifier = '{manufacturingProcessParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 241;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 240;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 240;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 240;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 240;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 240 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "storage_&_handling_requirements"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 240 AND variable_key = 'storageAndHandlingRequirements' AND variable_identifier = '{storageAndHandlingRequirementsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 240;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 239;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 239;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 239;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 239;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 239 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "labelling_and_packaging_requirements"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 239 AND variable_key = 'labellingAndPackagingRequirements' AND variable_identifier = '{labellingAndPackagingRequirementsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 239;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 238;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 238;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 238;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 238;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 238 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "software_requirements"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 238 AND variable_key = 'softwareRequirements' AND variable_identifier = '{softwareRequirementsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 238;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 237;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 237;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 237;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 237;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 237 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "safety_and_regulation_check"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 237 AND variable_key = 'safetyAndRegulationCheck' AND variable_identifier = '{safetyAndRegulationCheckParameter}' AND status = 0 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = disabled;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 237;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 236;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 236;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 236;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 236;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 236 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "environmental_specifications"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 236 AND variable_key = 'environmentalSpecifications' AND variable_identifier = '{environmentalSpecificationsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 236;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 235;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 235;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 235;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 235;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 235 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "communication_protocol"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 235 AND variable_key = 'communicationProtocol' AND variable_identifier = '{communicationProtocolParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 235;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 234;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 234;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 234;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 234;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 234 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "usability_interface_specifications"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 234 AND variable_key = 'usabilityInterfaceSpecifications' AND variable_identifier = '{usabilityInterfaceSpecificationsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 234;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 233;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 233;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 233;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 233;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 233 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "power_supply"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 233 AND variable_key = 'powerSupply' AND variable_identifier = '{powerSupplyParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 233;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 232;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 232;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 232;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 232;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 232 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "physical_characteristics"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 232 AND variable_key = 'physicalCharacteristics' AND variable_identifier = '{physicalCharacteristicsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 232;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 231;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 231;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 231;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 231;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 231 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "user_and_patient_requirements"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 231 AND variable_key = 'userAndPatientRequirements' AND variable_identifier = '{userAndPatientRequirementsParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 231;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 230;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 230;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 230;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 230;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 230 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "functional_specifications"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 230 AND variable_key = 'functionalSpecification' AND variable_identifier = '{functionalSpecificationParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = functionalSpecification;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_value' AND status = 1 AND fk_eqms_document_template_variable_id = 229;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_unit' AND status = 1 AND fk_eqms_document_template_variable_id = 229;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_dig_specification' AND form_column_name = 'specification_parameter' AND status = 1 AND fk_eqms_document_template_variable_id = 229;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 229;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 229 AND fk_eqms_document_variable_operation_id = 6 AND order = 1 AND condition = '{"eqms_design_specification_type_lk": {"slug": "performance_specification"}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = relation_matrix operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 229 AND variable_key = 'performanceSpecification' AND variable_identifier = '{performanceSpecificationParameter}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = performanceSpecification;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'contraindications_of_use' AND status = 1 AND fk_eqms_document_template_variable_id = 228;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 228;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 228 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 228 AND variable_key = 'contraindications_of_use' AND variable_identifier = '{contraindications_of_use}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = contraindications_of_use;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'indications_of_use' AND status = 1 AND fk_eqms_document_template_variable_id = 227;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 227;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 227 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 227 AND variable_key = 'indications_of_use' AND variable_identifier = '{indications_of_use}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = indications_of_use;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'intended_population' AND status = 1 AND fk_eqms_document_template_variable_id = 226;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 226;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 226 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 226 AND variable_key = 'intended_population' AND variable_identifier = '{intended_population}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = intended_population;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_product' AND form_column_name = 'product_intended_use' AND status = 1 AND fk_eqms_document_template_variable_id = 225;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 225;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 225 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 225 AND variable_key = 'product_intended_use' AND variable_identifier = '{product_intended_use}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = product_intended_use;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND form_table_name = 'eqms_organization_product' AND form_column_name = 'product_name' AND status = 1 AND fk_eqms_document_template_variable_id = 224;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 224;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 224 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 224 AND variable_key = 'product_name' AND variable_identifier = '{product_name}' AND status = 1 AND fk_eqms_document_template_id = 16;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = product_name;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = ref_id 224-228;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 16 AND fk_eqms_form_id = 18 AND status = 1;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_type_lk_id = 17 AND document_template_name = 'F-13 Design Input Requirements' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/f-13 Design Input Requirements.docx') AND status = 1 AND container_id = 'DND_DIR_DOCUMENT_GENERATION' AND fk_eqms_document_template_id = 16 AND template_version = 1.0;

-- Delete from dms.eqms_document_template_magic_read_details
DELETE FROM dms.eqms_document_template_magic_read_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 16 AND container_id = 'DND_DIR_DOCUMENT_GENERATION' AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_document_template_type_lk_id = 17 AND document_template_name = 'F-13 Design Input Requirements' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/f-13 Design Input Requirements.docx') AND status = 1 AND container_id = 'DND_DIR_DOCUMENT_GENERATION' AND fk_eqms_record_generation_mode_lk_id = 2 AND template_version = 1.0;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND document_template_type = 'dir_specifications' AND status = 1;

END $$;
