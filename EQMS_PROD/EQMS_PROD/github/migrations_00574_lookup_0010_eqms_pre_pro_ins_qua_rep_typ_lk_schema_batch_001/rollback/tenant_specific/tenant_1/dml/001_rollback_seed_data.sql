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

-- Delete from organization.eqms_pre_prod_installation_qualification_reporter_type_lk
DELETE FROM organization.eqms_pre_prod_installation_qualification_reporter_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND installation_qualification_reporter_type = 'Authorised Supplier' AND slug = 'authorised_supplier' AND status = 1;

-- Delete from organization.eqms_pre_prod_installation_qualification_reporter_type_lk
DELETE FROM organization.eqms_pre_prod_installation_qualification_reporter_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND installation_qualification_reporter_type = 'Agent' AND slug = 'agent' AND status = 1;

-- Delete from organization.eqms_pre_prod_installation_qualification_reporter_type_lk
DELETE FROM organization.eqms_pre_prod_installation_qualification_reporter_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND installation_qualification_reporter_type = 'Manufacturer' AND slug = 'manufacturer' AND status = 1;

END $$;
