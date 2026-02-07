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

-- Delete from organization.eqms_harm_lk
DELETE FROM organization.eqms_harm_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND harm_to_value = 'Enrollment' AND description = 'Harm that may occur during the enrollment or clinical trial process' AND status = 1;

-- Delete from organization.eqms_harm_lk
DELETE FROM organization.eqms_harm_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND harm_to_value = 'Bystanders' AND description = 'Harm that may occur to people in the vicinity who are not directly using the device' AND status = 1;

-- Delete from organization.eqms_harm_lk
DELETE FROM organization.eqms_harm_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND harm_to_value = 'User' AND description = 'Harm that may occur to the healthcare professional or user of the medical device' AND status = 1;

-- Delete from organization.eqms_harm_lk
DELETE FROM organization.eqms_harm_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND harm_to_value = 'Patient' AND description = 'Harm that may occur to the patient using the medical device' AND status = 1;

END $$;
