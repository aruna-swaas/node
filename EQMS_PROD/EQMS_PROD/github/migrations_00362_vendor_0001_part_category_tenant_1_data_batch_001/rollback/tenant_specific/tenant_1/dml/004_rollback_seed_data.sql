-- Rollback: Delete seed data from file 005_DRAFT_SAVE.sql
-- Original file: 005_DRAFT_SAVE.sql
-- Seed data file: 004_seed_data.sql
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

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND context_name = 'sample_order_inspection_id' AND context_description = 'vendor Management' AND status = 1 AND context_slug = 'sample_order_inspection_id';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND context_name = 'sample_order_id' AND context_description = 'vendor Management' AND status = 1 AND context_slug = 'sample_order_id';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND context_name = 'part_category_id' AND context_description = 'vendor Management' AND status = 1 AND context_slug = 'part_category_id';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND context_name = 'vendor_selection_criteria_id' AND context_description = 'vendor Management' AND status = 1 AND context_slug = 'vendor_selection_criteria_id';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND context_name = 'vendor_agreement_checklist_id' AND context_description = 'Vendor Management' AND status = 1 AND context_slug = 'vendor_agreement_checklist_id';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 61 AND context_name = 'sample_inspection_criteria' AND status = 1 AND context_slug = 'sample_inspection_criteria';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND context_name = 'vendor_re_evaluation_criteria' AND status = 1 AND context_slug = 'vendor_re_evaluation_criteria';

END $$;
