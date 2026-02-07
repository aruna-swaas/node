DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_requirement_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, requirement_type, status, created_date, created_by, modified_date, modified_by, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Mandatory', 1, NOW(), 1, NULL, NULL, 'mandatory'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Desirable', 1, NOW(), 1, NULL, NULL, 'desirable');

END $$;
