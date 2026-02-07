DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_reg_device_product_specification_aspects (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, section_no, aspects, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, '1', 'TBD', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, '1', 'General Equivalency', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'a', 'Feature', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'b', 'Manufacturer', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, '2', 'Regulatory Equivalency', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'a', 'Classification', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'b', 'System Certification', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'c', 'Regulatory Standards', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'd', 'Intended Use', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'e', 'Indications for Use', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, '3', 'Technological Equivalency', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'a', 'TBD', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'b', 'TBD', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'c', 'TBD', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'd', 'TBD', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, '4', 'Biological Equivalency', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'a', 'Biocompatibility as per ISO 10993 requirements', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 'b', 'Is supplied as sterile?', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 'c', 'Sterilization type', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, '5', 'Clinical Equivalency', 1, NOW(), 1, NULL, NULL);

END $$;
