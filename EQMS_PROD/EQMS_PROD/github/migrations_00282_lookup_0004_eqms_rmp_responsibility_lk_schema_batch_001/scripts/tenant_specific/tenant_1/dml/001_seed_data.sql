DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_rmp_responsibility_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, responsibility_name, description, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Risk Plan', 'Development and maintenance of risk management plan', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Risk Analysis - Hazards creation', 'Identification and analysis of potential hazards', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Risk Evaluation', 'Assessment and evaluation of identified risks', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Risk Control Identification', 'Identification of risk control measures', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Clinical Advisor', 'Clinical expertise and guidance for risk management', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Risk Charts', 'Development and maintenance of risk charts', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Risk Control Implementation', 'Implementation of risk control measures', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Risk Control Verification', 'Verification of risk control effectiveness', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Risk Benefit Analysis', 'Analysis of risks versus benefits', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Final Risk Management Review', 'Final review of risk management activities', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Feedback', 'Collection and analysis of feedback', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Implementation', 'Implementation of risk management processes', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Information gathering of production', 'Collection of production-related information', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Verification during production', 'Verification activities during production', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'Transportation', 'Risk management for transportation activities', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 'Distributor information', 'Management of distributor-related information', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'Information gathering of post-production', 'Collection of post-production information', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 'Verification of post-production controls', 'Verification of post-production control measures', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 'Post Market Clinical Follow UP', 'Post-market clinical follow-up activities', 1, NOW(), 1);

END $$;
