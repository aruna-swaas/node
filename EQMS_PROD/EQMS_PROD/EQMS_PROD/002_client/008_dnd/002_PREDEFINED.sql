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

SELECT id INTO VAR_USER_ID FROM organization.eqms_users WHERE external_user_id = VAR_USER_SUB AND eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID;

-- eqms_usability_type
INSERT INTO organization.eqms_usability_type (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, usability_type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Unit', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Accessories', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Consumables', 1, NOW(), 1, NULL, NULL);

-- eqms_market
INSERT INTO organization.eqms_market (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, market_name, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'India', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'European Union', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'USA', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Canada', 1, NOW(), 1, NULL, NULL);

-- eqms_regulation
INSERT INTO organization.eqms_regulation (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_market_id, regulation, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 'Schedule I of MDR 2017', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 2, 'EU MDR 2017/745', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 3, '20 CFR 820', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 4, 'MDSAP', 1, NOW(), 1, NULL, NULL);

-- eqms_regulation_standard
INSERT INTO organization.eqms_regulation_standard (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_regulation_id, standard, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, '13485:2016', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 2, 'IEC 60601', 1, NOW(), 1, NULL, NULL);

-- eqms_regulation_standard_clause
INSERT INTO organization.eqms_regulation_standard_clause (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_regulation_standard_id, fk_eqms_clause_lk_id, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 2, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 1, 1, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 2, 4, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 2, 3, 1, NOW(), 1, NULL, NULL);

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT8'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_94;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT9'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_95;

PERFORM setval('dms.eqms_file_id_seq', (SELECT MAX(id) FROM dms.eqms_file));
-- eqms_default_template_master
INSERT INTO organization.eqms_default_template_master (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, default_template_name, default_template_slug, fk_eqms_file_id, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'PND - Technical Specifications', 'pnd_technical_specifications', VAR_FILE_ID_95, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'BOM-Upload', 'bom_upload', VAR_FILE_ID_95, 1, NOW(), 1, NULL, NULL);

-- eqms_dig_specification_usability_type_mapper
INSERT INTO organization.eqms_dig_specification_usability_type_mapper (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_design_specification_type_lk_id, fk_eqms_usability_type_id, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 2, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 3, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 1, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 2, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 3, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 1, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 2, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 3, 1, NOW(), 1, NULL, NULL);

-- eqms_product_default_applicable_specification
INSERT INTO organization.eqms_product_default_applicable_specification (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_product_type_lk_id, fk_eqms_product_group_lk_id, fk_eqms_product_subtype_lk_id, fk_eqms_design_specification_type_lk_id, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2, 1, 4, 1, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 2, 1, 4, 2, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 2, 1, 4, 3, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 2, 1, 4, 4, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 2, 1, 4, 5, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 2, 1, 4, 6, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 2, 1, 4, 7, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 2, 1, 4, 8, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 2, 1, 4, 10, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 2, 1, 4, 11, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 2, 1, 4, 12, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 2, 1, 4, 13, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 2, 1, 4, 14, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 2, 1, 4, 15, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 2, 1, 4, 16, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 2, 1, 4, 17, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 2, 1, 4, 18, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 2, 1, 4, 19, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 2, 1, 4, 20, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 2, 1, 4, 22, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 2, 1, 4, 23, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 2, 1, 4, 24, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 2, 1, 4, 25, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 2, 1, 4, 26, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 2, 1, 4, 27, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 2, 1, 4, 28, 1, NOW(), 1, NULL, NULL);

-- eqms_product_default_design_transfer_document
INSERT INTO organization.eqms_product_default_design_transfer_document (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_product_type_lk_id, fk_eqms_product_group_lk_id, fk_eqms_product_subtype_lk_id, fk_eqms_design_transfer_checklist_lk_id, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2, 1, 4, 2, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 2, 1, 4, 1, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 2, 1, 4, 3, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 2, 1, 4, 4, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 2, 1, 4, 5, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 2, 1, 4, 6, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 2, 1, 4, 7, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 2, 1, 4, 8, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 2, 1, 4, 9, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 2, 1, 4, 10, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 2, 1, 4, 11, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 2, 1, 4, 12, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 2, 1, 4, 13, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 2, 1, 4, 14, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 2, 1, 4, 15, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 2, 1, 4, 16, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 2, 1, 4, 17, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 2, 1, 4, 18, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 2, 1, 4, 19, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 2, 1, 4, 20, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 2, 1, 4, 21, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 2, 1, 4, 22, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 2, 1, 4, 23, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 2, 1, 4, 24, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 2, 1, 4, 25, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 2, 1, 4, 26, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 2, 1, 4, 27, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, 2, 1, 4, 28, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 29, 2, 1, 4, 29, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 2, 1, 4, 30, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 31, 2, 1, 4, 31, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 32, 2, 1, 4, 32, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 33, 2, 1, 4, 33, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, 2, 1, 4, 34, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, 2, 1, 4, 35, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 2, 1, 4, 36, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 2, 1, 4, 37, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 38, 2, 1, 4, 38, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 2, 1, 4, 39, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 2, 1, 4, 40, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 2, 1, 4, 41, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 2, 1, 4, 42, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 43, 2, 1, 4, 43, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 44, 2, 1, 4, 44, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 2, 1, 4, 45, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 2, 1, 4, 46, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 2, 1, 4, 47, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 2, 1, 4, 48, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 49, 2, 1, 4, 49, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 50, 2, 1, 4, 50, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 2, 1, 4, 51, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 2, 1, 4, 52, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 2, 1, 4, 53, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 2, 1, 4, 54, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 2, 1, 4, 55, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 56, 2, 1, 4, 56, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 57, 2, 1, 4, 57, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, 2, 1, 4, 58, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 59, 2, 1, 4, 59, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 60, 2, 1, 4, 60, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 61, 2, 1, 4, 61, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 62, 2, 1, 4, 62, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 63, 2, 1, 4, 63, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 64, 2, 1, 4, 64, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 65, 2, 1, 4, 65, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 66, 2, 1, 4, 66, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 67, 2, 1, 4, 67, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 68, 2, 1, 4, 68, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 69, 2, 1, 4, 69, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 70, 2, 1, 4, 70, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 71, 2, 1, 4, 71, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 72, 2, 1, 4, 72, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 73, 2, 1, 4, 73, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 74, 2, 1, 4, 74, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 75, 2, 1, 4, 75, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 76, 2, 1, 4, 76, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 77, 2, 1, 4, 77, 1, NOW(), 1, NULL, NULL);

END $$;
