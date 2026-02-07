DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_hr_evalution_status_lk (
  eqms_tenant_key, fk_eqms_organization_id, evalution_status, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Rejected', 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Onhold', 1, 1, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Selected', 1, 1, NOW(), NULL, NULL, 3);

END $$;
