-- DESIGN INPUT REQUIREMENTS
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN

INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'dir_specifications', 1, NOW (), 1, 17);


-- Insert document template with hardcoded ref_id
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, container_id, fk_eqms_record_generation_mode_lk_id, created_date, created_by, template_version, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 17, 'F-13 Design Input Requirements', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/f-13 Design Input Requirements.docx'), 1, 'DND_DIR_DOCUMENT_GENERATION', 2, NOW(), 1, 1.0, 16);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 16, 'DND_DIR_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert template history
INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, container_id, created_date, created_by, valid_from_date, fk_eqms_document_template_id, template_version) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 17, 'F-13 Design Input Requirements', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/f-13 Design Input Requirements.docx'), 1, 'DND_DIR_DOCUMENT_GENERATION', NOW(), 1, NOW(), 16, 1.0);

INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 16, 18, 1, NOW (), 1);

-- =============================================
-- PART 1: BASIC TEXT VARIABLES (ref_id 224-228)
-- =============================================

-- Insert first template variable (product_name) with ref_id 224
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'product_name', '{product_name}', 1, 16, NOW(), 1, 224);

-- Insert transformation rule for product_name (text operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 224, 10, 1, 1, NOW(), 1);

-- Insert mapper variable for product_name (ref_id 224)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_product', 'product_name', 1, 224, NOW(), 1);

-- Insert second template variable (product_intended_use) with ref_id 225
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'product_intended_use', '{product_intended_use}', 1, 16, NOW(), 1, 225);

-- Insert transformation rule for product_intended_use (text operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 225, 10, 1, 1, NOW(), 1);

-- Insert mapper variable for product_intended_use (ref_id 225)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_product', 'product_intended_use', 1, 225, NOW(), 1);

-- Insert third template variable (intended_population) with ref_id 226
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'intended_population', '{intended_population}', 1, 16, NOW(), 1, 226);

-- Insert transformation rule for intended_population (text operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 226, 10, 1, 1, NOW(), 1);

-- Insert mapper variable for intended_population (ref_id 226)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_input_gathering', 'intended_population', 1, 226, NOW(), 1);

-- Insert fourth template variable (indications_of_use) with ref_id 227
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'indications_of_use', '{indications_of_use}', 1, 16, NOW(), 1, 227);

-- Insert transformation rule for indications_of_use (text operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 227, 10, 1, 1, NOW(), 1);

-- Insert mapper variable for indications_of_use (ref_id 227)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_input_gathering', 'indications_of_use', 1, 227, NOW(), 1);

-- Insert fifth template variable (contraindications_of_use) with ref_id 228
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'contraindications_of_use', '{contraindications_of_use}', 1, 16, NOW(), 1, 228);

-- Insert transformation rule for contraindications_of_use (text operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 228, 10, 1, 1, NOW(), 1);

-- Insert mapper variable for contraindications_of_use (ref_id 228)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_input_gathering', 'contraindications_of_use', 1, 228, NOW(), 1);

-- Insert sixth template variable (performanceSpecification) with ref_id 229
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'performanceSpecification', '{performanceSpecificationParameter}', 1, 16, NOW(), 1, 229);

-- Insert transformation rule for performanceSpecification (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 229, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "performance_specification"}}', 1, NOW(), 1);

-- Insert mapper variables for performanceSpecification (ref_id 229) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 229, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 229, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 229, NOW(), 1);

-- Insert seventh template variable (functionalSpecification) with ref_id 230
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'functionalSpecification', '{functionalSpecificationParameter}', 1, 16, NOW(), 1, 230);

-- Insert transformation rule for functionalSpecification (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 230, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "functional_specifications"}}', 1, NOW(), 1);

-- Insert mapper variables for functionalSpecification (ref_id 230) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 230, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 230, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 230, NOW(), 1);

-- 1. userAndPatientRequirements (ref_id 231)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'userAndPatientRequirements', '{userAndPatientRequirementsParameter}', 1, 16, NOW(), 1, 231);

-- Insert transformation rule for userAndPatientRequirements (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 231, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "user_and_patient_requirements"}}', 1, NOW(), 1);

-- Insert mapper variables for userAndPatientRequirements (ref_id 231) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 231, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 231, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 231, NOW(), 1);

-- 2. physicalCharacteristics (ref_id 232)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'physicalCharacteristics', '{physicalCharacteristicsParameter}', 1, 16, NOW(), 1, 232);

