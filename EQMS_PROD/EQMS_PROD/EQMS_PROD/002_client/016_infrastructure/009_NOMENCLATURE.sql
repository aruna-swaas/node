DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID INT := ${ORGID};
BEGIN

-- Entity Template
INSERT INTO organization.eqms_entity_template (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_category_id, entity_title, entity_version, slug, is_annexure, fk_parent_entity_id, fk_eqms_module_id, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 74, 1, 'INF-F-02 Maintenance Schedule', 1, 'inff02_maintenance_schedule', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 75, 1, 'INF-F-03 Infrastructure Qualification', 1, 'inff03_infrastructure_qualification', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 76, 1, 'INF-F-02 Installation Report', 1, 'inf-f-02-installation-report', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 77, 1, 'INF-F-01 infrastructure Request Form', 1, 'inff01_infra_request_form', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 78, 1, 'INF-F-04 Maintenance report', 1, 'inff04_maintenance_report', 'false', NULL, NULL, 1, NOW(), 1);

-- Delimiter
INSERT INTO organization.eqms_nomenclature_delimiter (
    eqms_tenant_key, fk_eqms_entity_template_id, fk_eqms_organization_id, delimiter, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, 74, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 75, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 76, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 77, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 78, VAR_ORG_ID, '-', 1, NOW(), 1);

-- Name Parts
INSERT INTO organization.eqms_nomenclature_name_parts (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_template_id, part_value, part_order, fk_eqms_sequence_def_id, fk_eqms_nomenclature_part_type_id, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 263, 74, 'infrastructure', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 264, 74, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 265, 74, 'inff02-maintenance-schedule', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 266, 74, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 267, 75, 'infrastructure', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 268, 75, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 269, 75, 'inff03-infrastructure-qualification', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 270, 75, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 271, 76, 'infrastructure', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 272, 76, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 273, 76, 'inff02-installation-report', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 274, 76, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 275, 77, 'infrastructure', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 276, 77, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 277, 77, 'inff01-infrastructure-request-form', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 278, 77, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 279, 78, 'infrastructure', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 280, 78, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 281, 78, 'inff04-maintenance-report', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 282, 78, NULL, 4, NULL, 1, 1, NOW(), 1);

-- Part Date Formats
INSERT INTO organization.eqms_nomenclature_part_date_formats (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_name_parts_id, date_time_format, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 266, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 270, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 274, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 278, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 282, 'ddLLyyyyHHmmss', 1, NOW(), 1);

-- Entity Nomenclature Mappings
INSERT INTO organization.eqms_entity_nomenclature_mappings (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_name_part_id, related_table, related_column, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 74, 264, 'infrastructure.eqms_maintenance_plan', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 75, 268, 'infrastructure.eqms_infrastructure_qualification', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 76, 272, 'infrastructure.eqms_infrastructure_installation_report', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 77, 276, 'infrastructure.eqms_infrastructure_request', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 78, 280, 'infrastructure.eqms_maintenance_report', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Joins
INSERT INTO organization.eqms_nomenclature_mapping_joins (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_nomenclature_mapping_id, join_order, fk_eqms_nomenclature_join_type_id, join_table, join_on_left, join_on_right, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 74, 74, 1, 1, 'infrastructure.eqms_maintenance_plan', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 75, 75, 1, 1, 'infrastructure.eqms_infrastructure_qualification', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 76, 76, 1, 1, 'infrastructure.eqms_infrastructure_installation_report', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 77, 77, 1, 1, 'infrastructure.eqms_infrastructure_request', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 78, 78, 1, 1, 'infrastructure.eqms_maintenance_report', 'id', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Conditions
INSERT INTO organization.eqms_nomenclature_mapping_conditions (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_nomenclature_mapping_id, fk_eqms_mapping_join_id, condition_order, condition_expression, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 74, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 75, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 76, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 77, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 78, NULL, 1, '@id', 1, NOW(), 1);

END $$;
