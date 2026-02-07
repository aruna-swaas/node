DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- eqms_reg_test_license_template
INSERT INTO organization.eqms_reg_test_license_template (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, template_code, template_type, description, version, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'MD-12', 'Test License', NULL, 1.0, 1, 1, NOW(), NULL, NULL);

-- eqms_reg_test_checklist_section_master
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

-- eqms_reg_manufacture_license_template
INSERT INTO organization.eqms_reg_manufacture_license_template (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, template_code, template_type, description, version, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'MD-3', 'Manufacturing License', NULL, 1.0, 1, 1, NOW(), NULL, NULL);

-- eqms_reg_manufacture_checklist_section_master
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

-- eqms_reg_device_product_specification_aspects
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