-- Insert transformation rule for physicalCharacteristics (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 232, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "physical_characteristics"}}', 1, NOW(), 1);

-- Insert mapper variables for physicalCharacteristics (ref_id 232) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 232, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 232, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 232, NOW(), 1);

-- 3. powerSupply (ref_id 233)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'powerSupply', '{powerSupplyParameter}', 1, 16, NOW(), 1, 233);

-- Insert transformation rule for powerSupply (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 233, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "power_supply"}}', 1, NOW(), 1);

-- Insert mapper variables for powerSupply (ref_id 233) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 233, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 233, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 233, NOW(), 1);

-- 4. usabilityInterfaceSpecifications (ref_id 234)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'usabilityInterfaceSpecifications', '{usabilityInterfaceSpecificationsParameter}', 1, 16, NOW(), 1, 234);

-- Insert transformation rule for usabilityInterfaceSpecifications (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 234, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "usability_interface_specifications"}}', 1, NOW(), 1);

-- Insert mapper variables for usabilityInterfaceSpecifications (ref_id 234) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 234, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 234, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 234, NOW(), 1);

-- 5. communicationProtocol (ref_id 235)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'communicationProtocol', '{communicationProtocolParameter}', 1, 16, NOW(), 1, 235);

-- Insert transformation rule for communicationProtocol (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 235, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "communication_protocol"}}', 1, NOW(), 1);

-- Insert mapper variables for communicationProtocol (ref_id 235) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 235, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 235, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 235, NOW(), 1);

-- 6. environmentalSpecifications (ref_id 236)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'environmentalSpecifications', '{environmentalSpecificationsParameter}', 1, 16, NOW(), 1, 236);

-- Insert transformation rule for environmentalSpecifications (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 236, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "environmental_specifications"}}', 1, NOW(), 1);

-- Insert mapper variables for environmentalSpecifications (ref_id 236) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 236, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 236, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 236, NOW(), 1);

-- 7. safetyAndRegulationCheck (ref_id 237) - Note: status = 0 (disabled)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'safetyAndRegulationCheck', '{safetyAndRegulationCheckParameter}', 0, 16, NOW(), 1, 237);

-- Insert transformation rule for safetyAndRegulationCheck (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 237, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "safety_and_regulation_check"}}', 1, NOW(), 1);

-- Insert mapper variables for safetyAndRegulationCheck (ref_id 237) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 237, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 237, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 237, NOW(), 1);

-- 8. softwareRequirements (ref_id 238)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'softwareRequirements', '{softwareRequirementsParameter}', 1, 16, NOW(), 1, 238);

-- Insert transformation rule for softwareRequirements (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 238, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "software_requirements"}}', 1, NOW(), 1);

-- Insert mapper variables for softwareRequirements (ref_id 238) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 238, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 238, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 238, NOW(), 1);

-- 9. labellingAndPackagingRequirements (ref_id 239)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'labellingAndPackagingRequirements', '{labellingAndPackagingRequirementsParameter}', 1, 16, NOW(), 1, 239);

-- Insert transformation rule for labellingAndPackagingRequirements (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 239, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "labelling_and_packaging_requirements"}}', 1, NOW(), 1);

-- Insert mapper variables for labellingAndPackagingRequirements (ref_id 239) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 239, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 239, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 239, NOW(), 1);

-- 10. storageAndHandlingRequirements (ref_id 240)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'storageAndHandlingRequirements', '{storageAndHandlingRequirementsParameter}', 1, 16, NOW(), 1, 240);

-- Insert transformation rule for storageAndHandlingRequirements (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 240, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "storage_&_handling_requirements"}}', 1, NOW(), 1);

-- Insert mapper variables for storageAndHandlingRequirements (ref_id 240) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 240, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 240, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 240, NOW(), 1);


-- 11. manufacturingProcess (ref_id 241)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'manufacturingProcess', '{manufacturingProcessParameter}', 1, 16, NOW(), 1, 241);

-- Insert transformation rule for manufacturingProcess (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 241, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "manufacturing_process"}}', 1, NOW(), 1);

-- Insert mapper variables for manufacturingProcess (ref_id 241) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 241, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_description', 1, 241, NOW(), 1, 'HTML');

-- 12. installationRequirements (ref_id 242)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'installationRequirements', '{installationRequirementsParameter}', 1, 16, NOW(), 1, 242);

-- Insert transformation rule for installationRequirements (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 242, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "installation_requirements"}}', 1, NOW(), 1);

