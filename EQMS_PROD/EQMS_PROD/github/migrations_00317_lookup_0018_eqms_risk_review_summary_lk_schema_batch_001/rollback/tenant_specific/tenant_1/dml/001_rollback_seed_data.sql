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

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND risk_review_summary = 'Individual Residual Risk Analysis' AND slug = 'individual_residual_risk_analysis' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 2;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND risk_review_summary = 'Risk Chart Before' AND slug = 'risk_chart_before' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 2;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND risk_review_summary = 'Hazard Identification Used' AND slug = 'hazard_identification_used' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 2;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND risk_review_summary = 'Overall Benefit Risk Analysis' AND slug = 'overall_benefit_risk_analysis' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 2;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND risk_review_summary = 'Risk Chart After' AND slug = 'risk_chart_after' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 2;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND risk_review_summary = 'Risk Control Measure' AND slug = 'risk_control_measure' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 2;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND risk_review_summary = 'Risk Assessment' AND slug = 'risk_assessment' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 2;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND risk_review_summary = 'Hazard Identification' AND slug = 'hazard_identification' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 2;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND risk_review_summary = 'Cumulative Residual Risk Level Acceptability Criteria' AND slug = 'cumulative_residual_risk_level_acceptability_criteria' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 1;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND risk_review_summary = 'Risk Assessment Matrix' AND slug = 'risk_assessment_matrix' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 1;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND risk_review_summary = 'Committee' AND slug = 'committee' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 1;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND risk_review_summary = 'Production & Post-Production' AND slug = 'production_post_production' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 1;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND risk_review_summary = 'Hazard Identification Tool' AND slug = 'hazard_identification_tool' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 1;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND risk_review_summary = 'Risk Level Definition' AND slug = 'risk_level_definition' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 1;

-- Delete from organization.eqms_risk_review_summary_lk
DELETE FROM organization.eqms_risk_review_summary_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND risk_review_summary = 'Risk Team' AND slug = 'risk_team' AND status = 1 AND fk_eqms_risk_review_category_lk_id = 1;

END $$;
