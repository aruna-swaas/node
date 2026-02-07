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

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND power_supply_name = 'Not Applicable' AND status = 1;

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND power_supply_name = 'UPS Protected' AND status = 1;

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND power_supply_name = 'Solar Power' AND status = 1;

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND power_supply_name = 'Battery Backup' AND status = 1;

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND power_supply_name = 'AC 440V' AND status = 1;

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND power_supply_name = 'AC 110V' AND status = 1;

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND power_supply_name = 'DC 12V' AND status = 1;

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND power_supply_name = 'DC 24V' AND status = 1;

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND power_supply_name = 'Three Phase 415V' AND status = 1;

-- Delete from organization.eqms_power_supply_lk
DELETE FROM organization.eqms_power_supply_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND power_supply_name = 'Single Phase 230V' AND status = 1;

END $$;
