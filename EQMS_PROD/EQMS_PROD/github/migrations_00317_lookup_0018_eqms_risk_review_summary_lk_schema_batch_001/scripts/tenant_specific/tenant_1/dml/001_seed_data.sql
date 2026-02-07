DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_risk_review_summary_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, risk_review_summary, slug, status, created_date, created_by, modified_date, modified_by, fk_eqms_risk_review_category_lk_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Risk Team', 'risk_team', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Risk Level Definition', 'risk_level_definition', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Hazard Identification Tool', 'hazard_identification_tool', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Production & Post-Production', 'production_post_production', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Committee', 'committee', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Risk Assessment Matrix', 'risk_assessment_matrix', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Cumulative Residual Risk Level Acceptability Criteria', 'cumulative_residual_risk_level_acceptability_criteria', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Hazard Identification', 'hazard_identification', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Risk Assessment', 'risk_assessment', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Risk Control Measure', 'risk_control_measure', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Risk Chart After', 'risk_chart_after', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Overall Benefit Risk Analysis', 'overall_benefit_risk_analysis', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Hazard Identification Used', 'hazard_identification_used', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Risk Chart Before', 'risk_chart_before', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'Individual Residual Risk Analysis', 'individual_residual_risk_analysis', 1, NOW(), 1, NULL, NULL, 2);

END $$;
