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
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 78 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 77 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 76 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 75 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 74 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND fk_eqms_entity_nomenclature_mapping_id = 78 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'infrastructure.eqms_maintenance_report' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND fk_eqms_entity_nomenclature_mapping_id = 77 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'infrastructure.eqms_infrastructure_request' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND fk_eqms_entity_nomenclature_mapping_id = 76 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'infrastructure.eqms_infrastructure_installation_report' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND fk_eqms_entity_nomenclature_mapping_id = 75 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'infrastructure.eqms_infrastructure_qualification' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND fk_eqms_entity_nomenclature_mapping_id = 74 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'infrastructure.eqms_maintenance_plan' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND fk_eqms_nomenclature_name_part_id = 280 AND related_table = 'infrastructure.eqms_maintenance_report' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND fk_eqms_nomenclature_name_part_id = 276 AND related_table = 'infrastructure.eqms_infrastructure_request' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND fk_eqms_nomenclature_name_part_id = 272 AND related_table = 'infrastructure.eqms_infrastructure_installation_report' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND fk_eqms_nomenclature_name_part_id = 268 AND related_table = 'infrastructure.eqms_infrastructure_qualification' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND fk_eqms_nomenclature_name_part_id = 264 AND related_table = 'infrastructure.eqms_maintenance_plan' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 282 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 278 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 274 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 270 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 266 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 282 AND fk_eqms_entity_template_id = 78 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 281 AND fk_eqms_entity_template_id = 78 AND part_value = 'inff04-maintenance-report' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 280 AND fk_eqms_entity_template_id = 78 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 279 AND fk_eqms_entity_template_id = 78 AND part_value = 'infrastructure' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 278 AND fk_eqms_entity_template_id = 77 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 277 AND fk_eqms_entity_template_id = 77 AND part_value = 'inff01-infrastructure-request-form' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 276 AND fk_eqms_entity_template_id = 77 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 275 AND fk_eqms_entity_template_id = 77 AND part_value = 'infrastructure' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 274 AND fk_eqms_entity_template_id = 76 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 273 AND fk_eqms_entity_template_id = 76 AND part_value = 'inff02-installation-report' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 272 AND fk_eqms_entity_template_id = 76 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 271 AND fk_eqms_entity_template_id = 76 AND part_value = 'infrastructure' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 270 AND fk_eqms_entity_template_id = 75 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 269 AND fk_eqms_entity_template_id = 75 AND part_value = 'inff03-infrastructure-qualification' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 268 AND fk_eqms_entity_template_id = 75 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 267 AND fk_eqms_entity_template_id = 75 AND part_value = 'infrastructure' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 266 AND fk_eqms_entity_template_id = 74 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 265 AND fk_eqms_entity_template_id = 74 AND part_value = 'inff02-maintenance-schedule' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 264 AND fk_eqms_entity_template_id = 74 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 263 AND fk_eqms_entity_template_id = 74 AND part_value = 'infrastructure' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 78 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 77 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 76 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 75 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 74 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'INF-F-04 Maintenance report' AND entity_version = 1 AND slug = 'inff04_maintenance_report' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'INF-F-01 infrastructure Request Form' AND entity_version = 1 AND slug = 'inff01_infra_request_form' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'INF-F-02 Installation Report' AND entity_version = 1 AND slug = 'inf-f-02-installation-report' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'INF-F-03 Infrastructure Qualification' AND entity_version = 1 AND slug = 'inff03_infrastructure_qualification' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'INF-F-02 Maintenance Schedule' AND entity_version = 1 AND slug = 'inff02_maintenance_schedule' AND is_annexure = 'false' AND status = 1;

END $$;
