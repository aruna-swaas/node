DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_feedback_rating_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, rating_name, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Excellent', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Satisfied', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Poor', 1, 1, NOW(), 1, NOW());

END $$;
