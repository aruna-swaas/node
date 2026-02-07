DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_pre_prod_installation_qualification_reporter_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, installation_qualification_reporter_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Manufacturer', 'manufacturer', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Agent', 'agent', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Authorised Supplier', 'authorised_supplier', 1, NULL, NULL, NULL, NULL);

END $$;
