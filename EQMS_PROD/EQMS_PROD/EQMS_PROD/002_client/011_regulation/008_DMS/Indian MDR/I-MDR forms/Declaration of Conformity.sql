DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
--Regulatory Conformity Document - Dev Database

-- Insert document template type lookup first
INSERT INTO dms.eqms_document_template_type_lk (ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by) VALUES 
(40, VAR_TENANT_KEY, VAR_ORG_ID, 'conformity', 1, NOW(), 1);

-- Insert document template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 40, 'Declaration of Conformity', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Regulations/Indian MDR/I-MDR forms/Declaration of Conformity.docx'), 1.0, 1, 2, NOW(), 1, 39);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 39, 'REGULATION_CONFORMITY_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (39, VAR_TENANT_KEY, VAR_ORG_ID, 40, 'Declaration of Conformity', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Regulations/Indian MDR/I-MDR forms/Declaration of Conformity.docx'), 1.0, 1, NOW(), NOW(), 1);

INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 39, 76, 1, NOW (), 1);

-- Text Variables (ref_ids 735-756)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'manufacturerName', 39, '{manufacturerName}', 1, 1, NOW(), 735),
(VAR_TENANT_KEY, VAR_ORG_ID, 'manufacturerTradeName', 39, '{manufacturerTradeName}', 1, 1, NOW(), 736),
(VAR_TENANT_KEY, VAR_ORG_ID, 'manufacturerContactDetails', 39, '{manufacturerContactDetails}', 1, 1, NOW(), 737),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productGenericName', 39, '{productGenericName}', 1, 1, NOW(), 738),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productBrandName', 39, '{productBrandName}', 1, 1, NOW(), 739),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productModelNumber', 39, '{productModelNumber}', 1, 1, NOW(), 740),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productCode', 39, '{productCode}', 1, 1, NOW(), 741),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productCatalogueNumber', 39, '{productCatalogueNumber}', 1, 1, NOW(), 742),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productIntendedUse', 39, '{productIntendedUse}', 1, 1, NOW(), 743),
(VAR_TENANT_KEY, VAR_ORG_ID, 'regulationConformity', 39, '{regulationConformity}', 1, 1, NOW(), 744),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productClassification', 39, '{productClassification}', 1, 1, NOW(), 745),
(VAR_TENANT_KEY, VAR_ORG_ID, 'conformityAssessmentRoute', 39, '{conformityAssessmentRoute}', 1, 1, NOW(), 746),
(VAR_TENANT_KEY, VAR_ORG_ID, 'generalApplicableDirectives', 39, '{generalApplicableDirectives}', 1, 1, NOW(), 747),
(VAR_TENANT_KEY, VAR_ORG_ID, 'appliedStandard', 39, '{appliedStandard}', 1, 1, NOW(), 748),
(VAR_TENANT_KEY, VAR_ORG_ID, 'applicableCommonSpecification', 39, '{applicableCommonSpecification}', 1, 1, NOW(), 749),
(VAR_TENANT_KEY, VAR_ORG_ID, 'notifiedBodyName', 39, '{notifiedBodyName}', 1, 1, NOW(), 750),
(VAR_TENANT_KEY, VAR_ORG_ID, 'notifiedBodyNumber', 39, '{notifiedBodyNumber}', 1, 1, NOW(), 751),
(VAR_TENANT_KEY, VAR_ORG_ID, 'competentAutority', 39, '{competentAutority}', 1, 1, NOW(), 752),
(VAR_TENANT_KEY, VAR_ORG_ID, 'authorisedRepresentative', 39, '{authorisedRepresentative}', 1, 1, NOW(), 753),
(VAR_TENANT_KEY, VAR_ORG_ID, 'conformityDeclarationDate', 39, '{conformityDeclarationDate}', 1, 1, NOW(), 754),
(VAR_TENANT_KEY, VAR_ORG_ID, 'place', 39, '{place}', 1, 1, NOW(), 755),
(VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 39, '{mapperVariable}', 1, 1, NOW(), 756);

-- Transformation Rules for Text Variables (operation_id = 10)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 735, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 736, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 737, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 738, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 739, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 740, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 741, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 742, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 743, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 744, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 745, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 746, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 747, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 748, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 749, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 750, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 751, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 752, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 753, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 754, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 755, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 756, 10, 1, 1, NOW(), 1);

