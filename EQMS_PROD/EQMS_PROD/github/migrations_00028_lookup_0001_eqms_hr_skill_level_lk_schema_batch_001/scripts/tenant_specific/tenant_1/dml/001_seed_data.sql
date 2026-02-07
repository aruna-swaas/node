DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_hr_skill_level_lk (
  eqms_tenant_key, fk_eqms_organization_id, skill_level, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 1, 1, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 1, 1, NOW(), NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 1, 1, NOW(), NULL, NULL, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 1, 1, NOW(), NULL, NULL, 5);

END $$;
