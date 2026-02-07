DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_risk_review_category_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, risk_review_category, slug, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Risk Management Plan', 'risk_management_plan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Risk Management', 'risk_management', 1, NOW(), 1, NULL, NULL);

END $$;
