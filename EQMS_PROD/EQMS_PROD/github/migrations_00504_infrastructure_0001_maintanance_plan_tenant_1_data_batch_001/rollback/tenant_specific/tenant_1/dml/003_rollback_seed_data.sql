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
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 105 AND context_name = 'infrastructure_id' AND status = 1 AND context_slug = 'infrastructure_id';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND context_name = 'maintenance_plan' AND status = 1 AND context_slug = 'maintenance_plan';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 84 AND context_name = 'infrastructure_request' AND status = 1 AND context_slug = 'infrastructure_request';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 83 AND context_name = 'infrastructure_qualification' AND status = 1 AND context_slug = 'infrastructure_qualification';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND context_name = 'complaint' AND status = 1 AND context_slug = 'complaint';

END $$;
