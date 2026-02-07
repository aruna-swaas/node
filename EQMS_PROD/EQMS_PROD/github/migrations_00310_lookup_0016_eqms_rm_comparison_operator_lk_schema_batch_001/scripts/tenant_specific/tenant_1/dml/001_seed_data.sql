DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_rm_comparison_operator_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, operator_name, operator, description, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Less than or equal', '<=', 'Less than or equal comparison operator', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Less than', '<', 'Less than comparison operator', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Equal to', '=', 'Equal to comparison operator', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Greater than or equal', '>=', 'Greater than or equal comparison operator', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Greater than', '>', 'Greater than comparison operator', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Not Equal', '!=', 'Not equal comparison operator', 1, NOW(), 1);

END $$;