-- Insert mapper variables for installationRequirements (ref_id 242) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 242, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 242, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 242, NOW(), 1);

-- 13. servicingRequirements (ref_id 243)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'servicingRequirements', '{servicingRequirementsParameter}', 1, 16, NOW(), 1, 243);

-- Insert transformation rule for servicingRequirements (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 243, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "servicing_requirements"}}', 1, NOW(), 1);

-- Insert mapper variables for servicingRequirements (ref_id 243) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 243, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 243, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 243, NOW(), 1);

-- 14. riskControlMeasures (ref_id 244)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'riskControlMeasures', '{riskControlMeasuresParameter}', 1, 16, NOW(), 1, 244);

-- Insert transformation rule for riskControlMeasures (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 244, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "risk_control_measures"}}', 1, NOW(), 1);

-- Insert mapper variables for riskControlMeasures (ref_id 244) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 244, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 244, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 244, NOW(), 1);

-- 15. adverseEventsDesignInput (ref_id 245)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'adverseEventsDesignInput', '{adverseEventsDesignInputParameter}', 1, 16, NOW(), 1, 245);

-- Insert transformation rule for adverseEventsDesignInput (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 245, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "adverse_events_design_input"}}', 1, NOW(), 1);

-- Insert mapper variables for adverseEventsDesignInput (ref_id 245) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 245, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'adverse_event', 1, 245, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_description', 1, 245, NOW(), 1, 'HTML');

-- 16. referencesFromPreviousDesign (ref_id 246)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'referencesFromPreviousDesign', '{referencesFromPreviousDesignParameter}', 1, 16, NOW(), 1, 246);

-- Insert transformation rule for referencesFromPreviousDesign (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 246, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "references_from_the_previous_design"}}', 1, NOW(), 1);

-- Insert mapper variables for referencesFromPreviousDesign (ref_id 246) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 246, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 246, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 246, NOW(), 1);

-- 17. trainingRequirementsForCustomers (ref_id 247)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'trainingRequirementsForCustomers', '{trainingRequirementsForCustomersParameter}', 1, 16, NOW(), 1, 247);

-- Insert transformation rule for trainingRequirementsForCustomers (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 247, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "training_requirements_for_customers"}}', 1, NOW(), 1);

-- Insert mapper variables for trainingRequirementsForCustomers (ref_id 247) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 247, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_description', 1, 247, NOW(), 1, 'HTML');

-- 18. lifetimeOfTheDevice (ref_id 248)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'lifetimeOfTheDevice', '{lifetimeOfTheDeviceParameter}', 1, 16, NOW(), 1, 248);

-- Insert transformation rule for lifetimeOfTheDevice (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 248, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "lifetime_of_the_device"}}', 1, NOW(), 1);

-- Insert mapper variables for lifetimeOfTheDevice (ref_id 248) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_description', 1, 248, NOW(), 1, 'HTML');
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'lifetime_of_device', 1, 248, NOW(), 1);

-- 19. sterilizationRequirements (ref_id 249)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'sterilizationRequirements', '{sterilizationRequirementsParameter}', 1, 16, NOW(), 1, 249);

-- Insert transformation rule for sterilizationRequirements (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 249, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "sterilization_requirements"}}', 1, NOW(), 1);

-- Insert mapper variables for sterilizationRequirements (ref_id 249) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 249, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 249, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 249, NOW(), 1);

-- 20. reliabilityRequirements (ref_id 250)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'reliabilityRequirements', '{reliabilityRequirementsParameter}', 1, 16, NOW(), 1, 250);

-- Insert transformation rule for reliabilityRequirements (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 250, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "reliability_requirements"}}', 1, NOW(), 1);

-- Insert mapper variables for reliabilityRequirements (ref_id 250) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 250, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 250, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 250, NOW(), 1);

-- 21. toxicityAndBiocompatibility (ref_id 251)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'toxicityAndBiocompatibility', '{toxicityAndBiocompatibilityParameter}', 1, 16, NOW(), 1, 251);

-- Insert transformation rule for toxicityAndBiocompatibility (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 251, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "toxicity_&_biocompatability"}}', 1, NOW(), 1);

-- Insert mapper variables for toxicityAndBiocompatibility (ref_id 251) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 251, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 251, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 251, NOW(), 1);

-- 22. accessoriesAndConsumables (ref_id 252)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'accessoriesAndConsumables', '{accessoriesAndConsumablesParameter}', 1, 16, NOW(), 1, 252);

