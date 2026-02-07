DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_feedback_source_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, source_code, source_name, source_description, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, NULL, 'Email', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, NULL, 'FAX', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, NULL, 'Others', NULL, 1, 1, NOW(), NULL, NULL);

END $$;
