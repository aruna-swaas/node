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

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND section_no = '5' AND aspects = 'Clinical Equivalency' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND section_no = 'c' AND aspects = 'Sterilization type' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND section_no = 'b' AND aspects = 'Is supplied as sterile?' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND section_no = 'a' AND aspects = 'Biocompatibility as per ISO 10993 requirements' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND section_no = '4' AND aspects = 'Biological Equivalency' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND section_no = 'd' AND aspects = 'TBD' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND section_no = 'c' AND aspects = 'TBD' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND section_no = 'b' AND aspects = 'TBD' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND section_no = 'a' AND aspects = 'TBD' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND section_no = '3' AND aspects = 'Technological Equivalency' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND section_no = 'e' AND aspects = 'Indications for Use' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND section_no = 'd' AND aspects = 'Intended Use' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND section_no = 'c' AND aspects = 'Regulatory Standards' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND section_no = 'b' AND aspects = 'System Certification' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND section_no = 'a' AND aspects = 'Classification' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND section_no = '2' AND aspects = 'Regulatory Equivalency' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND section_no = 'b' AND aspects = 'Manufacturer' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND section_no = 'a' AND aspects = 'Feature' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND section_no = '1' AND aspects = 'General Equivalency' AND status = 1;

-- Delete from organization.eqms_reg_device_product_specification_aspects
DELETE FROM organization.eqms_reg_device_product_specification_aspects WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND section_no = '1' AND aspects = 'TBD' AND status = 1;

END $$;
