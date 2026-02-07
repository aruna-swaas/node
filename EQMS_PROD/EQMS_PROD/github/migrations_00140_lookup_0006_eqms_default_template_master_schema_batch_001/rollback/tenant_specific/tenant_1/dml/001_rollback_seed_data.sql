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

-- Delete from organization.eqms_default_template_master
DELETE FROM organization.eqms_default_template_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND default_template_name = 'BOM-Upload' AND default_template_slug = 'bom_upload' AND fk_eqms_file_id = VAR_FILE_ID_95 AND status = 1;

-- Delete from organization.eqms_default_template_master
DELETE FROM organization.eqms_default_template_master WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND default_template_name = 'PND - Technical Specifications' AND default_template_slug = 'pnd_technical_specifications' AND fk_eqms_file_id = VAR_FILE_ID_95 AND status = 1;

END $$;
