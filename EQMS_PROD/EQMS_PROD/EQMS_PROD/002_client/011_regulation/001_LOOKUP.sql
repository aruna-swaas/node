DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- eqms_reg_regulatory_agency_lk
INSERT INTO organization.eqms_reg_regulatory_agency_lk (
  eqms_tenant_key, fk_eqms_organization_id, regulatory_agency, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Central Drugs Standard Control Organization (CDSCO)', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'European Medicines Agency (EMA)', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'U.S. Food and Drug Administration (FDA)', 1, NOW(), 1, NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Health Canada', 1, NOW(), 1, NULL, NULL, 4);

END $$;
