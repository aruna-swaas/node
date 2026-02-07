-- Rollback: Delete seed data from file lookup_only_002_PREDEFINED.sql
-- Original file: lookup_only_002_PREDEFINED.sql
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

-- Delete from organization.eqms_risk_severity_level_template
DELETE FROM organization.eqms_risk_severity_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND level_name = 'Catastrophic - S5' AND level_value = 5.00000 AND description = 'Results in death or system loss' AND status = 1;

-- Delete from organization.eqms_risk_severity_level_template
DELETE FROM organization.eqms_risk_severity_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND level_name = 'Critical - S4' AND level_value = 4.00000 AND description = 'Severe injury or major system damage' AND status = 1;

-- Delete from organization.eqms_risk_severity_level_template
DELETE FROM organization.eqms_risk_severity_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND level_name = 'Serious - S3' AND level_value = 3.00000 AND description = 'Serious injury or significant system impact' AND status = 1;

-- Delete from organization.eqms_risk_severity_level_template
DELETE FROM organization.eqms_risk_severity_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND level_name = 'Minor - S2' AND level_value = 2.00000 AND description = 'Minor injury or minor system impact' AND status = 1;

-- Delete from organization.eqms_risk_severity_level_template
DELETE FROM organization.eqms_risk_severity_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND level_name = 'Negligible - S1' AND level_value = 1.00000 AND description = 'No injury or negligible impact' AND status = 1;

END $$;
