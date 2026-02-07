DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
    VAR_BUCKET_NAME TEXT := '${BUCKETNAME}';
	  VAR_USER_ID INT;
    VAR_FILE_ID_1 INT;
    VAR_FILE_ID_2 INT;
    VAR_FILE_ID_3 INT;
    VAR_FILE_ID_4 INT;
    VAR_FILE_ID_5 INT;
    VAR_FILE_ID_6 INT;
    VAR_FILE_ID_7 INT;
    VAR_FILE_ID_8 INT;
    VAR_USER_SUB UUID := '${USERSUB}';
BEGIN

INSERT INTO organization.eqms_hr_induction_training_topic_supporting_file (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_hr_induction_training_topic_lk_id, fk_eqms_supporting_file_id, status, created_by, created_date, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 3, VAR_FILE_ID_3, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 2, VAR_FILE_ID_4, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 2, VAR_FILE_ID_5, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 1, VAR_FILE_ID_6, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 1, VAR_FILE_ID_7, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 5, VAR_FILE_ID_8, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 4, VAR_FILE_ID_8, 1, 1, NOW(), NULL, NULL);

END $$;
