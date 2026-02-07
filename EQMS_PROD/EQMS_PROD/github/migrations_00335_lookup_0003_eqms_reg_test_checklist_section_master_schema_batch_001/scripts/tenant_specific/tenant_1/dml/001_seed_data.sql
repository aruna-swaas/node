DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_reg_test_checklist_section_master (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reg_test_license_template_id, ref_id, section_no, checklist_name, description, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 1.0, 'Covering Letter', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2, 2.0, 'Brief description of the medical device including intended use, material of construction, design.', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 3, 3.0, 'Undertaking stating that the required facilities including equipment, instruments and personnel have been provided to manufacture such medical device', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 4, 4.0, 'List of equipment,instruments', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 5, 5.0, 'List of qualified personnel', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 6, 6.0, 'Justification of quantity proposed to be manufactured', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 7, 7.0, 'Test protocol if any', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 8, 8.0, 'Quality certificates like QMS etc., of the manufacturer from where the raw material is procedured, if any', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 9, 9.0, 'Copy of Manufacturing licence issued under these rules, if any.', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 10, 10.0, 'Approval letter authorizing to undertake research and development activities issued by any government organization, if any', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 11, 11.0, 'Other documents, if any', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 12, 12.0, 'Schematic plan of premises', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 13, 13.0, 'Certification of site with detailed raw component', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 14, 14.0, 'Detailed description of how the raw material will be procedured so as the entire process is scrutinized', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 15, 15.0, 'Fee Chalan', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 16, 16.0, 'Legal Form', NULL, 1, 1, NOW(), NULL, NULL);

END $$;
