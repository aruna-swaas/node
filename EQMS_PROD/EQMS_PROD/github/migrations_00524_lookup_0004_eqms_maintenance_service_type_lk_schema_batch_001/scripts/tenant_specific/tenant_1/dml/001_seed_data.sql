DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_maintenance_service_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, maintenance_service_type, status, created_by, created_date, modified_by, modified_date, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Supplier', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Agent', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Inhouse', 1, 1, NOW(), 1, NOW(), NULL);

END $$;
