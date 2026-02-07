DO $$
DECLARE
VAR_TENANT_KEY INT := ${TENANTKEY};
VAR_ORG_ID INT := ${ORGID};
BEGIN

-- Entity Template
INSERT INTO organization.eqms_entity_template (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_category_id, entity_title, entity_version, slug, is_annexure, fk_parent_entity_id, fk_eqms_module_id, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 68, 1, 'Outsourced Vendor Agreement- template', 1, 'outsourced_vendor_agreement_template', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 69, 1, 'PUR-F-01 Vendor Selection Criteria - Parts', 1, 'purf01_vendor_selection_criteria__parts', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 86, 1, 'PUR-F-04 Vendor Agreement Check List', 1, 'pur-f-04-vendor-agreement-check-list', 'false', NULL, NULL, 1, NOW(), 1);

-- Delimiter
INSERT INTO organization.eqms_nomenclature_delimiter (
    eqms_tenant_key, fk_eqms_entity_template_id, fk_eqms_organization_id, delimiter, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, 68, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 69, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 86, VAR_ORG_ID, '-', 1, NOW(), 1);

-- Name Parts
INSERT INTO organization.eqms_nomenclature_name_parts (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_template_id, part_value, part_order, fk_eqms_sequence_def_id, fk_eqms_nomenclature_part_type_id, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 240, 68, 'VENDOR', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 241, 68, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 242, 68, 'outsourced-vendor-agreement-template', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 243, 68, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 244, 69, 'VENDOR', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 245, 69, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 246, 69, 'pur-f-01-vendor-selection-criteria-parts', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 247, 69, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 309, 86, 'VENDOR', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 310, 86, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 311, 86, 'pur-f-04-vendor-agreement-check-list', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 312, 86, NULL, 4, NULL, 1, 1, NOW(), 1);

-- Part Date Formats
INSERT INTO organization.eqms_nomenclature_part_date_formats (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_name_parts_id, date_time_format, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 243, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 247, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 312, 'ddLLyyyyHHmmss', 1, NOW(), 1);

-- Entity Nomenclature Mappings
INSERT INTO organization.eqms_entity_nomenclature_mappings (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_name_part_id, related_table, related_column, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 68, 241, 'vendor.eqms_vendors', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 69, 245, 'vendor.eqms_part_category', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 86, 310, 'vendor.eqms_vendor_agreement_checklist', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Joins
INSERT INTO organization.eqms_nomenclature_mapping_joins (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_nomenclature_mapping_id, join_order, fk_eqms_nomenclature_join_type_id, join_table, join_on_left, join_on_right, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 68, 68, 1, 1, 'vendor.eqms_vendors', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 69, 69, 1, 1, 'vendor.eqms_part_category', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 86, 86, 1, 1, 'vendor.eqms_vendor_agreement_checklist', 'id', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Conditions
INSERT INTO organization.eqms_nomenclature_mapping_conditions (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_nomenclature_mapping_id, fk_eqms_mapping_join_id, condition_order, condition_expression, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 68, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 69, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 86, NULL, 1, '@id', 1, NOW(), 1);

END $$;
