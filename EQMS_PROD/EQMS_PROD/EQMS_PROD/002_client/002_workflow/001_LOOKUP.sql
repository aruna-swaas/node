DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID       INT     := ${ORGID};
BEGIN

INSERT INTO workflow.eqms_workflow_status_lk (
  eqms_tenant_key, fk_eqms_organization_id, status_name, status, created_date, created_by, ref_id, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Yet to start', 1, NOW(), 1, 1, 'yet_to_start'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'In progress', 1, NOW(), 1, 2, 'in_progress'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Completed', 1, NOW(), 1, 3, 'completed');


INSERT INTO workflow.eqms_comments_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, comment_type, slug, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'OWNER', 'owner', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'APPROVER', 'approver', 1, NOW(), 1);

INSERT INTO workflow.eqms_transition_owner_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, transition_owner_type, slug, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Creator', 'creator', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Reviewer', 'reviewer', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Approver', 'approver', 1, NOW(), 1);

-- eqms_commenter_type_lk
INSERT INTO workflow.eqms_commenter_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, commenter_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'OWNER', 'owner', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'APPROVER', 'approver', 1, 1, NOW(), NULL, NULL);

END $$;
