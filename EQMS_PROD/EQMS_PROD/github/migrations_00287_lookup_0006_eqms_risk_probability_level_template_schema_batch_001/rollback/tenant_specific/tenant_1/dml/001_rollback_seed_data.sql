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

-- Delete from organization.eqms_risk_probability_level_template
DELETE FROM organization.eqms_risk_probability_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND level_name = 'Frequent - P5' AND level_value = 0.90000 AND numerator = 9 AND denominator = 10 AND description = 'High probability of occurrence' AND status = 1;

-- Delete from organization.eqms_risk_probability_level_template
DELETE FROM organization.eqms_risk_probability_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND level_name = 'Probable - P4' AND level_value = 0.50000 AND numerator = 5 AND denominator = 10 AND description = 'Likely to occur' AND status = 1;

-- Delete from organization.eqms_risk_probability_level_template
DELETE FROM organization.eqms_risk_probability_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND level_name = 'Occasional - P3' AND level_value = 0.10000 AND numerator = 1 AND denominator = 10 AND description = 'Occasionally occurs' AND status = 1;

-- Delete from organization.eqms_risk_probability_level_template
DELETE FROM organization.eqms_risk_probability_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND level_name = 'Remote - P2' AND level_value = 0.01000 AND numerator = 1 AND denominator = 100 AND description = 'Rarely occurs' AND status = 1;

-- Delete from organization.eqms_risk_probability_level_template
DELETE FROM organization.eqms_risk_probability_level_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND level_name = 'Improbable - P1' AND level_value = 0.00100 AND numerator = 1 AND denominator = 1000 AND description = 'Extremely unlikely' AND status = 1;

END $$;
