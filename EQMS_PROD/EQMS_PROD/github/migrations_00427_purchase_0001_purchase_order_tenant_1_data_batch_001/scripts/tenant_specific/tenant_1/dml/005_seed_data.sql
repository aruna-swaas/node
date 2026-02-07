DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID INT := ${ORGID};
BEGIN

-- Entity Template
INSERT INTO organization.eqms_entity_template (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_category_id, entity_title, entity_version, slug, is_annexure, fk_parent_entity_id, fk_eqms_module_id, status, created_date, created_by
) VALUES
    (VAR_TENANT_KEY, VAR_ORG_ID, 84, 1, 'PUR-F-06 Purchase Order', 1, 'pur-f-06-purchase-order', 'false', NULL, NULL, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 88, 1, 'PUR-F-03 Purchasing Information - Parts', 1, 'pur-f-03-purchasing-information---parts', 'false', NULL, NULL, 1, NOW(), 1);

-- Delimiter
INSERT INTO organization.eqms_nomenclature_delimiter (
    eqms_tenant_key, fk_eqms_entity_template_id, fk_eqms_organization_id, delimiter, status, created_date, created_by
) VALUES
    (VAR_TENANT_KEY, 84, VAR_ORG_ID, '-', 1, NOW(), 1),
    (VAR_TENANT_KEY, 88, VAR_ORG_ID, '-', 1, NOW(), 1);

-- Name Parts
INSERT INTO organization.eqms_nomenclature_name_parts (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_template_id, part_value, part_order, fk_eqms_sequence_def_id, fk_eqms_nomenclature_part_type_id, status, created_date, created_by
) VALUES
    (VAR_TENANT_KEY, VAR_ORG_ID, 301, 84, 'PURCHASE', 1, NULL, 2, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 302, 84, NULL, 2, NULL, 3, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 303, 84, 'pur-f-06-purchase-order', 3, NULL, 2, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 304, 84, NULL, 4, NULL, 1, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 317, 88, 'PURCHASE', 1, NULL, 2, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 318, 88, NULL, 2, NULL, 3, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 319, 88, 'pur-f-03-purchasing-information-parts', 3, NULL, 2, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 320, 88, NULL, 4, NULL, 1, 1, NOW(), 1);

-- Part Date Formats
INSERT INTO organization.eqms_nomenclature_part_date_formats (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_name_parts_id, date_time_format, status, created_date, created_by
) VALUES
    (VAR_TENANT_KEY, VAR_ORG_ID, 304, 'ddLLyyyyHHmmss', 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 320, 'ddLLyyyyHHmmss', 1, NOW(), 1);

-- Entity Nomenclature Mappings
INSERT INTO organization.eqms_entity_nomenclature_mappings (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_name_part_id, related_table, related_column, status, created_date, created_by
) VALUES
    (VAR_TENANT_KEY, VAR_ORG_ID, 84, 302, 'purchase.eqms_purchase_order', 'id', 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 88, 318, 'purchase.eqms_purchase_order_part_detail', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Joins
INSERT INTO organization.eqms_nomenclature_mapping_joins (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_nomenclature_mapping_id, join_order, fk_eqms_nomenclature_join_type_id, join_table, join_on_left, join_on_right, status, created_date, created_by
) VALUES
    (VAR_TENANT_KEY, VAR_ORG_ID, 84, 84, 1, 1, 'purchase.eqms_purchase_order', 'id', 'id', 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 88, 88, 1, 1, 'purchase.eqms_purchase_order_part_detail', 'id', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Conditions
INSERT INTO organization.eqms_nomenclature_mapping_conditions (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_nomenclature_mapping_id, fk_eqms_mapping_join_id, condition_order, condition_expression, status, created_date, created_by
) VALUES
    (VAR_TENANT_KEY, VAR_ORG_ID, 84, NULL, 1, '@id', 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 88, NULL, 1, '@id', 1, NOW(), 1);

END $$;