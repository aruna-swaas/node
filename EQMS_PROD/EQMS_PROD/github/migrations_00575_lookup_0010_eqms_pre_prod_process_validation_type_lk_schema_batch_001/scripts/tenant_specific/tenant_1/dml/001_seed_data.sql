DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_pre_prod_process_validation_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, process_validation_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Performance Qualification', 'performance_qualification', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Operational Qualification', 'operational_qualification', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Installation Qualification', 'installation_qualification', 1, NULL, NULL, NULL, NULL);

END $$;
