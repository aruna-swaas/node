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

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 16.0 AND checklist_name = 'Legal Form' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 15.0 AND checklist_name = 'Fee Chalan' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 14.0 AND checklist_name = 'Detailed description of how the raw material will be procedured so as the entire process is scrutinized' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 13.0 AND checklist_name = 'Certification of site with detailed raw component' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 12.0 AND checklist_name = 'Schematic plan of premises' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 11.0 AND checklist_name = 'Other documents, if any' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 10.0 AND checklist_name = 'Approval letter authorizing to undertake research and development activities issued by any government organization, if any' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 9.0 AND checklist_name = 'Copy of Manufacturing licence issued under these rules, if any.' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 8.0 AND checklist_name = 'Quality certificates like QMS etc., of the manufacturer from where the raw material is procedured, if any' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 7.0 AND checklist_name = 'Test protocol if any' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 6.0 AND checklist_name = 'Justification of quantity proposed to be manufactured' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 5.0 AND checklist_name = 'List of qualified personnel' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 4.0 AND checklist_name = 'List of equipment,instruments' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 3.0 AND checklist_name = 'Undertaking stating that the required facilities including equipment, instruments and personnel have been provided to manufacture such medical device' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 2.0 AND checklist_name = 'Brief description of the medical device including intended use, material of construction, design.' AND status = 1;

-- Delete from organization.eqms_reg_test_checklist_section_master
DELETE FROM organization.eqms_reg_test_checklist_section_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_reg_test_license_template_id = 1 AND section_no = 1.0 AND checklist_name = 'Covering Letter' AND status = 1;

END $$;
