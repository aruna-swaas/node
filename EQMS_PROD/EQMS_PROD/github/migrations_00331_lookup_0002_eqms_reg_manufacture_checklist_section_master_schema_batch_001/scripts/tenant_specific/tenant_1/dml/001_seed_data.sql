DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_reg_manufacture_checklist_section_master (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_reg_manufacture_license_template_id, ref_id, section_no, checklist_name, description, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 1.0, 'Covering Letter', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2, 1.1, 'Constitution of the Firm', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 3, 1.2, 'The Establishment /Site ownership /Tenacy Agreement', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 4, 2.0, 'Copy of Duly notarized valid copies of Quality Certificate in respect manufcturing site(s), if any', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 5, 2.1, 'Copy of Certificate supporting quality management system (ISO: 13485), if any', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 6, 3.0, 'Plant Master file from the Manufacturer as specified in Appedix 1 of Forth Schedule of Medical Devices Rules', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 7, 3.1, 'Part 1', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 8, 3.2, 'Part 2', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 9, 3.3, 'Part 3', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 10, 3.4, 'Part 4', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 11, 3.5, 'Part 5', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 12, 3.6, 'Part 6', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 13, 3.7, 'Part 7', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 14, 3.8, 'Part 8', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 15, 3.9, 'Part 9', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 16, 3.10, 'Part 10', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 17, 4.0, 'Device Master file from the Manufacturer as specified in Appendix II (only for Medical Devices) of Forth Schedule of Medical Device Rules. Note: In case of Class A devices, Appendix II is not required. For Class A devices upload information as specified in Part II of Forth Schedule for Medical Devices or IVDs, as the case may be.', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 18, 4.1, 'Part 1', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 19, 4.2, 'Part 2', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 20, 4.3, 'Part 3', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 21, 4.4, 'Part 4', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 22, 4.5, 'Part 5', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 23, 4.6, 'Part 6', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 24, 4.7, 'Part 7', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 25, 4.8, 'Part 8', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 26, 4.9, 'Part 9', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 27, 4.10, 'Part 10', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 28, 4.11, 'Part 11', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 29, 4.12, 'Part 12', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 30, 4.13, 'Part 13', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 31, 4.14, 'Part 14', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 32, 4.15, 'Part 15', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 33, 4.16, 'Part 16', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 34, 4.17, 'Part 17', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 35, 4.18, 'Part 18', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 36, 4.19, 'Part 19', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 37, 4.20, 'Part 20', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 38, 5.0, 'Performance Evaluation Report of IVDs only', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 39, 6.0, 'Test License obtained for testing and generation of quality control data', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 40, 7.0, 'Undertaking signed stating that the manufacturing site is in compliance with provison of Fifth schedule', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 41, 8.0, 'Fee Chalan', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 42, 9.0, 'Legal Form', NULL, 1, 1, NOW(), NULL, NULL);

END $$;
