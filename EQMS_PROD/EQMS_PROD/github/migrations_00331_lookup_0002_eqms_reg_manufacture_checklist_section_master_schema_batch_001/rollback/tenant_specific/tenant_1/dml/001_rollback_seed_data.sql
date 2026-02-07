-- Rollback: Delete seed data from file lookup_only_002_PREDEFINED.sql
-- Original file: lookup_only_002_PREDEFINED.sql
-- Seed data file: 001_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 9.0 AND checklist_name = 'Legal Form' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 8.0 AND checklist_name = 'Fee Chalan' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 7.0 AND checklist_name = 'Undertaking signed stating that the manufacturing site is in compliance with provison of Fifth schedule' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 6.0 AND checklist_name = 'Test License obtained for testing and generation of quality control data' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 5.0 AND checklist_name = 'Performance Evaluation Report of IVDs only' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.20 AND checklist_name = 'Part 20' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.19 AND checklist_name = 'Part 19' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.18 AND checklist_name = 'Part 18' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.17 AND checklist_name = 'Part 17' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.16 AND checklist_name = 'Part 16' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.15 AND checklist_name = 'Part 15' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.14 AND checklist_name = 'Part 14' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.13 AND checklist_name = 'Part 13' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.12 AND checklist_name = 'Part 12' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.11 AND checklist_name = 'Part 11' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.10 AND checklist_name = 'Part 10' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.9 AND checklist_name = 'Part 9' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.8 AND checklist_name = 'Part 8' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.7 AND checklist_name = 'Part 7' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.6 AND checklist_name = 'Part 6' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.5 AND checklist_name = 'Part 5' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.4 AND checklist_name = 'Part 4' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.3 AND checklist_name = 'Part 3' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.2 AND checklist_name = 'Part 2' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.1 AND checklist_name = 'Part 1' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 4.0 AND checklist_name = 'Device Master file from the Manufacturer as specified in Appendix II (only for Medical Devices) of Forth Schedule of Medical Device Rules. Note: In case of Class A devices, Appendix II is not required. For Class A devices upload information as specified in Part II of Forth Schedule for Medical Devices or IVDs, as the case may be.' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.10 AND checklist_name = 'Part 10' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.9 AND checklist_name = 'Part 9' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.8 AND checklist_name = 'Part 8' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.7 AND checklist_name = 'Part 7' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.6 AND checklist_name = 'Part 6' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.5 AND checklist_name = 'Part 5' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.4 AND checklist_name = 'Part 4' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.3 AND checklist_name = 'Part 3' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.2 AND checklist_name = 'Part 2' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.1 AND checklist_name = 'Part 1' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 3.0 AND checklist_name = 'Plant Master file from the Manufacturer as specified in Appedix 1 of Forth Schedule of Medical Devices Rules' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 2.1 AND checklist_name = 'Copy of Certificate supporting quality management system (ISO: 13485), if any' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 2.0 AND checklist_name = 'Copy of Duly notarized valid copies of Quality Certificate in respect manufcturing site(s), if any' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 1.2 AND checklist_name = 'The Establishment /Site ownership /Tenacy Agreement' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 1.1 AND checklist_name = 'Constitution of the Firm' AND status = 1;

-- Delete from organization.eqms_reg_manufacture_checklist_section_master
DELETE FROM organization.eqms_reg_manufacture_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_reg_manufacture_license_template_id = 1 AND section_no = 1.0 AND checklist_name = 'Covering Letter' AND status = 1;

END $$;
