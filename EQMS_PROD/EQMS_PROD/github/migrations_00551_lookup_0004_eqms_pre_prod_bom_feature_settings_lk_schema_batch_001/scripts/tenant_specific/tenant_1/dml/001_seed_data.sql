DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

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

END $$;
