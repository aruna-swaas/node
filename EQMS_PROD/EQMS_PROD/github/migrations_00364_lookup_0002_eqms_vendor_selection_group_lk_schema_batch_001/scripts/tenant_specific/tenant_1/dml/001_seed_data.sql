DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_vendor_selection_group_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, group_name, vendor_group_type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'QMS', 'system_defined', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Facilities', 'system_defined', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Processes', 'system_defined', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Materials', 'system_defined', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Data Format', 'system_defined', 1, NOW(), 1, NULL, NULL);

END $$;
