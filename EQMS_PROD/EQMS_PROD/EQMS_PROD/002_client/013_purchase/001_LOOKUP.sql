DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN



-- eqms_purchase_order_type_lk
INSERT INTO organization.eqms_purchase_order_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, order_type_name, status, created_by, created_date, modified_by, modified_date, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Part', 1, 1, NOW(), NULL, NULL, 'part'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Infrastructure', 1, 1, NOW(), NULL, NULL, 'infrastructure');

END $$;
