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

SELECT id INTO VAR_USER_ID FROM organization.eqms_users WHERE external_user_id = VAR_USER_SUB AND eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT1'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_1;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT2'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_2;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT3'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_3;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT4'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_4;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT5'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_5;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT6'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_6;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT7'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_7;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT7'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_8;

-- eqms_hr_induction_training_topic_supporting_file
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

