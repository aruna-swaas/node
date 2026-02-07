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

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 77 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 76 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 75 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 74 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 73 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 72 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 71 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 70 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 69 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 68 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 67 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 67 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 66 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 66 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 65 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 65 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 64 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 64 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 63 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 63 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 62 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 62 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 61 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 61 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 60 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 60 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 59 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 58 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 57 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 56 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 55 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 54 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 53 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 52 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 51 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 50 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 49 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 48 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 47 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 46 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 45 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 44 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 43 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 42 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 41 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 40 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 39 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 38 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 37 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 36 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 35 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 34 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 33 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 32 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 31 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 30 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 29 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 28 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 27 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 26 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 25 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 24 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 23 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 22 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 21 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 20 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 19 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 18 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 17 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 16 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 15 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 14 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 13 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 12 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 11 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 10 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 9 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 8 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 7 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 6 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 5 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 4 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 3 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 1 AND status = 1;

-- Delete from organization.eqms_product_default_design_transfer_document
DELETE FROM organization.eqms_product_default_design_transfer_document WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_product_type_lk_id = 2 AND fk_eqms_product_group_lk_id = 1 AND fk_eqms_product_subtype_lk_id = 4 AND fk_eqms_design_transfer_checklist_lk_id = 2 AND status = 1;

END $$;
