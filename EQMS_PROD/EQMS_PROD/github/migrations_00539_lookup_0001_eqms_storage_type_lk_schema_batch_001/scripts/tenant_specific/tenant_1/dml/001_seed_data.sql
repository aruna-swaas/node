DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_storage_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, storage_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Store as Complete Unit', 'store_as_complete_unit', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Dismantle and Store', 'dismantle_and_store', 1, 1, NOW(), NULL, NULL);

END $$;
