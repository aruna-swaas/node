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
    VAR_BUCKET_NAME TEXT := '${BUCKETNAME}';
	  VAR_USER_ID INT;
    VAR_USER_SUB UUID := '${USERSUB}';
    VAR_FILE_ID_94 INT;
    VAR_FILE_ID_95 INT; 
BEGIN

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 28 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 27 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 26 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 25 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 24 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 23 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 22 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 20 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 19 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 18 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 17 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 16 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 15 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 14 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 13 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 12 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 11 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 10 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 8 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 7 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 6 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 5 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 4 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 3 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 2 AND status = 1;

-- Delete from organization.eqms_product_default_applicable_specification
DELETE FROM organization.eqms_product_default_applicable_specification WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_specification_type_lk_id = 1 AND status = 1;

END $$;
