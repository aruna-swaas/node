DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_pre_prod_case_settings_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, case_settings_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'worst', 'worst', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Best', 'best', 1, NULL, NULL, NULL, NULL);

END $$;
