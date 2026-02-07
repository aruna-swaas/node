DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_drawing_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, drawing_type, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Circuit Diagram', 'circuit_diagram', 1, 1, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Wiring Diagram', 'wiring_diagram', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Cable Drawing', 'cable_drawing', 1, 1, NOW(), NULL, NULL);

END $$;
