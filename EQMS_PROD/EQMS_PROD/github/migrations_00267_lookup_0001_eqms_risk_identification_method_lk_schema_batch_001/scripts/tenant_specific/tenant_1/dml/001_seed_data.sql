DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_risk_identification_method_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, method_name, description, status, created_by, created_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'FMEA', 'Failure Mode and Effects Analysis', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Others', 'Other risk identification methods', 1, 1, NOW());

END $$;
