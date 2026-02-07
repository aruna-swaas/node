DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_vendor_re_evaluation_group_criteria_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, criteria, vendor_group_criteria_type, status, created_date, created_by, modified_date, modified_by, fk_eqms_vendor_re_evaluation_group_lk_id, fk_eqms_requirement_lk_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Is the company ISO 9001:2015', 'system_defined', 1, NOW(), NULL, NULL, NULL, 1, 1);

END $$;
