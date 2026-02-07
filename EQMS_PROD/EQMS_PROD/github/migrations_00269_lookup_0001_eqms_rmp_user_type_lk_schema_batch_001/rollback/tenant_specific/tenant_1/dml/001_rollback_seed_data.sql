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

-- Delete from organization.eqms_rmp_user_type_lk
DELETE FROM organization.eqms_rmp_user_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND user_type_name = 'Technician' AND description = 'Medical device technician responsible for device operation and maintenance' AND status = 1;

-- Delete from organization.eqms_rmp_user_type_lk
DELETE FROM organization.eqms_rmp_user_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND user_type_name = 'Patient' AND description = 'End patient user who directly uses the medical device' AND status = 1;

-- Delete from organization.eqms_rmp_user_type_lk
DELETE FROM organization.eqms_rmp_user_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND user_type_name = 'Nurse' AND description = 'Registered nurse who operates the device in clinical settings' AND status = 1;

-- Delete from organization.eqms_rmp_user_type_lk
DELETE FROM organization.eqms_rmp_user_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND user_type_name = 'Doctor' AND description = 'Medical doctor who prescribes and oversees device usage' AND status = 1;

-- Delete from organization.eqms_rmp_user_type_lk
DELETE FROM organization.eqms_rmp_user_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND user_type_name = 'Care taker' AND description = 'Patient care taker or family member who assists with device use' AND status = 1;

END $$;
