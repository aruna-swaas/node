DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_order_approval_mode_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, approval_mode_code, approval_mode_name, approval_mode_description, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, NULL, 'Email', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, NULL, 'FAX', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, NULL, 'Others', NULL, 1, NOW(), 1, NULL, NULL);

END $$;
