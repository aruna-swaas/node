-- Rollback: Delete seed data from file 009_NOMENCLATURE.sql
-- Original file: 009_NOMENCLATURE.sql
-- Seed data file: 006_seed_data.sql
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

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 85 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 72 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 71 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 70 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND fk_eqms_entity_nomenclature_mapping_id = 85 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'sales.eqms_quotation' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND fk_eqms_entity_nomenclature_mapping_id = 72 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'sales.eqms_customer_feedback' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND fk_eqms_entity_nomenclature_mapping_id = 71 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'sales.eqms_quotation' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND fk_eqms_entity_nomenclature_mapping_id = 70 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'sales.eqms_order_acknowledgement' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND fk_eqms_nomenclature_name_part_id = 306 AND related_table = 'sales.eqms_quotation' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND fk_eqms_nomenclature_name_part_id = 256 AND related_table = 'sales.eqms_customer_feedback' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND fk_eqms_nomenclature_name_part_id = 253 AND related_table = 'sales.eqms_quotation' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND fk_eqms_nomenclature_name_part_id = 249 AND related_table = 'sales.eqms_order_acknowledgement' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 308 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 259 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 255 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 251 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 308 AND fk_eqms_entity_template_id = 85 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 307 AND fk_eqms_entity_template_id = 85 AND part_value = 'sls-f-01-quotation-format' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 306 AND fk_eqms_entity_template_id = 85 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 305 AND fk_eqms_entity_template_id = 85 AND part_value = 'SALES' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 259 AND fk_eqms_entity_template_id = 72 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 258 AND fk_eqms_entity_template_id = 72 AND part_value = 'slsf06_customer_feedback_form' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 257 AND fk_eqms_entity_template_id = 72 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 256 AND fk_eqms_entity_template_id = 72 AND part_value = 'SALES' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 255 AND fk_eqms_entity_template_id = 71 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 254 AND fk_eqms_entity_template_id = 71 AND part_value = 'slsf04-delivery-instruction' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 253 AND fk_eqms_entity_template_id = 71 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 252 AND fk_eqms_entity_template_id = 71 AND part_value = 'SALES' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 251 AND fk_eqms_entity_template_id = 70 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 250 AND fk_eqms_entity_template_id = 70 AND part_value = 'slsf03-order-acknowledgement' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 249 AND fk_eqms_entity_template_id = 70 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 248 AND fk_eqms_entity_template_id = 70 AND part_value = 'SALES' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 85 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 72 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 71 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 70 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'SLS-F-01 Quotation Format' AND entity_version = 1 AND slug = 'sls-f-01-quotation-format' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'SLS-F-06 Customer Feedback Form' AND entity_version = 1 AND slug = 'slsf06_customer_feedback_form' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'SLS-F-04 Delivery Instruction' AND entity_version = 1 AND slug = 'slsf04_delivery_instruction' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'SLS-F-03 Order Acknowledgement' AND entity_version = 1 AND slug = 'slsf03_order_acknowledgement' AND is_annexure = 'false' AND status = 1;

END $$;
