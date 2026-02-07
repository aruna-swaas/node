DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_frequency_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, frequency_name, status, created_by, created_date, modified_by, modified_date, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Hourly', 1, 1, NOW(), 1, NOW(), 'hourly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Daily', 1, 1, NOW(), 1, NOW(), 'daily'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Weekly', 1, 1, NOW(), 1, NOW(), 'weekly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Monthly', 1, 1, NOW(), 1, NOW(), 'monthly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Quarterly', 1, 1, NOW(), 1, NOW(), 'quarterly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Half-Yearly', 1, 1, NOW(), 1, NOW(), 'half_yearly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Yearly', 1, 1, NOW(), 1, NOW(), 'yearly');

END $$;
