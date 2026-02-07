DO $$
DECLARE
    VAR_TENANT_KEY INT := 1;
    VAR_ORG_ID INT := 1;
BEGIN

-- Entity Template
INSERT INTO organization.eqms_entity_template (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_category_id, entity_title, entity_version, slug, is_annexure, fk_parent_entity_id, fk_eqms_module_id, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 81, 1, 'QAC-F-01 Goods Inwards', 1, 'qac-f-01-goods-inwards', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 82, 1, 'QAC-F-03 Incoming Inspection', 1, 'qacf03_incoming_inspection', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 83, 1, 'QAC-F-04 Deviation Note', 1, 'qacf04_deviation_note', 'false', NULL, NULL, 1, NOW(), 1);

-- Delimiter
INSERT INTO organization.eqms_nomenclature_delimiter (
    eqms_tenant_key, fk_eqms_entity_template_id, fk_eqms_organization_id, delimiter, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, 81, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 82, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 83, VAR_ORG_ID, '-', 1, NOW(), 1);

-- Name Parts
INSERT INTO organization.eqms_nomenclature_name_parts (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_template_id, part_value, part_order, fk_eqms_sequence_def_id, fk_eqms_nomenclature_part_type_id, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 289, 81, 'QAC', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 290, 81, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 291, 81, 'qacf01-goods-inwards', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 292, 81, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 293, 82, 'QAC', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 294, 82, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 295, 82, 'qacf03-incoming-inspection', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 296, 82, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 297, 83, 'QAC', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 298, 83, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 299, 83, 'qacf04-deviation-note', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 300, 83, NULL, 4, NULL, 1, 1, NOW(), 1);

-- Part Date Formats
INSERT INTO organization.eqms_nomenclature_part_date_formats (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_name_parts_id, date_time_format, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 292, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 296, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 300, 'ddLLyyyyHHmmss', 1, NOW(), 1);

-- Entity Nomenclature Mappings
INSERT INTO organization.eqms_entity_nomenclature_mappings (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_name_part_id, related_table, related_column, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 81, 290, 'qc.eqms_goods_inward', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 82, 294, 'qc.eqms_incoming_inspection_results', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 83, 298, 'qc.eqms_incoming_inspection_results', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Joins
INSERT INTO organization.eqms_nomenclature_mapping_joins (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_nomenclature_mapping_id, join_order, fk_eqms_nomenclature_join_type_id, join_table, join_on_left, join_on_right, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 81, 81, 1, 1, 'qc.eqms_goods_inward', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 82, 82, 1, 1, 'qc.eqms_incoming_inspection_results', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 83, 83, 1, 1, 'qc.eqms_incoming_inspection_results', 'id', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Conditions
INSERT INTO organization.eqms_nomenclature_mapping_conditions (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_nomenclature_mapping_id, fk_eqms_mapping_join_id, condition_order, condition_expression, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 81, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 82, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 83, NULL, 1, '@id', 1, NOW(), 1);

END $$;