-- Insert transformation rule for accessoriesAndConsumables (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 252, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "accessories_&_consumables"}}', 1, NOW(), 1);

-- Insert mapper variables for accessoriesAndConsumables (ref_id 252) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 252, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 252, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 252, NOW(), 1);

-- 23. otherDeviceCompatibility (ref_id 253)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'otherDeviceCompatibility', '{otherDeviceCompatibilityParameter}', 1, 16, NOW(), 1, 253);

-- Insert transformation rule for otherDeviceCompatibility (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 253, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "other_device_compatibility"}}', 1, NOW(), 1);

-- Insert mapper variables for otherDeviceCompatibility (ref_id 253) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 253, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 253, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 253, NOW(), 1);

-- 24. otherRequirements (ref_id 254)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'otherRequirements', '{otherRequirementsParameter}', 1, 16, NOW(), 1, 254);

-- Insert transformation rule for otherRequirements (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 254, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "other_requirements"}}', 1, NOW(), 1);

-- Insert mapper variables for otherRequirements (ref_id 254) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 254, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 254, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 254, NOW(), 1);

-- 25. regulations (ref_id 255)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'regulations', '{regulationsParameter}', 1, 16, NOW(), 1, 255);

-- Insert transformation rule for regulations (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 255, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "regulations"}}', 1, NOW(), 1);

-- Insert mapper variables for regulations (ref_id 255) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 255, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_description', 1, 255, NOW(), 1, 'HTML');

-- 26. safety (ref_id 256)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'safety', '{safetyParameter}', 1, 16, NOW(), 1, 256);

-- Insert transformation rule for safety (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 256, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "safety"}}', 1, NOW(), 1);

-- Insert mapper variables for safety (ref_id 256) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 256, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 256, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 256, NOW(), 1);

-- 27. statutory (ref_id 257)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'statutory', '{statutoryParameter}', 1, 16, NOW(), 1, 257);

-- Insert transformation rule for statutory (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 257, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "statutory"}}', 1, NOW(), 1);

-- Insert mapper variables for statutory (ref_id 257) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 257, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 257, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 257, NOW(), 1);

-- 28. shelfLife (ref_id 258)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'shelfLife', '{shelfLifeParameter}', 1, 16, NOW(), 1, 258);

-- Insert transformation rule for shelfLife (relation_matrix operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 258, 6, 1, '{"eqms_design_specification_type_lk": {"slug": "shelf_life"}}', 1, NOW(), 1);

-- Insert mapper variables for shelfLife (ref_id 258) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_parameter', 1, 258, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_unit', 1, 258, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_value', 1, 258, NOW(), 1);

-- Insert mapperVariable template variable (ref_id 259)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', '{mapperVariable}', 1, 16, NOW(), 1, 259);

-- Insert transformation rule for mapperVariable (text operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 259, 10, 1, 1, NOW(), 1);

-- Insert mapper variables for mapperVariable (ref_id 259) - cleaned conditions (keep only @project_id conditions)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_product', 'id', 1, 259, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dir_supporting_document', 'id', 1, 259, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_input_gathering', 'id', 1, 259, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project', 'id', 1, 259, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, form_condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'id', 1, 259, '{"status": 1}', NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_quality_plan', 'id', 1, 259, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, form_condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_applicable_specification', 'fk_eqms_project_id', 1, 259, '{"fk_eqms_project_id": "@project_id"}', NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_quality_plan', 'id', 1, 259, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_design_specification_type_lk', 'slug', 1, 259, NOW(), 1);

-- =============================================
-- NESTED RELATION VARIABLES (ref_id 289-318)
-- =============================================

-- Insert performanceFiles template variable (ref_id 289)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'performanceFiles', '{performanceFiles}', 1, 16, NOW(), 1, 289);

-- Insert transformation rule for performanceFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 289, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "performance_specification"}}}', 1, NOW(), 1);

-- Insert mapper variable for performanceFiles (ref_id 289) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 289, NOW(), 1);

-- Insert functionalFiles template variable (ref_id 290)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'functionalFiles', '{functionalFiles}', 1, 16, NOW(), 1, 290);

-- Insert transformation rule for functionalFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 290, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "functional_specifications"}}}', 1, NOW(), 1);

-- Insert mapper variable for functionalFiles (ref_id 290) - cleaned conditions
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 290, NOW(), 1);

