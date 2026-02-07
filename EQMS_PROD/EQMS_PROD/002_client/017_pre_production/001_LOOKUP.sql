DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- eqms_drawing_type_lk
INSERT INTO organization.eqms_drawing_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, drawing_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Circuit Diagram', 'circuit_diagram', 1, 1, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Wiring Diagram', 'wiring_diagram', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Cable Drawing', 'cable_drawing', 1, 1, NOW(), NULL, NULL);

-- eqms_non_conformed_location_lk
INSERT INTO organization.eqms_non_conformed_location_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, non_conformed_location, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Hazardous Non-Conformation Location', 'hazardous_non_conformed_location', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Non Hazardous Non-Conformed Location', 'non_hazardous_conformed_location', 1, NULL, NULL, NULL, NULL);

-- eqms_storage_type_lk
INSERT INTO organization.eqms_storage_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, storage_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Store as Complete Unit', 'store_as_complete_unit', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Dismantle and Store', 'dismantle_and_store', 1, 1, NOW(), NULL, NULL);

-- eqms_pre_prod_process_validation_type_lk
INSERT INTO organization.eqms_pre_prod_process_validation_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, process_validation_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Performance Qualification', 'performance_qualification', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Operational Qualification', 'operational_qualification', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Installation Qualification', 'installation_qualification', 1, NULL, NULL, NULL, NULL);

-- eqms_pre_prod_installation_qualification_reporter_type_lk
INSERT INTO organization.eqms_pre_prod_installation_qualification_reporter_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, installation_qualification_reporter_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Manufacturer', 'manufacturer', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Agent', 'agent', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Authorised Supplier', 'authorised_supplier', 1, NULL, NULL, NULL, NULL);

-- eqms_pre_prod_bom_feature_settings_lk
INSERT INTO organization.eqms_pre_prod_bom_feature_settings_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, feature_setting_name, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Assembly Work Instruction', 'assembly_work_instruction', 1, NULL, NULL, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Part/ Assembly drawing', 'part_assembly_drawing', 1, NULL, NULL, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Inventory Detail', 'inventory_detail', 1, NULL, NULL, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Storage and Environment', 'storage_and_environment', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Shelf-Life', 'shelf_life', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Electrical Drawings', 'electrical_drawings', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Items excluded from IQA with justifications', 'items_excluded_from_iqa_with_justifications', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Serial / Batch Number', 'serial_batch_number', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Incoming Inspection Criteria', 'incoming_inspection_criteria', 1, 1, NOW(), 1, NOW());

-- eqms_pre_prod_case_settings_type_lk
INSERT INTO organization.eqms_pre_prod_case_settings_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, case_settings_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'worst', 'worst', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Best', 'best', 1, NULL, NULL, NULL, NULL);

END $$;
