DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- eqms_inventory_location
INSERT INTO organization.eqms_inventory_location (
  eqms_tenant_key, fk_eqms_organization_id, location, address, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Mumbai', 'Andheri', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Chennai', 'Guindy', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Chennai', 'T Nagar', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Chennai', 'Mylapore', 1, 1, NOW(), NULL, NULL);

END $$;
