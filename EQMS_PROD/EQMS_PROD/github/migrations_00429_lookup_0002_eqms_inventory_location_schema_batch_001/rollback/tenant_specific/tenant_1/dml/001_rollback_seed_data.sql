-- Rollback: Delete seed data from file 002_PREDEFINED.sql
-- Original file: 002_PREDEFINED.sql
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

-- Delete from organization.eqms_inventory_location
DELETE FROM organization.eqms_inventory_location WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND location = 'Chennai' AND address = 'Mylapore' AND status = 1;

-- Delete from organization.eqms_inventory_location
DELETE FROM organization.eqms_inventory_location WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND location = 'Chennai' AND address = 'T Nagar' AND status = 1;

-- Delete from organization.eqms_inventory_location
DELETE FROM organization.eqms_inventory_location WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND location = 'Chennai' AND address = 'Guindy' AND status = 1;

-- Delete from organization.eqms_inventory_location
DELETE FROM organization.eqms_inventory_location WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND location = 'Mumbai' AND address = 'Andheri' AND status = 1;

END $$;
