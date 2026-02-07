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

-- Delete from organization.eqms_iqc_group_lk
DELETE FROM organization.eqms_iqc_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND iqc_group_name = 'Mechanical Parameters' AND iqc_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_iqc_group_lk
DELETE FROM organization.eqms_iqc_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND iqc_group_name = 'Electrical Parameters' AND iqc_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_iqc_group_lk
DELETE FROM organization.eqms_iqc_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND iqc_group_name = 'Environmental Parameters' AND iqc_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_iqc_group_lk
DELETE FROM organization.eqms_iqc_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND iqc_group_name = 'Safety Parameters' AND iqc_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_iqc_group_lk
DELETE FROM organization.eqms_iqc_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND iqc_group_name = 'Performance Parameters' AND iqc_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_iqc_group_lk
DELETE FROM organization.eqms_iqc_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND iqc_group_name = 'Functional Testing' AND iqc_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_iqc_group_lk
DELETE FROM organization.eqms_iqc_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND iqc_group_name = 'Microbiological Parameters' AND iqc_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_iqc_group_lk
DELETE FROM organization.eqms_iqc_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND iqc_group_name = 'Chemical Parameters' AND iqc_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_iqc_group_lk
DELETE FROM organization.eqms_iqc_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND iqc_group_name = 'Physical Parameters' AND iqc_group_type = 'system_defined' AND status = 1;

END $$;
