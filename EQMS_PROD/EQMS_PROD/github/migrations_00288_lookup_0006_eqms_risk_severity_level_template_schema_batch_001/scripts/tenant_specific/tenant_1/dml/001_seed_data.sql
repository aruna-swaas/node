DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_risk_severity_level_template (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, level_name, level_value, description, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Negligible - S1', 1.00000, 'No injury or negligible impact', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Minor - S2', 2.00000, 'Minor injury or minor system impact', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Serious - S3', 3.00000, 'Serious injury or significant system impact', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Critical - S4', 4.00000, 'Severe injury or major system damage', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Catastrophic - S5', 5.00000, 'Results in death or system loss', 1, NOW(), 1, NULL, NULL);

END $$;
