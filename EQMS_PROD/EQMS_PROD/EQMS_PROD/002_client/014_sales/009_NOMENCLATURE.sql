DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID INT := ${ORGID};
BEGIN

-- Entity Template
INSERT INTO organization.eqms_entity_template (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_category_id, entity_title, entity_version, slug, is_annexure, fk_parent_entity_id, fk_eqms_module_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 70, 1, 'SLS-F-03 Order Acknowledgement', 1, 'slsf03_order_acknowledgement', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 71, 1, 'SLS-F-04 Delivery Instruction', 1, 'slsf04_delivery_instruction', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 72, 1, 'SLS-F-06 Customer Feedback Form', 1, 'slsf06_customer_feedback_form', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 85, 1, 'SLS-F-01 Quotation Format', 1, 'sls-f-01-quotation-format', 'false', NULL, NULL, 1, NOW(), 1);

-- Delimiter
INSERT INTO organization.eqms_nomenclature_delimiter (
    eqms_tenant_key, fk_eqms_entity_template_id, fk_eqms_organization_id, delimiter, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, 70, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 71, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 72, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 85, VAR_ORG_ID, '-', 1, NOW(), 1);

-- Name Parts
INSERT INTO organization.eqms_nomenclature_name_parts (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_template_id, part_value, part_order, fk_eqms_sequence_def_id, fk_eqms_nomenclature_part_type_id, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 248, 70, 'SALES', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 249, 70, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 250, 70, 'slsf03-order-acknowledgement', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 251, 70, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 252, 71, 'SALES', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 253, 71, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 254, 71, 'slsf04-delivery-instruction', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 255, 71, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 256, 72, 'SALES', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 257, 72, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 258, 72, 'slsf06_customer_feedback_form', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 259, 72, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 305, 85, 'SALES', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 306, 85, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 307, 85, 'sls-f-01-quotation-format', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 308, 85, NULL, 4, NULL, 1, 1, NOW(), 1);
-- Part Date Formats
INSERT INTO organization.eqms_nomenclature_part_date_formats (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_name_parts_id, date_time_format, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 251, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 255, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 259, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 308, 'ddLLyyyyHHmmss', 1, NOW(), 1);
-- Entity Nomenclature Mappings
INSERT INTO organization.eqms_entity_nomenclature_mappings (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_name_part_id, related_table, related_column, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 70, 249, 'sales.eqms_order_acknowledgement', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 71, 253, 'sales.eqms_quotation', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 72, 256, 'sales.eqms_customer_feedback', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 85, 306, 'sales.eqms_quotation', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Joins
INSERT INTO organization.eqms_nomenclature_mapping_joins (
    eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_nomenclature_mapping_id, join_order, fk_eqms_nomenclature_join_type_id, join_table, join_on_left, join_on_right, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 70, 70, 1, 1, 'sales.eqms_order_acknowledgement', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 71, 71, 1, 1, 'sales.eqms_quotation', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 72, 72, 1, 1, 'sales.eqms_customer_feedback', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 85, 85, 1, 1, 'sales.eqms_quotation', 'id', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Conditions
INSERT INTO organization.eqms_nomenclature_mapping_conditions (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_nomenclature_mapping_id, fk_eqms_mapping_join_id, condition_order, condition_expression, status, created_date, created_by 
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 70, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 71, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 72, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 85, NULL, 1, '@id', 1, NOW(), 1);

END $$;
