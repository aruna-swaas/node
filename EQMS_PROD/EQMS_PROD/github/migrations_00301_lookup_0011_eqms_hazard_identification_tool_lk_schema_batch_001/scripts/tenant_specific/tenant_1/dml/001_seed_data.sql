DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_hazard_identification_tool_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, hazard_identification_tool, slug, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Design FMEA', 'design_fmea', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Process FMEA', 'process_fmea', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Fault Tree Analysis', 'fault_tree_analysis', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, '5 why Analysis', '5_why_analysis', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Event Tree Analysis', 'event_tree_analysis', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'HACCP', 'haccp', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Hazard and operability Study', 'hazard_operability_study', 1, NOW(), 1, NULL, NULL);

END $$;
