DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN

    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'plant_master', 1, NOW (), 1, 34);

    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, fk_eqms_document_template_type_lk_id, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'Part 1 - PLANT MASTER FILE Format', '.docx', 34, VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Regulations/Indian MDR/I-MDR forms/Part 1 - PLANT MASTER FILE Format.docx'), 1.0, 1, 'REGULATION_PLANT_MASTER_FILE_DOCUMENT_GENERATION', NOW(), 1, 33);

    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 33, 54, 1, NOW (), 1);


    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, valid_from_date, created_date, created_by) VALUES (33, 34, VAR_TENANT_KEY, VAR_ORG_ID, 'Part 1 - PLANT MASTER FILE Format', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Regulations/Indian MDR/I-MDR forms/Part 1 - PLANT MASTER FILE Format.docx'), 1.0, 1, 'REGULATION_PLANT_MASTER_FILE_DOCUMENT_GENERATION', NOW(), NOW(), 1);

    --firmName
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'firmName', 1, 1, NOW(), 33, '{firmName}', 430);

    --firmName mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 430, 'eqms_organization_site', 'site', '{"id": "@organization_site_id"}', 1, NOW(), 1);

    --firmName transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 430, 10, 1, 1, NOW(), 1);

    --address
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'address', 1, 1, NOW(), 33, '{address}', 431);

    --address mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 431, 'eqms_organization_site', 'site_address', null, 1, NOW(), 1);

    --address transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 431, 10, 1, 1, NOW(), 1);

    --companyProfile
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'companyProfile', 1, 1, NOW(), 33, '{companyProfile}', 432);

    --companyProfile mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 432, 'eqms_reg_pmf_general_information', 'company_profile', 'HTML', null, 1, NOW(), 1);

    --companyProfile transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 432, 10, 1, 1, NOW(), 1);

    --facilityProfile
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'facilityProfile', 1, 1, NOW(), 33, '{facilityProfile}', 433);

    --facilityProfile mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 433, 'eqms_reg_pmf_general_information', 'facility_profile', 'HTML', null, 1, NOW(), 1);

    --facilityProfile transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 433, 10, 1, 1, NOW(), 1);

    --manufacturingActivity
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'manufacturingActivity', 1, 1, NOW(), 33, '{manufacturingActivity}', 434);

    --manufacturingActivity mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 434, 'eqms_reg_pmf_general_information', 'manufacturing_activity', 'HTML', null, 1, NOW(), 1);

    --manufacturingActivity transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 434, 10, 1, 1, NOW(), 1);

    --otherManufacturingActivity
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'otherManufacturingActivity', 1, 1, NOW(), 33, '{otherManufacturingActivity}', 435);

    --otherManufacturingActivity mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 435, 'eqms_reg_pmf_general_information', 'other_manufacturing_activity', 'HTML', null, 1, NOW(), 1);

    --otherManufacturingActivity transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 435, 10, 1, 1, NOW(), 1);

    --exactAddress
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'exactAddress', 1, 1, NOW(), 33, '{exactAddress}', 436);

    --exactAddress mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 436, 'eqms_reg_pmf_general_information', 'exact_address', 'HTML', null, 1, NOW(), 1);

    --exactAddress transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 436, 10, 1, 1, NOW(), 1);

    --typesOfProducts
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'typesOfProducts', 1, 1, NOW(), 33, '{typesOfProducts}', 437);

    --typesOfProducts mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 437, 'eqms_reg_pmf_general_information', 'product_manufactured_type', 'HTML', null, 1, NOW(), 1);

    --typesOfProducts transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 437, 10, 1, 1, NOW(), 1);

    --shortDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'shortDescription', 1, 1, NOW(), 33, '{shortDescription}', 438);

    --shortDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 438, 'eqms_reg_pmf_general_information', 'site_short_description', 'HTML', null, 1, NOW(), 1);

    --shortDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 438, 10, 1, 1, NOW(), 1);

    --outsideTechnicalAssistance
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'outsideTechnicalAssistance', 1, 1, NOW(), 33, '{outsideTechnicalAssistance}', 439);

    --outsideTechnicalAssistance mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 439, 'eqms_reg_pmf_general_information', 'outside_tech_assistance', 'HTML', null, 1, NOW(), 1);

    --outsideTechnicalAssistance transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 439, 10, 1, 1, NOW(), 1);

    --shortQualityDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'shortQualityDescription', 1, 1, NOW(), 33, '{shortQualityDescription}', 440);

    --shortQualityDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 440, 'eqms_reg_pmf_general_information', 'qms_short_description', 'HTML', null, 1, NOW(), 1);

    --shortQualityDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 440, 10, 1, 1, NOW(), 1);

    --orgChartForKeyPersonnel
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'orgChartForKeyPersonnel', 1, 1, NOW(), 33, '{orgChartForKeyPersonnel}', 441);

    --orgChartForKeyPersonnel mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 441, 'eqms_reg_pmf_personnel', 'organization_chart', 'HTML', null, 1, NOW(), 1);

    --orgChartForKeyPersonnel transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 441, 10, 1, 1, NOW(), 1);

    --keyPersonnelForQER
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'keyPersonnelForQER', 1, 1, NOW(), 33, '{keyPersonnelForQER}', 442);

    --keyPersonnelForQER mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 442, 'eqms_reg_pmf_personnel', 'personnel_profile_summary', 'HTML', null, 1, NOW(), 1);

    --keyPersonnelForQER transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 442, 10, 1, 1, NOW(), 1);

    --trainingArrangement
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'trainingArrangement', 1, 1, NOW(), 33, '{trainingArrangement}', 443);

    --trainingArrangement mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 443, 'eqms_reg_pmf_personnel', 'training_arrangement_outline', 'HTML', null, 1, NOW(), 1);

    --trainingArrangement transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 443, 10, 1, 1, NOW(), 1);

    --healthRequirements
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'healthRequirements', 1, 1, NOW(), 33, '{healthRequirements}', 444);

    --healthRequirements mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 444, 'eqms_reg_pmf_personnel', 'health_requirements', 'HTML', null, 1, NOW(), 1);

    --healthRequirements transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 444, 10, 1, 1, NOW(), 1);

    --hygieneRequirements
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'hygieneRequirements', 1, 1, NOW(), 33, '{hygieneRequirements}', 445);

    --hygieneRequirements mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 445, 'eqms_reg_pmf_personnel', 'personnel_hygiene_requirment', 'HTML', null, 1, NOW(), 1);

    --hygieneRequirements transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 445, 10, 1, 1, NOW(), 1);

    --premisesLayoutWithScale
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'premisesLayoutWithScale', 1, 1, NOW(), 33, '{premisesLayoutWithScale}', 446);

    --premisesLayoutWithScale mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 446, 'eqms_reg_pmf_facility_premises', 'premises_layout_with_scale', 'HTML', null, 1, NOW(), 1);

    --premisesLayoutWithScale transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 446, 10, 1, 1, NOW(), 1);

    --constructionFinishFixtures
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'constructionFinishFixtures', 1, 1, NOW(), 33, '{constructionFinishFixtures}', 447);

    --constructionFinishFixtures mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 447, 'eqms_reg_pmf_facility_premises', 'construction_finishes_fixtures', 'HTML', null, 1, NOW(), 1);

    --constructionFinishFixtures transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 447, 10, 1, 1, NOW(), 1);

    --ventilationSystemDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'ventilationSystemDescription', 1, 1, NOW(), 33, '{ventilationSystemDescription}', 448);

    --ventilationSystemDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 448, 'eqms_reg_pmf_facility_premises', 'ventilation_system_description', 'HTML', null, 1, NOW(), 1);

    --ventilationSystemDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 448, 10, 1, 1, NOW(), 1);

    --hazardMaterialsHandling
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'hazardMaterialsHandling', 1, 1, NOW(), 33, '{hazardMaterialsHandling}', 449);

    --hazardMaterialsHandling mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 449, 'eqms_reg_pmf_facility_premises', 'hazardous_material_handling_areas', 'HTML', null, 1, NOW(), 1);

    --hazardMaterialsHandling transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 449, 10, 1, 1, NOW(), 1);

    --waterSystemDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'waterSystemDescription', 1, 1, NOW(), 33, '{waterSystemDescription}', 450);

    --waterSystemDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 450, 'eqms_reg_pmf_facility_premises', 'water_system_description', 'HTML', null, 1, NOW(), 1);

    --waterSystemDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 450, 10, 1, 1, NOW(), 1);

    --premisesPreventiveDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'premisesPreventiveDescription', 1, 1, NOW(), 33, '{premisesPreventiveDescription}', 451);

    --premisesPreventiveDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 451, 'eqms_reg_pmf_facility_premises', 'premises_preventive_maintenance_description', 'HTML', null, 1, NOW(), 1);

    --premisesPreventiveDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 451, 10, 1, 1, NOW(), 1);

    --productionQCEquipmentDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'productionQCEquipmentDescription', 1, 1, NOW(), 33, '{productionQCEquipmentDescription}', 452);

    --productionQCEquipmentDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 452, 'eqms_reg_pmf_equipment', 'production_qc_equipment_description', 'HTML', null, 1, NOW(), 1);

    --productionQCEquipmentDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 452, 10, 1, 1, NOW(), 1);

    --preventiveMaintenanceDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'preventiveMaintenanceDescription', 1, 1, NOW(), 33, '{preventiveMaintenanceDescription}', 453);

    --preventiveMaintenanceDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 453, 'eqms_reg_pmf_equipment', 'preventive_maintenance_description', 'HTML', null, 1, NOW(), 1);

    --preventiveMaintenanceDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 453, 10, 1, 1, NOW(), 1);

    --measuringDeviceCalibration
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'measuringDeviceCalibration', 1, 1, NOW(), 33, '{measuringDeviceCalibration}', 454);

    --measuringDeviceCalibration mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 454, 'eqms_reg_pmf_equipment', 'measuring_device_calibration', 'HTML', null, 1, NOW(), 1);

    --measuringDeviceCalibration transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 454, 10, 1, 1, NOW(), 1);

    --sanitation
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'sanitation', 1, 1, NOW(), 33, '{sanitation}', 455);

    --sanitation mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 455, 'eqms_reg_pmf_sanitation', 'sanitation', 'HTML', null, 1, NOW(), 1);

    --sanitation transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 455, 10, 1, 1, NOW(), 1);

    --productionOperationsDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'productionOperationsDescription', 1, 1, NOW(), 33, '{productionOperationsDescription}', 456);

    --productionOperationsDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 456, 'eqms_reg_pmf_production', 'production_operations_description', 'HTML', null, 1, NOW(), 1);

    --productionOperationsDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 456, 10, 1, 1, NOW(), 1);

    --materialHandlingArrangement
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'materialHandlingArrangement', 1, 1, NOW(), 33, '{materialHandlingArrangement}', 457);

    --materialHandlingArrangement mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 457, 'eqms_reg_pmf_production', 'material_handling_arrangement', 'HTML', null, 1, NOW(), 1);

    --materialHandlingArrangement transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 457, 10, 1, 1, NOW(), 1);

    --reprocessingReworkArrangement
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'reprocessingReworkArrangement', 1, 1, NOW(), 33, '{reprocessingReworkArrangement}', 458);

    --reprocessingReworkArrangement mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 458, 'eqms_reg_pmf_production', 'reprocessing_rework_arrangement', 'HTML', null, 1, NOW(), 1);

    --reprocessingReworkArrangement transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 458, 10, 1, 1, NOW(), 1);

    --rejectedMaterialsHandling
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'rejectedMaterialsHandling', 1, 1, NOW(), 33, '{rejectedMaterialsHandling}', 459);

    --rejectedMaterialsHandling mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 459, 'eqms_reg_pmf_production', 'rejected_materials_handling', 'HTML', null, 1, NOW(), 1);

    --rejectedMaterialsHandling transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 459, 10, 1, 1, NOW(), 1);

    --processValidationPolicy
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'processValidationPolicy', 1, 1, NOW(), 33, '{processValidationPolicy}', 460);

    --processValidationPolicy mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 460, 'eqms_reg_pmf_production', 'process_validation_policy', 'HTML', null, 1, NOW(), 1);

    --processValidationPolicy transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 460, 10, 1, 1, NOW(), 1);

    --sterilizationFacilityDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'sterilizationFacilityDescription', 1, 1, NOW(), 33, '{sterilizationFacilityDescription}', 461);

    --sterilizationFacilityDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 461, 'eqms_reg_pmf_production', 'sterilization_facility_description', 'HTML', null, 1, NOW(), 1);

    --sterilizationFacilityDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 461, 10, 1, 1, NOW(), 1);

    --qualityAssurance
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'qualityAssurance', 1, 1, NOW(), 33, '{qualityAssurance}', 462);

    --qualityAssurance mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 462, 'eqms_reg_pmf_quality_assurance', 'quality_assurance', 'HTML', null, 1, NOW(), 1);

    --qualityAssurance transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 462, 10, 1, 1, NOW(), 1);

    --storage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'storage', 1, 1, NOW(), 33, '{storage}', 463);

    --storage mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 463, 'eqms_reg_pmf_storage', 'storage', 'HTML', null, 1, NOW(), 1);

    --storage transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 463, 10, 1, 1, NOW(), 1);

    --documentation
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'documentation', 1, 1, NOW(), 33, '{documentation}', 464);

    --documentation mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 464, 'eqms_reg_pmf_documentation', 'documentation', 'HTML', null, 1, NOW(), 1);

    --documentation transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 464, 10, 1, 1, NOW(), 1);

    --handlingComplaints
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'handlingComplaints', 1, 1, NOW(), 33, '{handlingComplaints}', 465);

    --handlingComplaints mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 465, 'eqms_reg_pmf_handling_complaints', 'handling_complaints', 'HTML', null, 1, NOW(), 1);

    --handlingComplaints transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 465, 10, 1, 1, NOW(), 1);

    --handlingFieldSafetyAction
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'handlingFieldSafetyAction', 1, 1, NOW(), 33, '{handlingFieldSafetyAction}', 466);

    --handlingFieldSafetyAction mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 466, 'eqms_reg_pmf_handling_complaints', 'handling_field_safety_action', 'HTML', null, 1, NOW(), 1);

    --handlingFieldSafetyAction transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 466, 10, 1, 1, NOW(), 1);

    --selfInspectionDescription
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'selfInspectionDescription', 1, 1, NOW(), 33, '{selfInspectionDescription}', 467);

    --selfInspectionDescription mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 467, 'eqms_reg_pmf_internal_audit', 'internal_audit_description', 'HTML', null, 1, NOW(), 1);

    --selfInspectionDescription transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 467, 10, 1, 1, NOW(), 1);

    --contractActivities
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'contractActivities', 1, 1, NOW(), 33, '{contractActivities}', 468);

    --contractActivities mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 468, 'eqms_reg_pmf_contract_activities', 'contract_activities', 'HTML', null, 1, NOW(), 1);

    --contractActivities transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 468, 10, 1, 1, NOW(), 1);

    --mapperVariable
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, 1, NOW(), 33, '{mapperVariable}', 469);

    --mapperVariable mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 469, 'eqms_reg_plant_master_file', 'id', null, 1, NOW(), 1);

    --mapperVariable transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 469, 10, 1, 1, NOW(), 1);

    --employeeEngaged
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_by, created_date, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'employeeEngaged', 1, 1, NOW(), 33, '{employeeEngaged}', 470);

    --employeeEngaged mapper
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 470, 'eqms_organization_department', 'department_name', null, null, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 470, 'eqms_reg_department_user_count', 'user_count', null, null, 1, NOW(), 1);

    --employeeEngaged transformation rule
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 470, 7, 1, 1, NOW(), 1);

END $$;