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

-- Delete from organization.eqms_vendor_selection_group_lk
DELETE FROM organization.eqms_vendor_selection_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND group_name = 'Data Format' AND vendor_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_vendor_selection_group_lk
DELETE FROM organization.eqms_vendor_selection_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND group_name = 'Materials' AND vendor_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_vendor_selection_group_lk
DELETE FROM organization.eqms_vendor_selection_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND group_name = 'Processes' AND vendor_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_vendor_selection_group_lk
DELETE FROM organization.eqms_vendor_selection_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND group_name = 'Facilities' AND vendor_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_vendor_selection_group_lk
DELETE FROM organization.eqms_vendor_selection_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND group_name = 'QMS' AND vendor_group_type = 'system_defined' AND status = 1;

END $$;
