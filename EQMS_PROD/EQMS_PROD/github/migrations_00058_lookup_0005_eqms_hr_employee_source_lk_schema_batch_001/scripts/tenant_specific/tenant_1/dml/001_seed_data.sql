DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_hr_employee_source_lk (
  eqms_tenant_key, fk_eqms_organization_id, source, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Appraisal', 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Project', 1, 1, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Recruit', 1, 1, NOW(), NULL, NULL, 3);

END $$;
