DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_hr_induction_training_topic_lk (
  eqms_tenant_key, fk_eqms_organization_id, topic, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Overview of the Company', 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Roles and Responsibilities', 1, 1, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Quality Objectives', 1, 1, NOW(), NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Quality Policy', 1, 1, NOW(), NULL, NULL, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Relevance and Importance of their activities to achieve Quality Objectives', 1, 1, NOW(), NULL, NULL, 5);

END $$;
