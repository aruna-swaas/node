-- Rollback: Delete seed data from file 009_NOMENCLATURE.sql
-- Original file: 009_NOMENCLATURE.sql
-- Seed data file: 007_seed_data.sql
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
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 86 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 69 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 68 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND fk_eqms_entity_nomenclature_mapping_id = 86 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'vendor.eqms_vendor_agreement_checklist' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND fk_eqms_entity_nomenclature_mapping_id = 69 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'vendor.eqms_part_category' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND fk_eqms_entity_nomenclature_mapping_id = 68 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'vendor.eqms_vendors' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND fk_eqms_nomenclature_name_part_id = 310 AND related_table = 'vendor.eqms_vendor_agreement_checklist' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND fk_eqms_nomenclature_name_part_id = 245 AND related_table = 'vendor.eqms_part_category' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND fk_eqms_nomenclature_name_part_id = 241 AND related_table = 'vendor.eqms_vendors' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 312 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 247 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 243 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 312 AND fk_eqms_entity_template_id = 86 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 311 AND fk_eqms_entity_template_id = 86 AND part_value = 'pur-f-04-vendor-agreement-check-list' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 310 AND fk_eqms_entity_template_id = 86 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 309 AND fk_eqms_entity_template_id = 86 AND part_value = 'VENDOR' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 247 AND fk_eqms_entity_template_id = 69 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 246 AND fk_eqms_entity_template_id = 69 AND part_value = 'pur-f-01-vendor-selection-criteria-parts' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 245 AND fk_eqms_entity_template_id = 69 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 244 AND fk_eqms_entity_template_id = 69 AND part_value = 'VENDOR' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 243 AND fk_eqms_entity_template_id = 68 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 242 AND fk_eqms_entity_template_id = 68 AND part_value = 'outsourced-vendor-agreement-template' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 241 AND fk_eqms_entity_template_id = 68 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 240 AND fk_eqms_entity_template_id = 68 AND part_value = 'VENDOR' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 86 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 69 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 68 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'PUR-F-04 Vendor Agreement Check List' AND entity_version = 1 AND slug = 'pur-f-04-vendor-agreement-check-list' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'PUR-F-01 Vendor Selection Criteria - Parts' AND entity_version = 1 AND slug = 'purf01_vendor_selection_criteria__parts' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'Outsourced Vendor Agreement- template' AND entity_version = 1 AND slug = 'outsourced_vendor_agreement_template' AND is_annexure = 'false' AND status = 1;

END $$;
