DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_non_conformed_location_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, non_conformed_location, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Hazardous Non-Conformation Location', 'hazardous_non_conformed_location', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Non Hazardous Non-Conformed Location', 'non_hazardous_conformed_location', 1, NULL, NULL, NULL, NULL);

END $$;
