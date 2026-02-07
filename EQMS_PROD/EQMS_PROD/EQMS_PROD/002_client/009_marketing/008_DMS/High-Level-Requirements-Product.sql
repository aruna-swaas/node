DO $$
DECLARE
  VAR_TENANT_KEY           INT     := ${TENANTKEY};
  VAR_ORG_ID               INT     := ${ORGID};
  VAR_BUCKET_NAME          TEXT    := '${BUCKETNAME}';
BEGIN

    -- Inserting Document Template Type Lookup
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'hld', 1, NOW (), 1, 13);
 
    ---eqms_document_template
    INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 13, 'High-Level-Requirements - Product', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Marketing/High Level Requirements - Product.docx'), 1.0, 1, 'DND_HLD_DOCUMENT_GENERATION', 2, NOW(), 1, 2);

    -- =============================================
    -- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 2, 'DND_HLD_DOCUMENT_GENERATION', 1, NOW(), 1);

    -- Inserting Document Template Form Mapping
    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 2, 3, 1, NOW (), 1);

    ---eqms_document_template_history
    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_document_template_type_lk_id,fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (2, VAR_TENANT_KEY, 13, VAR_ORG_ID, 'High-Level-Requirements - Product', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Marketing/High Level Requirements - Product.docx'), 1.0, 1, 'DND_HLD_DOCUMENT_GENERATION', NOW(), NOW(), 1);

    ---Generic name
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'generic_name', 1, 2, '{generic_name}', NOW(), 1, 3);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 3, 'eqms_organization_product', 'product_generic_name', null, 1, null, NOW(), 1);

    ---Intended Use
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'intended_use', 1, 2, '{intended_use}', NOW(), 1, 4);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 4, 'eqms_organization_product', 'product_intended_use', null, 1, null, NOW(), 1);

    ---product application
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'product_application', 1, 2, '{product_application}', NOW(), 1, 5);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 5, 'eqms_high_level_design_info', 'product_application', null, 1, null, NOW(), 1);

    ---market scenario
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'market_scenario', 1, 2, '{market_scenario}', NOW(), 1, 6);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 6, 'eqms_high_level_design_info', 'market_scenario', null, 1, null, NOW(), 1);

    ---Competitive products
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'competitive_products', 1, 2, '{competitive_products}', NOW(), 1, 7);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 7, 'eqms_high_level_design_info', 'competitive_products', null, 1, 'HTML', NOW(), 1);

    ---Government type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'government_type', 1, 2, '{government_type}', NOW(), 1, 8);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 8, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);

    ---Government Usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'government_usage', 1, 2, '{government_usage}', NOW(), 1, 9);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 9, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    ---Corporate type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'corporate_type', 1, 2, '{corporate_type}', NOW(), 1, 10);
    
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 10, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);

    ---Corporate Usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'corporate_usage', 1, 2, '{corporate_usage}', NOW(), 1, 11);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 11, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    ---High type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'high_type', 1, 2, '{high_type}', NOW(), 1, 12);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 12, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);

    --- High Usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'high_usage', 1, 2, '{high_usage}', NOW(), 1, 13);
    
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 13, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    --- Low type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'low_type', 1, 2, '{low_type}', NOW(), 1, 14);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 14, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);

    --- Low Usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'low_usage', 1, 2, '{low_usage}', NOW(), 1, 15);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 15, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    --- Nursing Type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'nursing_type', 1, 2, '{nursing_type}', NOW(), 1, 16);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 16, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);

    --- Nursing Usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'nursing_usage', 1, 2, '{nursing_usage}', NOW(), 1, 17);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 17, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    --- Clinics Type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'clinics_type', 1, 2, '{clinics_type}', NOW(), 1, 18);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 18, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);
    
    --- Clinics Usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'clinics_usage', 1, 2, '{clinics_usage}', NOW(), 1, 19);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 19, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    --- Freelance type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'freelance_type', 1, 2, '{freelance_type}', NOW(), 1, 20);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 20, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);

    --- Freelance Usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'freelance_usage', 1, 2, '{freelance_usage}', NOW(), 1, 21);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 21, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    ---Diagnostic Type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'diagnostic_type', 1, 2, '{diagnostic_type}', NOW(), 1, 22);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 22, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);

    ---Diagnostic Usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'diagnostic_usage', 1, 2, '{diagnostic_usage}', NOW(), 1, 23);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 23, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    --- Pharma Type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'pharma_type', 1, 2, '{pharma_type}', NOW(), 1, 24);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 24, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);

    --- Pharma Usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'pharma_usage', 1, 2, '{pharma_usage}', NOW(), 1, 25);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 25, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    --- Home care Type
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'home_care_type', 1, 2, '{home_care_type}', NOW(), 1, 26);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 26, 'eqms_high_level_design_market_segment', 'is_applicable', 1, null, NOW(), 1);

    --- Home care usage
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'home_care_usage', 1, 2, '{home_care_usage}', NOW(), 1, 27);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 27, 'eqms_high_level_design_market_segment', 'segment_share', 1, null, NOW(), 1);

    --- Market Size
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'market_size', 1, 2, '{market_size}', NOW(), 1, 28);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 28, 'eqms_high_level_design_info', 'market_size', 1, null, NOW(), 1);

    --- Landscape
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'landscape', 1, 2, '{landscape}', NOW(), 1, 29);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 29, 'eqms_high_level_design_comp_landscape', 'market_segment', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 29, 'eqms_high_level_design_comp_landscape', 'major_competitor', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 29, 'eqms_high_level_design_comp_landscape', 'segment_share', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 29, 'eqms_high_level_design_comp_landscape', 'price_range', 1, null, NOW(), 1);

    --- Requirements
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'requirements', 1, 2, '{requirements}', NOW(), 1, 30);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 30, 'eqms_high_level_design_requirements', 'must_have', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 30, 'eqms_high_level_design_requirements', 'nice_to_have', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 30, 'eqms_high_level_design_requirements', 'wont_have', 1, null, NOW(), 1);

    --- Geography
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'geography', 1, 2, '{geography}', NOW(), 1, 31);
    
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 31, 'eqms_high_level_design_conversion_rate', 'target_geography', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 31, 'eqms_high_level_design_conversion_rate', 'target_segment', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 31, 'eqms_high_level_design_conversion_rate', 'conversion_1', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 31, 'eqms_high_level_design_conversion_rate', 'conversion_2', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 31, 'eqms_high_level_design_conversion_rate', 'conversion_3', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 31, 'eqms_high_level_design_conversion_rate', 'target_customer_segment', 1, null, NOW(), 1);

    --- Target Geography
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'target_geography', 1, 2, '{target_geography}', NOW(), 1, 32);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 32, 'eqms_high_level_design_info', 'target_geography', 1, null, NOW(), 1);

    --- Target Segment
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'target_segment', 1, 2, '{target_segment}', NOW(), 1, 33);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 33, 'eqms_high_level_design_info', 'target_segment', 1, null, NOW(), 1);

    --- Target Audience
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'target_audience', 1, 2, '{target_audience}', NOW(), 1, 34);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 34, 'eqms_high_level_design_info', 'target_audience', 1, null, NOW(), 1);

    --- Initial Success Factors
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'initial_success_factors', 1, 2, '{initial_success_factors}', NOW(), 1, 35);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 35, 'eqms_high_level_design_info', 'initial_success_factors', 1, null, NOW(), 1);

    --- Growth Sustaining Factors
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'growth_sustaining_factors', 1, 2, '{growth_sustaining_factors}', NOW(), 1, 36);
    
    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 36, 'eqms_high_level_design_info', 'growth_sustaining_factors', 1, null, NOW(), 1);

    --- Strategic marketing Requirements
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'strategic_marketing_requirements', 1, 2, '{strategic_marketing_requirements}', NOW(), 1, 37);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 37, 'eqms_high_level_design_info', 'strategic_marketing_requirements', 1, null, NOW(), 1);

    --- Demand Generation Plan
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'demand_generation_plan', 1, 2, '{demand_generation_plan}', NOW(), 1, 38);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 38, 'eqms_high_level_design_info', 'demand_generation_plan', 1, null, NOW(), 1);

    --- Potential business risks
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'potential_business_risks', 1, 2, '{potential_business_risks}', NOW(), 1, 39);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 39, 'eqms_high_level_design_info', 'potential_business_risks', 1, null, NOW(), 1);

    --- Mapper Variable
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, 2, '{mapperVariable}', NOW(), 1, 40);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 40, 'eqms_project', 'project_reason', '{"id": "@project_id"}', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 40, 'eqms_high_level_design', 'high_level_design_document_title', null, 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 40, 'eqms_high_level_design', 'fk_eqms_project_id', null, 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 40, 'eqms_high_level_design_market_segment', 'fk_eqms_market_segment_lk_id', null, 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 40, 'eqms_market_segment_lk', 'market_segment', null, 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 40, 'eqms_market_segment_lk', 'id', null, 1, null, NOW(), 1);

    --- Demography
    INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'demography', 1, 2, '{demography}', NOW(), 1, 41);

    INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 41, 'eqms_market_demography_category_lk', 'market_demography_category', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 41, 'eqms_market_demography_sub_category_lk', 'market_demography_sub_category', 1, null, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 41, 'eqms_high_level_design_market_demography', 'is_applicable', 1, 'boolean', NOW(), 1);

    ---eqms_document_template_variable_transformation_rules - text operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 3, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 4, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 5, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 6, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 7, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 28, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 32, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 33, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 34, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 35, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 36, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 37, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 38, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 39, 10, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 40, 10, 1, 1, NOW(), 1);

    ---eqms_document_template_variable_transformation_rules - grid operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 29, 7, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 30, 7, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 31, 7, 1, 1, NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 41, 7, 1, 1, NOW(), 1);

    ---eqms_document_template_variable_transformation_rules - foreign map operations
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 8, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 1}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 9, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 1}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 10, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 2}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 11, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 2}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 12, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 3}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 13, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 3}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 14, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 4}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 15, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 4}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 16, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 5}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 17, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 5}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 18, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 6}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 19, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 6}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 20, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 7}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 21, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 7}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 22, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 8}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 23, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 8}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 24, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 9}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 25, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 9}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 26, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 10}', NOW(), 1);
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 27, 9, 1, 1, '{"fk_eqms_market_segment_lk_id": 10}', NOW(), 1);
END $$;