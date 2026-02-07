DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_action_planned_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, action_planned, status, created_by, created_date, modified_by, modified_date, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Rework', 1, NULL, NULL, NULL, NULL, 'rework'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Scrap', 1, NULL, NULL, NULL, NULL, 'scrap'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Return', 1, NULL, NULL, NULL, NULL, 'return');

END $$;
