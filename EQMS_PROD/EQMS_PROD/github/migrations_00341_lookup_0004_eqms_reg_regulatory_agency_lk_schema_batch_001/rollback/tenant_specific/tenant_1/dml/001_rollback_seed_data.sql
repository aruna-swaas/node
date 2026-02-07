-- Rollback: Delete seed data from file 001_LOOKUP.sql
-- Original file: 001_LOOKUP.sql
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

-- Delete from organization.eqms_reg_regulatory_agency_lk
DELETE FROM organization.eqms_reg_regulatory_agency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND regulatory_agency = 'Health Canada' AND status = 1;

-- Delete from organization.eqms_reg_regulatory_agency_lk
DELETE FROM organization.eqms_reg_regulatory_agency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND regulatory_agency = 'U.S. Food and Drug Administration (FDA)' AND status = 1;

-- Delete from organization.eqms_reg_regulatory_agency_lk
DELETE FROM organization.eqms_reg_regulatory_agency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND regulatory_agency = 'European Medicines Agency (EMA)' AND status = 1;

-- Delete from organization.eqms_reg_regulatory_agency_lk
DELETE FROM organization.eqms_reg_regulatory_agency_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND regulatory_agency = 'Central Drugs Standard Control Organization (CDSCO)' AND status = 1;

END $$;
