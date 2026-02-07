DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_risk_probability_level_template (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, level_name, level_value, numerator, denominator, description, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Improbable - P1', 0.00100, 1, 1000, 'Extremely unlikely', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Remote - P2', 0.01000, 1, 100, 'Rarely occurs', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Occasional - P3', 0.10000, 1, 10, 'Occasionally occurs', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Probable - P4', 0.50000, 5, 10, 'Likely to occur', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Frequent - P5', 0.90000, 9, 10, 'High probability of occurrence', 1, NOW(), 1, NULL, NULL);

END $$;
