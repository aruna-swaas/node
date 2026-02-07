DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_vendor_selection_group_criteria_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, criteria, vendor_group_criteria_type, status, created_date, created_by, modified_date, modified_by, fk_eqms_vendor_selection_group_lk_id, fk_eqms_requirement_lk_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Is the company ISO 9001:2015', 'system_defined', 1, NOW(), 1, NULL, NULL, 1, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Pick & Place Machine', 'system_defined', 1, NOW(), 1, NULL, NULL, 2, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Stencil Developer', 'system_defined', 1, NOW(), 1, NULL, 2, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Fluxer', 'system_defined', 1, NOW(), 1, NULL, NULL, 2, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'ICT', 'system_defined', 1, NOW(), 1, NULL, NULL, 2, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'BGA Workstation', 'system_defined', 1, NOW(), 1, NULL, NULL, 2, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Stencil Making', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'ROHS line', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Through Hole Soldering', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Ultrasonic Cleaning', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Assembly Testing', 'system_defined', 1, NOW(), 1, NULL, NULL, 3, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Size of Components (12x10)', 'system_defined', 1, NOW(), 1, NULL, NULL, 4, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'No of Layers of PCB', 'system_defined', 1, NOW(), 1, NULL, NULL, 4, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Gerber Software', 'system_defined', 1, NOW(), 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'Paper of PDF', 'system_defined', 1, NOW(), 1, NULL, NULL, NULL, NULL);

END $$;
