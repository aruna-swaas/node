-- INTENDED USE
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    :=  '${BUCKETNAME}';
BEGIN
   
   -- Inserting Document Template Type Lookup
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'intended_use', 1, NOW (), 1, 19);
    
    -- Insert document template with hardcoded ref_id
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, template_version, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 19, 'Intended Use - Format', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/Design output templates/Intended Use - Format.docx'), 1, 2, NOW(), 1, 1.0, 18);
   
    -- =============================================
    -- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 18, 'DND_INTENDED_USE_DOCUMENT_GENERATION', 1, NOW(), 1);

    -- Insert template history
    INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, container_id, created_date, created_by, valid_from_date, fk_eqms_document_template_id, template_version) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 19, 'Intended Use - Format', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/Design output templates/Intended Use - Format.docx'), 1, 'DND_INTENDED_USE_DOCUMENT_GENERATION', NOW(), 1, NOW(), 18, 1.0);

    -- Inserting Document Template Form Mapping
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by)
    VALUES 
        (VAR_TENANT_KEY, VAR_ORG_ID, 18, 17, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 18, 106, 1, NOW(), 1);
   
    -- Insert first template variable (product_name) with ref_id 279
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'product_name', '{product_name}', 1, 18, NOW(), 1, 279);
   
    -- Insert transformation rule for product_name (text operation)
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 279, 10, 1, 1, NOW(), 1);
   
    -- Insert mapper variable for product_name (ref_id 279)
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_product', 'product_name', 1, 279, NOW(), 1);
   
    -- Insert second template variable (product_intended_use) with ref_id 280
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'product_intended_use', '{product_intended_use}', 1, 18, NOW(), 1, 280);
   
    -- Insert transformation rule for product_intended_use (text operation)
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 280, 10, 1, 1, NOW(), 1);
   
    -- Insert mapper variable for product_intended_use (ref_id 280)
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_product', 'product_intended_use', 1, 280, NOW(), 1);
   
    -- Insert third template variable (intended_users) with ref_id 281
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'intended_users', '{intended_users}', 1, 18, NOW(), 1, 281);
   
    -- Insert transformation rule for intended_users (text operation)
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 281, 10, 1, 1, NOW(), 1);
   
    -- Insert mapper variable for intended_users (ref_id 281)
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_input_gathering', 'intended_users', 1, 281, NOW(), 1);
   
    -- Insert fourth template variable (intended_population) with ref_id 282
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'intended_population', '{intended_population}', 1, 18, NOW(), 1, 282);
   
    -- Insert transformation rule for intended_population (text operation)
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 282, 10, 1, 1, NOW(), 1);
   
    -- Insert mapper variable for intended_population (ref_id 282)
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_input_gathering', 'intended_population', 1, 282, NOW(), 1);
   
    -- Insert fifth template variable (indications_of_use) with ref_id 283
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'indications_of_use', '{indications_of_use}', 1, 18, NOW(), 1, 283);
   
    -- Insert transformation rule for indications_of_use (text operation)
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 283, 10, 1, 1, NOW(), 1);
   
    -- Insert mapper variable for indications_of_use (ref_id 283)
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_input_gathering', 'indications_of_use', 1, 283, NOW(), 1);
   
    -- Insert sixth template variable (contraindications_of_use) with ref_id 284
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'contraindications_of_use', '{contraindications_of_use}', 1, 18, NOW(), 1, 284);
   
    -- Insert transformation rule for contraindications_of_use (text operation)
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 284, 10, 1, 1, NOW(), 1);
   
    -- Insert mapper variable for contraindications_of_use (ref_id 284)
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_input_gathering', 'contraindications_of_use', 1, 284, NOW(), 1);
   
    -- Insert seventh template variable (model_name) with ref_id 285
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'model_name', '{model_name}', 1, 18, NOW(), 1, 285);
   
    -- Insert transformation rule for model_name (grid operation)
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 285, 7, 1, 1, NOW(), 1);
   
    -- Insert mapper variable for model_name (ref_id 285)
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_product_variants', 'model_name', 1, 285, NOW(), 1);
   
    -- Insert ninth template variable (mapperVariable) with ref_id 286 for tables with only id columns
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', '{mapperVariable}', 1, 18, NOW(), 1, 286);
   
    -- Insert transformation rule for mapperVariable (text operation)
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 286, 10, 1, 1, NOW(), 1);
   
    -- Insert mapper variables for mapperVariable (ref_id 286) - mapping to different tables with id columns
    -- Keep only @project_id condition in mapper, move other conditions to transformation rules
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, form_condition) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project', 'id', 1, 286, NOW(), 1, '{"id":"@project_id"}');
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_dig_models', 'id', 1, 286, NOW(), 1);
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_product_variants', 'id', 1, 286, NOW(), 1);
   
END $$;