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

INSERT INTO organization.eqms_default_template_master (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, default_template_name, default_template_slug, fk_eqms_file_id, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'PND - Technical Specifications', 'pnd_technical_specifications', VAR_FILE_ID_95, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'BOM-Upload', 'bom_upload', VAR_FILE_ID_95, 1, NOW(), 1, NULL, NULL);

END $$;