-- 1. userAndPatientRequirementsFiles (ref_id 291)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'userAndPatientRequirementsFiles', '{userAndPatientRequirementsFiles}', 1, 16, NOW(), 1, 291);

-- Insert transformation rule for userAndPatientRequirementsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 291, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "user_and_patient_requirements"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 291, NOW(), 1);

-- 2. physicalCharacteristicsFiles (ref_id 292)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'physicalCharacteristicsFiles', '{physicalCharacteristicsFiles}', 1, 16, NOW(), 1, 292);

-- Insert transformation rule for physicalCharacteristicsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 292, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "physical_characteristics"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 292, NOW(), 1);

-- 3. powerSupplyFiles (ref_id 293)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'powerSupplyFiles', '{powerSupplyFiles}', 1, 16, NOW(), 1, 293);

-- Insert transformation rule for powerSupplyFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 293, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "power_supply"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 293, NOW(), 1);

-- 4. usabilityInterfaceSpecificationsFiles (ref_id 294)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'usabilityInterfaceSpecificationsFiles', '{usabilityInterfaceSpecificationsFiles}', 1, 16, NOW(), 1, 294);

-- Insert transformation rule for usabilityInterfaceSpecificationsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 294, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "usability_interface_specifications"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 294, NOW(), 1);

-- 5. communicationProtocolFiles (ref_id 295)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'communicationProtocolFiles', '{communicationProtocolFiles}', 1, 16, NOW(), 1, 295);

-- Insert transformation rule for communicationProtocolFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 295, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "communication_protocol"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 295, NOW(), 1);

-- 6. environmentalSpecificationsFiles (ref_id 296)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'environmentalSpecificationsFiles', '{environmentalSpecificationsFiles}', 1, 16, NOW(), 1, 296);

-- Insert transformation rule for environmentalSpecificationsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 296, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "environmental_specifications"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 296, NOW(), 1);

-- 7. safetyAndRegulationCheckFiles (ref_id 297) - Note: status = 0 (disabled)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'safetyAndRegulationCheckFiles', '{safetyAndRegulationCheckFiles}', 0, 16, NOW(), 1, 297);

-- Insert transformation rule for safetyAndRegulationCheckFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 297, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "safety_and_regulation_check"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 297, NOW(), 1);

-- 8. softwareRequirementsFiles (ref_id 298)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'softwareRequirementsFiles', '{softwareRequirementsFiles}', 1, 16, NOW(), 1, 298);

-- Insert transformation rule for softwareRequirementsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 298, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "software_requirements"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 298, NOW(), 1);

-- 9. labellingAndPackagingRequirementsFiles (ref_id 299)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'labellingAndPackagingRequirementsFiles', '{labellingAndPackagingRequirementsFiles}', 1, 16, NOW(), 1, 299);

-- Insert transformation rule for labellingAndPackagingRequirementsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 299, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "labelling_and_packaging_requirements"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 299, NOW(), 1);

-- 10. storageAndHandlingRequirementsFiles (ref_id 300)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'storageAndHandlingRequirementsFiles', '{storageAndHandlingRequirementsFiles}', 1, 16, NOW(), 1, 300);

-- Insert transformation rule for storageAndHandlingRequirementsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 300, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "storage_&_handling_requirements"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 300, NOW(), 1);

-- 11. manufacturingProcessFiles (ref_id 301)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'manufacturingProcessFiles', '{manufacturingProcessFiles}', 1, 16, NOW(), 1, 301);

-- Insert transformation rule for manufacturingProcessFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 301, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "manufacturing_process"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 301, NOW(), 1);

-- 12. installationRequirementsFiles (ref_id 302)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'installationRequirementsFiles', '{installationRequirementsFiles}', 1, 16, NOW(), 1, 302);

-- Insert transformation rule for installationRequirementsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 302, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "installation_requirements"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 302, NOW(), 1);

-- 13. servicingRequirementsFiles (ref_id 303)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'servicingRequirementsFiles', '{servicingRequirementsFiles}', 1, 16, NOW(), 1, 303);

-- Insert transformation rule for servicingRequirementsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 303, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "servicing_requirements"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 303, NOW(), 1);

-- 14. riskControlMeasuresFiles (ref_id 304)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'riskControlMeasuresFiles', '{riskControlMeasuresFiles}', 1, 16, NOW(), 1, 304);

-- Insert transformation rule for riskControlMeasuresFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 304, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "risk_control_measures"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 304, NOW(), 1);

