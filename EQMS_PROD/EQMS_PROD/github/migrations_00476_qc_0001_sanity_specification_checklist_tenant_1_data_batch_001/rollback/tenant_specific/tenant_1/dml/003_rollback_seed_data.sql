-- Rollback: Delete seed data from file 005_DRAFT_SAVE.sql
-- Original file: 005_DRAFT_SAVE.sql
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

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 82 AND context_name = 'initiate_inspection' AND status = 1 AND context_slug = 'initiate_inspection';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 81 AND context_name = 'software' AND status = 1 AND context_slug = 'software';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND context_name = 'hardware' AND status = 1 AND context_slug = 'hardware';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND context_name = 'sanity_check_inspection' AND status = 1 AND context_slug = 'sanity_check_inspection';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND context_name = 'goods_inward' AND status = 1 AND context_slug = 'goods_inward';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND context_name = 'form_a_team' AND status = 1 AND context_slug = 'form_a_team';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND context_name = 'non_conformance_details' AND context_description = 'Qc Management' AND status = 1 AND context_slug = 'non_conformance_details';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 67 AND context_name = 'sanity_specification_checklist' AND status = 1 AND context_slug = 'sanity_specification_checklist';

END $$;
