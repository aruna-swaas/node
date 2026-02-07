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

-- Delete from organization.eqms_vendor_re_evaluation_frequency_lk
DELETE FROM organization.eqms_vendor_re_evaluation_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND vendor_re_evaluation_frequency = 'Yearly' AND status = 1;

-- Delete from organization.eqms_vendor_re_evaluation_frequency_lk
DELETE FROM organization.eqms_vendor_re_evaluation_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND vendor_re_evaluation_frequency = 'Half-yearly' AND status = 1;

-- Delete from organization.eqms_vendor_re_evaluation_frequency_lk
DELETE FROM organization.eqms_vendor_re_evaluation_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND vendor_re_evaluation_frequency = 'Monthly' AND status = 1;

-- Delete from organization.eqms_vendor_re_evaluation_frequency_lk
DELETE FROM organization.eqms_vendor_re_evaluation_frequency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND vendor_re_evaluation_frequency = 'Quarterly' AND status = 1;

END $$;