-- 15. adverseEventsDesignInputFiles (ref_id 305)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'adverseEventsDesignInputFiles', '{adverseEventsDesignInputFiles}', 1, 16, NOW(), 1, 305);

-- Insert transformation rule for adverseEventsDesignInputFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 305, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "adverse_events_design_input"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 305, NOW(), 1);

-- 16. referencesFromPreviousDesignFiles (ref_id 306)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'referencesFromPreviousDesignFiles', '{referencesFromPreviousDesignFiles}', 1, 16, NOW(), 1, 306);

-- Insert transformation rule for referencesFromPreviousDesignFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 306, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "references_from_the_previous_design"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 306, NOW(), 1);

-- 17. trainingRequirementsForCustomersFiles (ref_id 307)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'trainingRequirementsForCustomersFiles', '{trainingRequirementsForCustomersFiles}', 1, 16, NOW(), 1, 307);

-- Insert transformation rule for trainingRequirementsForCustomersFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 307, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "training_requirements_for_customers"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 307, NOW(), 1);

-- 18. lifetimeOfTheDeviceFiles (ref_id 308)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'lifetimeOfTheDeviceFiles', '{lifetimeOfTheDeviceFiles}', 1, 16, NOW(), 1, 308);

-- Insert transformation rule for lifetimeOfTheDeviceFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 308, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "lifetime_of_the_device"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 308, NOW(), 1);

-- 19. sterilizationRequirementsFiles (ref_id 309)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'sterilizationRequirementsFiles', '{sterilizationRequirementsFiles}', 1, 16, NOW(), 1, 309);

-- Insert transformation rule for sterilizationRequirementsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 309, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "sterilization_requirements"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 309, NOW(), 1);

-- 20. reliabilityRequirementsFiles (ref_id 310)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'reliabilityRequirementsFiles', '{reliabilityRequirementsFiles}', 1, 16, NOW(), 1, 310);

-- Insert transformation rule for reliabilityRequirementsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 310, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "reliability_requirements"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 310, NOW(), 1);

-- 21. toxicityAndBiocompatibilityFiles (ref_id 311)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'toxicityAndBiocompatibilityFiles', '{toxicityAndBiocompatibilityFiles}', 1, 16, NOW(), 1, 311);

-- Insert transformation rule for toxicityAndBiocompatibilityFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 311, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "toxicity_&_biocompatability"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 311, NOW(), 1);

-- 22. accessoriesAndConsumablesFiles (ref_id 312)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'accessoriesAndConsumablesFiles', '{accessoriesAndConsumablesFiles}', 1, 16, NOW(), 1, 312);

-- Insert transformation rule for accessoriesAndConsumablesFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 312, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "accessories_&_consumables"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 312, NOW(), 1);

-- 23. otherDeviceCompatibilityFiles (ref_id 313)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'otherDeviceCompatibilityFiles', '{otherDeviceCompatibilityFiles}', 1, 16, NOW(), 1, 313);

-- Insert transformation rule for otherDeviceCompatibilityFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 313, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "other_device_compatibility"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 313, NOW(), 1);

-- 24. otherRequirementsFiles (ref_id 314)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'otherRequirementsFiles', '{otherRequirementsFiles}', 1, 16, NOW(), 1, 314);

-- Insert transformation rule for otherRequirementsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 314, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "other_requirements"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 314, NOW(), 1);

-- 25. regulationsFiles (ref_id 315)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'regulationsFiles', '{regulationsFiles}', 1, 16, NOW(), 1, 315);

-- Insert transformation rule for regulationsFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 315, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "regulations"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 315, NOW(), 1);

-- 26. safetyFiles (ref_id 316)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'safetyFiles', '{safetyFiles}', 1, 16, NOW(), 1, 316);

-- Insert transformation rule for safetyFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 316, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "safety"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 316, NOW(), 1);

-- 27. statutoryFiles (ref_id 317)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'statutoryFiles', '{statutoryFiles}', 1, 16, NOW(), 1, 317);

-- Insert transformation rule for statutoryFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 317, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "statutory"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 317, NOW(), 1);

-- 28. shelfLifeFiles (ref_id 318)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'shelfLifeFiles', '{shelfLifeFiles}', 1, 16, NOW(), 1, 318);

-- Insert transformation rule for shelfLifeFiles (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 318, 8, 1, '{"eqms_project_applicable_specification": {"eqms_design_specification_type_lk": {"slug": "shelf_life"}}}', 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 318, NOW(), 1);


END $$;