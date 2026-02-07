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

-- Delete from organization.eqms_rmp_residual_risk_acceptability_type_lk
DELETE FROM organization.eqms_rmp_residual_risk_acceptability_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND risk_acceptability_type = 'Duration of Effect' AND description = 'Duration of the effect of benefit' AND status = 1;

-- Delete from organization.eqms_rmp_residual_risk_acceptability_type_lk
DELETE FROM organization.eqms_rmp_residual_risk_acceptability_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND risk_acceptability_type = 'Life Support' AND description = 'Life supporting or sustaining' AND status = 1;

-- Delete from organization.eqms_rmp_residual_risk_acceptability_type_lk
DELETE FROM organization.eqms_rmp_residual_risk_acceptability_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND risk_acceptability_type = 'Symptom Relief' AND description = 'Relieve from symptoms of disease' AND status = 1;

-- Delete from organization.eqms_rmp_residual_risk_acceptability_type_lk
DELETE FROM organization.eqms_rmp_residual_risk_acceptability_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND risk_acceptability_type = 'Function Enhancement' AND description = 'Improving patient function' AND status = 1;

-- Delete from organization.eqms_rmp_residual_risk_acceptability_type_lk
DELETE FROM organization.eqms_rmp_residual_risk_acceptability_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND risk_acceptability_type = 'Function Preservation' AND description = 'Preventing loss of function' AND status = 1;

-- Delete from organization.eqms_rmp_residual_risk_acceptability_type_lk
DELETE FROM organization.eqms_rmp_residual_risk_acceptability_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND risk_acceptability_type = 'Quality of Life Improvement' AND description = 'Improving quality of life of patient' AND status = 1;

-- Delete from organization.eqms_rmp_residual_risk_acceptability_type_lk
DELETE FROM organization.eqms_rmp_residual_risk_acceptability_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND risk_acceptability_type = 'Patient Survival' AND description = 'Intended user leading to survival of patient after use' AND status = 1;

END $$;