-- Mapper Data for Text Variables
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date) VALUES 
-- Manufacturer Name
(VAR_TENANT_KEY, VAR_ORG_ID, 735, 'eqms_organization', 'organization_name', NULL, 1, 1, NOW()),
-- Manufacturer Trade Name
(VAR_TENANT_KEY, VAR_ORG_ID, 736, 'eqms_reg_conformity_declaration', 'manufacture_trade_name', NULL, 1, 1, NOW()),
-- Manufacturer Contact Details
(VAR_TENANT_KEY, VAR_ORG_ID, 737, 'eqms_reg_conformity_declaration', 'manufacture_contact_details', NULL, 1, 1, NOW()),
-- Product Generic Name
(VAR_TENANT_KEY, VAR_ORG_ID, 738, 'eqms_organization_product', 'product_generic_name', NULL, 1, 1, NOW()),
-- Product Brand Name
(VAR_TENANT_KEY, VAR_ORG_ID, 739, 'eqms_reg_conformity_declaration', 'product_brand_name', NULL, 1, 1, NOW()),
-- Product Model Number
(VAR_TENANT_KEY, VAR_ORG_ID, 740, 'eqms_product_variants', 'model_number', NULL, 1, 1, NOW()),
-- Product Code
(VAR_TENANT_KEY, VAR_ORG_ID, 741, 'eqms_reg_conformity_declaration', 'product_code', NULL, 1, 1, NOW()),
-- Product Catalogue Number
(VAR_TENANT_KEY, VAR_ORG_ID, 742, 'eqms_reg_conformity_declaration', 'product_catalogue_number', NULL, 1, 1, NOW()),
-- Product Intended Use
(VAR_TENANT_KEY, VAR_ORG_ID, 743, 'eqms_project_design_input_gathering', 'intended_use', NULL, 1, 1, NOW()),
-- Regulation Conformity
(VAR_TENANT_KEY, VAR_ORG_ID, 744, 'eqms_reg_conformity_declaration', 'regulation_conformity', NULL, 1, 1, NOW()),
-- Product Classification
(VAR_TENANT_KEY, VAR_ORG_ID, 745, 'eqms_reg_product_classification', 'classification', NULL, 1, 1, NOW()),
-- Conformity Assessment Route
(VAR_TENANT_KEY, VAR_ORG_ID, 746, 'eqms_reg_conformity_declaration', 'conformilty_assessment_route', NULL, 1, 1, NOW()),
-- General Applicable Directives
(VAR_TENANT_KEY, VAR_ORG_ID, 747, 'eqms_reg_conformity_declaration', 'general_applicable_directives', NULL, 1, 1, NOW()),
-- Applied Standard
(VAR_TENANT_KEY, VAR_ORG_ID, 748, 'eqms_reg_conformity_declaration', 'applied_standards', NULL, 1, 1, NOW()),
-- Applicable Common Specification
(VAR_TENANT_KEY, VAR_ORG_ID, 749, 'eqms_reg_conformity_declaration', 'applicable_common_specification', NULL, 1, 1, NOW()),
-- Notified Body Name
(VAR_TENANT_KEY, VAR_ORG_ID, 750, 'eqms_reg_conformity_declaration', 'notified_body_name', NULL, 1, 1, NOW()),
-- Notified Body Number
(VAR_TENANT_KEY, VAR_ORG_ID, 751, 'eqms_reg_conformity_declaration', 'notified_body_number', NULL, 1, 1, NOW()),
-- Competent Authority
(VAR_TENANT_KEY, VAR_ORG_ID, 752, 'eqms_reg_conformity_declaration', 'competent_authority', NULL, 1, 1, NOW()),
-- Authorised Representative
(VAR_TENANT_KEY, VAR_ORG_ID, 753, 'eqms_reg_conformity_declaration', 'authorized_representative', NULL, 1, 1, NOW()),
-- Conformity Declaration Date
(VAR_TENANT_KEY, VAR_ORG_ID, 754, 'eqms_reg_conformity_declaration', 'conformity_declaration_date', NULL, 1, 1, NOW()),
-- Place
(VAR_TENANT_KEY, VAR_ORG_ID, 755, 'eqms_reg_conformity_declaration', 'place', NULL, 1, 1, NOW()),
-- Mapper Variable - Organization Product ID
(VAR_TENANT_KEY, VAR_ORG_ID, 756, 'eqms_organization_product', 'id', NULL, 1, 1, NOW()),
-- Mapper Variable - Organization ID
(VAR_TENANT_KEY, VAR_ORG_ID, 756, 'eqms_organization', 'id', NULL, 1, 1, NOW()),
-- Mapper Variable - Project Design Input Gathering ID
(VAR_TENANT_KEY, VAR_ORG_ID, 756, 'eqms_project_design_input_gathering', 'id', NULL, 1, 1, NOW()),
-- Mapper Variable - Product Variants ID
(VAR_TENANT_KEY, VAR_ORG_ID, 756, 'eqms_product_variants', 'id', NULL, 1, 1, NOW()),
-- Mapper Variable - Conformity Declaration ID
(VAR_TENANT_KEY, VAR_ORG_ID, 756, 'eqms_reg_conformity_declaration', 'id', NULL, 1, 1, NOW()),
-- Mapper Variable - Product Classification ID
(VAR_TENANT_KEY, VAR_ORG_ID, 756, 'eqms_reg_product_classification', 'id', NULL, 1, 1, NOW());

-- Mapper Variable with Form Condition
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date, form_condition) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 756, 'eqms_project', 'id', NULL, 1, 1, NOW(), '{"id" : "@project_id"}');

END $$;
