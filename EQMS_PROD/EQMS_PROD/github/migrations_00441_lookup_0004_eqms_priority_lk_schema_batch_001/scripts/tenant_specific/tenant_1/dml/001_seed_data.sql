DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_priority_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, priority_code, priority_name, priority_description, priority_order, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'P1', 'Priority 1', NULL, NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'P2', 'Priority 2', NULL, NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'P3', 'Priority 3', NULL, NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'P4', 'Priority 4', NULL, NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'P5', 'Priority 5', NULL, NULL, 1, 1, NOW(), NULL, NULL);

END $$;
