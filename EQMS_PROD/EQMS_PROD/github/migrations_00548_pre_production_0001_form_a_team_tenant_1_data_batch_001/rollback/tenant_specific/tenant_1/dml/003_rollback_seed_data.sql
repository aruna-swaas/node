-- Rollback: Delete seed data from file 004_ABAC_CONFIGURATION.sql
-- Original file: 004_ABAC_CONFIGURATION.sql
-- Seed data file: 003_seed_data.sql
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

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 170 AND fk_eqms_menu_lk_id = 282 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 169 AND fk_eqms_menu_lk_id = 276 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 168 AND fk_eqms_menu_lk_id = 277 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 167 AND fk_eqms_menu_lk_id = 273 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 165 AND fk_eqms_menu_lk_id = 274 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 171 AND fk_eqms_menu_lk_id = 275 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 127 AND fk_eqms_menu_lk_id = 273 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 151 AND fk_eqms_menu_lk_id = 281 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 150 AND fk_eqms_menu_lk_id = 280 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 149 AND fk_eqms_menu_lk_id = 279 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 174 AND fk_eqms_menu_lk_id = 271 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 145 AND fk_eqms_menu_lk_id = 286 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 141 AND fk_eqms_menu_Lk_id = 283 AND status = 1;

-- Delete from abac.eqms_form_menu_mapping
DELETE FROM abac.eqms_form_menu_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_form_id = 140 AND fk_eqms_menu_Lk_id = 284 AND status = 1;

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 174 AND form_name = 'Form a Team' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'pre_prod_form_a_team';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 170 AND form_name = 'Packaging and Storage Instructions' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'packaging_and_storage_instructions';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 169 AND form_name = 'Bill of Material' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'bill_of_material';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 168 AND form_name = 'Part Assembly Settings' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'part_assembly_settings';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 167 AND form_name = 'Vendor Selection Criteria' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'vendor_selection_criteria';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 165 AND form_name = 'Jig and Fixture Validation Report' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'jig_fixtures_validation_report';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 171 AND form_name = 'Jigs and Fixture Validation Acceptance Criteria' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'jigs_and_fixture_validation_acceptance_criteria';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 151 AND form_name = 'Packaging Protocol' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'packaging_protocol';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 150 AND form_name = 'Inspection Protocol' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'inspection_protocol';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 149 AND form_name = 'Test Protocol' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'test_protocol';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 145 AND form_name = 'Process Validation' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = false AND completion_tracking = false AND slug = 'process_validation';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 141 AND form_name = 'Set Burn In' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'set_burn_in';

-- Delete from abac.eqms_form
DELETE FROM abac.eqms_form WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 140 AND form_name = 'Product Traceability Card' AND status = 1 AND fk_eqms_form_type_lk_id = 1 AND is_parallel_allowed = 'false' AND completion_tracking = 'false' AND slug = 'product_traceability_card';

END $$;
