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

-- Delete from organization.eqms_frequency_lk
DELETE FROM organization.eqms_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND frequency_name = 'Yearly' AND status = 1 AND slug = 'yearly';

-- Delete from organization.eqms_frequency_lk
DELETE FROM organization.eqms_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND frequency_name = 'Half-Yearly' AND status = 1 AND slug = 'half_yearly';

-- Delete from organization.eqms_frequency_lk
DELETE FROM organization.eqms_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND frequency_name = 'Quarterly' AND status = 1 AND slug = 'quarterly';

-- Delete from organization.eqms_frequency_lk
DELETE FROM organization.eqms_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND frequency_name = 'Monthly' AND status = 1 AND slug = 'monthly';

-- Delete from organization.eqms_frequency_lk
DELETE FROM organization.eqms_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND frequency_name = 'Weekly' AND status = 1 AND slug = 'weekly';

-- Delete from organization.eqms_frequency_lk
DELETE FROM organization.eqms_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND frequency_name = 'Daily' AND status = 1 AND slug = 'daily';

-- Delete from organization.eqms_frequency_lk
DELETE FROM organization.eqms_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND frequency_name = 'Hourly' AND status = 1 AND slug = 'hourly';

END $$;
