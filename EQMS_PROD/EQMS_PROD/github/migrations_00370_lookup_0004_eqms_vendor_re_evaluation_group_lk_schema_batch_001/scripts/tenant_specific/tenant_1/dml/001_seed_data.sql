DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_vendor_re_evaluation_group_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, group_name, vendor_group_type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'QMS', 'system_defined', 1, NOW(), NULL, NULL, NULL);

END $$;
