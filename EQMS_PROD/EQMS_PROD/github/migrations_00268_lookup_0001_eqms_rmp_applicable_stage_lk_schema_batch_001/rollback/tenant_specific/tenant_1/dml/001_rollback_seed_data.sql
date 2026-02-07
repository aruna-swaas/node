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

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND applicable_stage = 'Post_Production' AND slug = 'post_production' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND applicable_stage = 'Production' AND slug = 'production' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND applicable_stage = 'Design Transfer' AND slug = 'design_transfer' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND applicable_stage = 'Clinical Evaluation' AND slug = 'clinical_evaluation' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND applicable_stage = 'Validation' AND slug = 'validation' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND applicable_stage = 'Verification' AND slug = 'verification' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND applicable_stage = 'Design Input Gathering' AND slug = 'design_input_gathering' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND applicable_stage = 'Risk Management' AND slug = 'risk_management' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND applicable_stage = 'Pilot' AND slug = 'pilot' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND applicable_stage = 'Prototype' AND slug = 'prototype' AND status = 1;

-- Delete from organization.eqms_rmp_applicable_stage_lk
DELETE FROM organization.eqms_rmp_applicable_stage_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND applicable_stage = 'Concept' AND slug = 'concept' AND status = 1;

END $$;
