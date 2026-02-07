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

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND responsibility_name = 'Post Market Clinical Follow UP' AND description = 'Post-market clinical follow-up activities' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND responsibility_name = 'Verification of post-production controls' AND description = 'Verification of post-production control measures' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND responsibility_name = 'Information gathering of post-production' AND description = 'Collection of post-production information' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND responsibility_name = 'Distributor information' AND description = 'Management of distributor-related information' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND responsibility_name = 'Transportation' AND description = 'Risk management for transportation activities' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND responsibility_name = 'Verification during production' AND description = 'Verification activities during production' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND responsibility_name = 'Information gathering of production' AND description = 'Collection of production-related information' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND responsibility_name = 'Implementation' AND description = 'Implementation of risk management processes' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND responsibility_name = 'Feedback' AND description = 'Collection and analysis of feedback' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND responsibility_name = 'Final Risk Management Review' AND description = 'Final review of risk management activities' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND responsibility_name = 'Risk Benefit Analysis' AND description = 'Analysis of risks versus benefits' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND responsibility_name = 'Risk Control Verification' AND description = 'Verification of risk control effectiveness' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND responsibility_name = 'Risk Control Implementation' AND description = 'Implementation of risk control measures' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND responsibility_name = 'Risk Charts' AND description = 'Development and maintenance of risk charts' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND responsibility_name = 'Clinical Advisor' AND description = 'Clinical expertise and guidance for risk management' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND responsibility_name = 'Risk Control Identification' AND description = 'Identification of risk control measures' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND responsibility_name = 'Risk Evaluation' AND description = 'Assessment and evaluation of identified risks' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND responsibility_name = 'Risk Analysis - Hazards creation' AND description = 'Identification and analysis of potential hazards' AND status = 1;

-- Delete from organization.eqms_rmp_responsibility_lk
DELETE FROM organization.eqms_rmp_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND responsibility_name = 'Risk Plan' AND description = 'Development and maintenance of risk management plan' AND status = 1;

END $$;
