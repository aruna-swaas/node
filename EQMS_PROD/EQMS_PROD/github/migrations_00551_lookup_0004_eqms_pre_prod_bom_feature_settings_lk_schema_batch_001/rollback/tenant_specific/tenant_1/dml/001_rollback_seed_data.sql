-- Rollback: Delete seed data from file lookup_only_001_LOOKUP.sql
-- Original file: lookup_only_001_LOOKUP.sql
-- Seed data file: 001_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- Delete from organization.eqms_pre_prod_bom_feature_settings_lk
DELETE FROM organization.eqms_pre_prod_bom_feature_settings_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND feature_setting_name = 'Incoming Inspection Criteria' AND slug = 'incoming_inspection_criteria' AND status = 1;

-- Delete from organization.eqms_pre_prod_bom_feature_settings_lk
DELETE FROM organization.eqms_pre_prod_bom_feature_settings_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND feature_setting_name = 'Serial / Batch Number' AND slug = 'serial_batch_number' AND status = 1;

-- Delete from organization.eqms_pre_prod_bom_feature_settings_lk
DELETE FROM organization.eqms_pre_prod_bom_feature_settings_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND feature_setting_name = 'Items excluded from IQA with justifications' AND slug = 'items_excluded_from_iqa_with_justifications' AND status = 1;

-- Delete from organization.eqms_pre_prod_bom_feature_settings_lk
DELETE FROM organization.eqms_pre_prod_bom_feature_settings_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND feature_setting_name = 'Electrical Drawings' AND slug = 'electrical_drawings' AND status = 1;

-- Delete from organization.eqms_pre_prod_bom_feature_settings_lk
DELETE FROM organization.eqms_pre_prod_bom_feature_settings_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND feature_setting_name = 'Shelf-Life' AND slug = 'shelf_life' AND status = 1;

-- Delete from organization.eqms_pre_prod_bom_feature_settings_lk
DELETE FROM organization.eqms_pre_prod_bom_feature_settings_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND feature_setting_name = 'Storage and Environment' AND slug = 'storage_and_environment' AND status = 1;

-- Delete from organization.eqms_pre_prod_bom_feature_settings_lk
DELETE FROM organization.eqms_pre_prod_bom_feature_settings_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND feature_setting_name = 'Inventory Detail' AND slug = 'inventory_detail' AND status = 1;

-- Delete from organization.eqms_pre_prod_bom_feature_settings_lk
DELETE FROM organization.eqms_pre_prod_bom_feature_settings_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND feature_setting_name = 'Part/ Assembly drawing' AND slug = 'part_assembly_drawing' AND status = 1;

-- Delete from organization.eqms_pre_prod_bom_feature_settings_lk
DELETE FROM organization.eqms_pre_prod_bom_feature_settings_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND feature_setting_name = 'Assembly Work Instruction' AND slug = 'assembly_work_instruction' AND status = 1;

END $$;
