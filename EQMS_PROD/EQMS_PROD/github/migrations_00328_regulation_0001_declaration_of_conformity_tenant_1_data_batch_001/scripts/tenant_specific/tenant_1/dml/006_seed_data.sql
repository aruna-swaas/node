DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
-- Entity Template
INSERT INTO organization.eqms_entity_template (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_category_id, entity_title, entity_version, slug, is_annexure, fk_parent_entity_id, fk_eqms_module_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 66, 1, 'PART 1 DEVICE MASTER FILE', 1, 'part_1_device_master_file', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 67, 1, 'Part 1 - PLANT MASTER FILE Format', 1, 'part_1__plant_master_file_format', 'false', NULL, NULL, 1, NOW(), 1);

-- Delimiter
INSERT INTO organization.eqms_nomenclature_delimiter (
  eqms_tenant_key, fk_eqms_entity_template_id, fk_eqms_organization_id, delimiter, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, 66, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 67, VAR_ORG_ID, '-', 1, NOW(), 1);

-- Name Parts
INSERT INTO organization.eqms_nomenclature_name_parts (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_template_id, part_value, part_order, fk_eqms_sequence_def_id, fk_eqms_nomenclature_part_type_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 232, 66, 'REG', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 233, 66, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 234, 66, 'part-1-device-master-file', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 235, 66, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 236, 67, 'REG', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 237, 67, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 238, 67, 'part-1-plant-master-file-format', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 239, 67, NULL, 4, NULL, 1, 1, NOW(), 1);

-- Part Date Formats
INSERT INTO organization.eqms_nomenclature_part_date_formats (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_name_parts_id, date_time_format, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 235, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 239, 'ddLLyyyyHHmmss', 1, NOW(), 1);

-- Entity Nomenclature Mappings
INSERT INTO organization.eqms_entity_nomenclature_mappings (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_name_part_id, related_table, related_column, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 66, 233, 'dnd.eqms_project', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 67, 237, 'organization.eqms_organization_site', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Joins
INSERT INTO organization.eqms_nomenclature_mapping_joins (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_nomenclature_mapping_id, join_order, fk_eqms_nomenclature_join_type_id, join_table, join_on_left, join_on_right, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 66, 66, 1, 1, 'dnd.eqms_project', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 67, 67, 1, 1, 'organization.eqms_organization_site', 'id', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Conditions
INSERT INTO organization.eqms_nomenclature_mapping_conditions (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_nomenclature_mapping_id, fk_eqms_mapping_join_id, condition_order, condition_expression, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 66, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 67, NULL, 1, '@id', 1, NOW(), 1);

END $$;

