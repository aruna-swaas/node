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

-- Delete from organization.eqms_purchase_order_type_lk
DELETE FROM organization.eqms_purchase_order_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND order_type_name = 'Infrastructure' AND status = 1 AND slug = 'infrastructure';

-- Delete from organization.eqms_purchase_order_type_lk
DELETE FROM organization.eqms_purchase_order_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND order_type_name = 'Part' AND status = 1 AND slug = 'part';

END $$;
