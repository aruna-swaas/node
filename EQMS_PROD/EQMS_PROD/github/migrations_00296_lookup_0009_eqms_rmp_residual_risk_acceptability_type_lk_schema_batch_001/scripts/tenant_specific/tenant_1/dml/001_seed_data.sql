DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_rmp_residual_risk_acceptability_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, risk_acceptability_type, description, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Patient Survival', 'Intended user leading to survival of patient after use', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Quality of Life Improvement', 'Improving quality of life of patient', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Function Preservation', 'Preventing loss of function', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Function Enhancement', 'Improving patient function', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Symptom Relief', 'Relieve from symptoms of disease', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Life Support', 'Life supporting or sustaining', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Duration of Effect', 'Duration of the effect of benefit', 1, NOW(), 1);

END $$;
