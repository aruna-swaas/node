DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN

    -- =============================================
    -- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'design_validation_plan', 1, NOW(), 1, 23);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, fk_eqms_document_template_type_lk_id, s3_bucket_name, s3_object_key, template_version, status, container_id, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'F-21 Design Validation Plan', '.docx', 23, VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-21 Design Validation Plan.docx'), 1.0, 1, 'DND_DESIGN_VALIDATION_PLAN_DOCUMENT_GENERATION', 2, NOW(), 1, 22);

    -- =============================================
    -- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 22, 'DND_DESIGN_VALIDATION_PLAN_DOCUMENT_GENERATION', 1, NOW(), 1);

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_FORM_MAPPING INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by)
    VALUES 
        (VAR_TENANT_KEY, VAR_ORG_ID, 22, 35, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 22, 110, 1, NOW(), 1);

    -- =============================================
    -- 4. EQMS_DOCUMENT_TEMPLATE_HISTORY INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, valid_from_date, created_date, created_by) VALUES (22, 23, VAR_TENANT_KEY, VAR_ORG_ID, 'F-21 Design Validation Plan', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-21 Design Validation Plan.docx'), 1.0, 1, 'DND_DESIGN_VALIDATION_PLAN_DOCUMENT_GENERATION', NOW(), NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    -- design
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'design', 1, 22, '{design}', NOW(), 1, 331);

    -- validationPlanDetails
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'validationPlanDetails', 1, 22, '{validationPlanDetails}', NOW(), 1, 332);

    -- purposeOfValidation
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'purposeOfValidation', 1, 22, '{purposeOfValidation}', NOW(), 1, 333);

    -- noOfUnitsToBeValidated
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'noOfUnitsToBeValidated', 1, 22, '{noOfUnitsToBeValidated}', NOW(), 1, 334);

    -- placeOfValidation
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'placeOfValidation', 1, 22, '{placeOfValidation}', NOW(), 1, 335);

    -- periodOfUsage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'periodOfUsage', 1, 22, '{periodOfUsage}', NOW(), 1, 336);

    -- unitConfiguration
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'unitConfiguration', 1, 22, '{unitConfiguration}', NOW(), 1, 337);

    -- functionsInvolved
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'functionsInvolved', 1, 22, '{functionsInvolved}', NOW(), 1, 338);

    -- supportDocuments
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'supportDocuments', 1, 22, '{supportDocuments}', NOW(), 1, 339);

    -- basicModel
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'basicModel', 1, 22, '{basicModel}', NOW(), 1, 340);

    -- mapperVariable
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, 22, '{mapperVariable}', NOW(), 1, 341);

    -- =============================================
    -- 6. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    -- design mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 331, 'eqms_project', 'project_reason', 1, NOW(), 1);

    -- validationPlanDetails mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 332, 'eqms_pilot_validation_plan', 'validation_plan_details', 1, 'HTML', NOW(), 1);

    -- purposeOfValidation mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 333, 'eqms_pilot_validation_plan', 'purpose_of_validation', 1, 'HTML', NOW(), 1);

    -- noOfUnitsToBeValidated mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 334, 'eqms_pilot_validation_plan', 'units_to_be_validated', 1, NOW(), 1);

    -- placeOfValidation mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 335, 'eqms_pilot_validation_place', 'validation_place', 1, NOW(), 1);

    -- periodOfUsage mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 336, 'eqms_pilot_validation_plan', 'period_of_usage', 1, NOW(), 1);

    -- unitConfiguration mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 337, 'eqms_pilot_validation_plan', 'unit_configuration', 1, NOW(), 1);

    -- functionsInvolved mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 338, 'eqms_pilot_validation_plan', 'function', 1, 'HTML', NOW(), 1);

    -- supportDocuments mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 339, 'eqms_file', 'file_name', 1, NOW(), 1);

    -- basicModel mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 340, 'eqms_product_variants', 'model_name', 1, NOW(), 1);

    -- mapperVariable mappers
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_project', 'id', '{"id": "@project_id"}', 1, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_pilot_validation_plan_supporting_documents', 'id', 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_execution_stage', 'id', 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_file', 'id', 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_pilot_validation_plan', 'id', 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_pilot_validation_place', 'id', 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_project_build_stages', 'id', 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_project_build_stage_order', 'id', 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_project_product_variants', 'id', 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 341, 'eqms_product_variants', 'id', 1, NOW(), 1);

    -- =============================================
    -- 7. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 331, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 332, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 333, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 334, 10, 1, 1, NOW(), 1);

    -- Grid operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 335, 7, 1, 1, NOW(), 1);

    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 336, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 337, 10, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 338, 10, 1, 1, NOW(), 1);

    -- Grid operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 339, 7, 1, 1, NOW(), 1);

    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 340, 7, 1, 1, NOW(), 1);

    -- Text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 341, 10, 1, 1, NOW(), 1);

---
END $$;