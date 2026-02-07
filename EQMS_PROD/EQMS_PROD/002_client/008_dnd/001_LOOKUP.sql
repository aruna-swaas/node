DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
    VAR_BUCKET_NAME TEXT := '${BUCKETNAME}';
	  VAR_USER_ID INT;
    VAR_USER_SUB UUID := '${USERSUB}';
    VAR_FILE_ID_8 INT;
    VAR_FILE_ID_9 INT;
    VAR_FILE_ID_10 INT;
    VAR_FILE_ID_11 INT;
    VAR_FILE_ID_12 INT;
    VAR_FILE_ID_13 INT;
    VAR_FILE_ID_14 INT;
    VAR_FILE_ID_15 INT;
    VAR_FILE_ID_16 INT;
    VAR_FILE_ID_17 INT;
    VAR_FILE_ID_18 INT;
    VAR_FILE_ID_19 INT;
    VAR_FILE_ID_20 INT;
    VAR_FILE_ID_21 INT;
    VAR_FILE_ID_22 INT;
    VAR_FILE_ID_23 INT;
    VAR_FILE_ID_24 INT;
    VAR_FILE_ID_25 INT;
    VAR_FILE_ID_26 INT;
    VAR_FILE_ID_27 INT;
    VAR_FILE_ID_28 INT;
    VAR_FILE_ID_29 INT;
    VAR_FILE_ID_30 INT;
    VAR_FILE_ID_31 INT;
    VAR_FILE_ID_32 INT;
    VAR_FILE_ID_33 INT;
    VAR_FILE_ID_34 INT;
    VAR_FILE_ID_35 INT;
    VAR_FILE_ID_36 INT;
    VAR_FILE_ID_37 INT;
    VAR_FILE_ID_38 INT;
    VAR_FILE_ID_39 INT;
    VAR_FILE_ID_40 INT;
    VAR_FILE_ID_41 INT;
    VAR_FILE_ID_42 INT;
    VAR_FILE_ID_43 INT;
    VAR_FILE_ID_44 INT;
    VAR_FILE_ID_45 INT;
    VAR_FILE_ID_46 INT;
    VAR_FILE_ID_47 INT;
    VAR_FILE_ID_48 INT;
    VAR_FILE_ID_49 INT;
    VAR_FILE_ID_50 INT;
    VAR_FILE_ID_51 INT;
    VAR_FILE_ID_52 INT;
    VAR_FILE_ID_53 INT;
    VAR_FILE_ID_54 INT;
    VAR_FILE_ID_55 INT;
    VAR_FILE_ID_56 INT;
    VAR_FILE_ID_57 INT;
    VAR_FILE_ID_58 INT;
    VAR_FILE_ID_59 INT;
    VAR_FILE_ID_60 INT;
    VAR_FILE_ID_61 INT;
    VAR_FILE_ID_62 INT;
    VAR_FILE_ID_63 INT;
    VAR_FILE_ID_64 INT;
    VAR_FILE_ID_65 INT;
    VAR_FILE_ID_66 INT;
    VAR_FILE_ID_67 INT;
    VAR_FILE_ID_68 INT;
    VAR_FILE_ID_69 INT;
    VAR_FILE_ID_70 INT;
    VAR_FILE_ID_71 INT;
    VAR_FILE_ID_72 INT;
    VAR_FILE_ID_73 INT;
    VAR_FILE_ID_74 INT;
    VAR_FILE_ID_75 INT;
    VAR_FILE_ID_76 INT;
    VAR_FILE_ID_77 INT;
    VAR_FILE_ID_78 INT;
    VAR_FILE_ID_79 INT;
    VAR_FILE_ID_80 INT;
    VAR_FILE_ID_81 INT;
    VAR_FILE_ID_82 INT;
    VAR_FILE_ID_83 INT;
    VAR_FILE_ID_84 INT;
    VAR_FILE_ID_85 INT;
    VAR_FILE_ID_86 INT;
    VAR_FILE_ID_90 INT;
    VAR_FILE_ID_91 INT;
    VAR_FILE_ID_92 INT;
    VAR_FILE_ID_93 INT;
BEGIN

SELECT id INTO VAR_USER_ID FROM organization.eqms_users WHERE external_user_id = VAR_USER_SUB AND eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID;

-- eqms_clause_lk
INSERT INTO organization.eqms_clause_lk (
  eqms_tenant_key, fk_eqms_organization_id, clause_name, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Support', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Planning', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Leadership', 1, NOW(), 1, NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Operation', 1, NOW(), 1, NULL, NULL, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Improvement', 1, NOW(), 1, NULL, NULL, 5);

-- eqms_concept_status_lk
INSERT INTO organization.eqms_concept_status_lk (
  eqms_tenant_key, fk_eqms_organization_id, concept_status, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'concept1', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'concept2', 1, NOW(), 1, NULL, NULL, 2);

-- eqms_cost_heading_lk
INSERT INTO organization.eqms_cost_heading_lk (
  eqms_tenant_key, fk_eqms_organization_id, cost_heading, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Product Bill of Material Cost', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Capital Equipment & Tool Cost', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Developmental Cost', 1, NOW(), 1, NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Manufacturing Cost per Product', 1, NOW(), 1, NULL, NULL, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Other Cost, if any', 1, NOW(), 1, NULL, NULL, 5);

-- eqms_decision_lk
INSERT INTO organization.eqms_decision_lk (
  eqms_tenant_key, fk_eqms_organization_id, decision, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'For Next Version', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Modify', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Ignore', 1, NOW(), 1, NULL, NULL, 3);

-- eqms_report_type_lk
INSERT INTO organization.eqms_report_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, report_type, slug, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Verification Report', 'verification_report', 1, NULL, NULL, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Product Life Report', 'product_life_report', 1, NULL, NULL, NULL, NULL, 2);
-- eqms_design_specification_type_lk
INSERT INTO organization.eqms_design_specification_type_lk (
  fk_eqms_organization_id, specification_type, description, status, created_date, created_by, modified_date, modified_by, eqms_tenant_key, slug, ref_id, fk_eqms_report_type_lk_id
) VALUES
(VAR_ORG_ID, 'Alarms', 'Description of alarms', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'alarms', 32, NULL),
(VAR_ORG_ID, 'Standards', 'Description of Standards', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'standards', 33, NULL),
(VAR_ORG_ID, 'User and Patient Requirements', 'Description of User and Patient Requirements', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'user_and_patient_requirements', 3, 1),
(VAR_ORG_ID, 'Physical Characteristics', 'Description of Physical Characteristics', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'physical_characteristics', 4, 1),
(VAR_ORG_ID, 'Lifetime of the Device', 'Description of Lifetime of the Device', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'lifetime_of_the_device', 20, 2),
(VAR_ORG_ID, 'Power Supply', 'Description of Power Supply', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'power_supply', 5, 1),
(VAR_ORG_ID, 'Usability Interface Specifications', 'Description of Usability Interface Specifications', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'usability_interface_specifications', 6, 1),
(VAR_ORG_ID, 'Communication Protocol', 'Description of Communication Specifications', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'communication_protocol', 7, 1),
(VAR_ORG_ID, 'Environmental Specifications', 'Description of Environmental Specifications', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'environmental_specifications', 8, 1),
(VAR_ORG_ID, 'Software Requirements', 'Description of Software Requirements', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'software_requirements', 10, 1),
(VAR_ORG_ID, 'Labelling and Packaging Requirements', 'Description of Labelling and Packaging Requirements', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'labelling_and_packaging_requirements', 11, 1),
(VAR_ORG_ID, 'Storage & Handling Requirements', 'Description of Storage & Handling Requirements', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'storage_&_handling_requirements', 12, 1),
(VAR_ORG_ID, 'Manufacturing Process', 'Description of Manufacturing Process', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'manufacturing_process', 13, 1),
(VAR_ORG_ID, 'Installation Requirements', 'Description of Installation Requirements', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'installation_requirements', 14, 1),
(VAR_ORG_ID, 'Servicing Requirements', 'Description of Servicing Requirements', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'servicing_requirements', 15, 1),
(VAR_ORG_ID, 'Adverse Events Design Input', 'Description of Adverse Event Design Input', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'adverse_events_design_input', 17, 1),
(VAR_ORG_ID, 'References from the Previous Design', 'Description of References from the Previous Design', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'references_from_the_previous_design', 18, 1),
(VAR_ORG_ID, 'Training Requirements for Customers', 'Description of Training Requirement for Customers', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'training_requirements_for_customers', 19, 1),
(VAR_ORG_ID, 'Sterilization Requirements', 'Description of Sterilization Requirements', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'sterilization_requirements', 21, 1),
(VAR_ORG_ID, 'Reliability Requirements', 'Description of Reliability Requirements', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'reliability_requirements', 22, 1),
(VAR_ORG_ID, 'Toxicity & Biocompatability', 'Description of Toxicity and Biocompatability', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'toxicity_&_biocompatability', 23, 1),
(VAR_ORG_ID, 'Accessories & Consumables', 'Description of Accessories & Consumables', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'accessories_&_consumables', 24, 1),
(VAR_ORG_ID, 'Other Device Compatibility', 'Description of Other Device Compatibility', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'other_device_compatibility', 25, 1),
(VAR_ORG_ID, 'Other Requirements', 'Description of Other Requirements', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'other_requirements', 26, 1),
(VAR_ORG_ID, 'Regulations', 'Description of Regulations', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'regulations', 27, 1),
(VAR_ORG_ID, 'Safety', 'Description of Safety', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'safety', 28, 1),
(VAR_ORG_ID, 'Statutory', 'Description of Statutory', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'statutory', 29, 1),
(VAR_ORG_ID, 'Shelf Life', 'Description of Shelf Life', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'shelf_life', 30, 1),
(VAR_ORG_ID, 'Performance Specifications', 'Description of Performance Specifications', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'performance_specification', 1, 1),
(VAR_ORG_ID, 'Functional Specifications', 'Description of Functional Specifications', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'functional_specifications', 2, 1),
(VAR_ORG_ID, 'Risk Control Measures', 'Description of Design Risk Control Measures', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'risk_control_measures', 16, 1),
(VAR_ORG_ID, 'Intended Use', 'Intended use Description', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 'intended_use', 31, 1);

-- eqms_design_stage_item_lk
INSERT INTO organization.eqms_design_stage_item_lk (
  eqms_tenant_key, fk_eqms_organization_id, item_type, status, created_date, created_by, modified_date, modified_by, fk_eqms_project_id, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Prototype 1 - Unit 1', 1, NOW(), 1, NULL, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Prototype 1 - Unit 2', 1, NOW(), 1, NULL, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Pilot 1 -  Unit 1', 1, NULL, NULL, NULL, NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Pilot 1 -  Unit 2', 1, NULL, NULL, NULL, NULL, NULL, 4);

-- eqms_design_stage_type_lk
INSERT INTO organization.eqms_design_stage_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, design_stage_type, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Build stage', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Execution', 1, NOW(), 1, NULL, NULL, 2);

-- eqms_design_stage_lk
INSERT INTO organization.eqms_design_stage_lk (
  fk_eqms_organization_id, design_stage, status, created_date, created_by, modified_date, modified_by, eqms_tenant_key, fk_eqms_design_stage_type_lk_id, source, ref_id
) VALUES
(VAR_ORG_ID, 'Concept', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 1, NULL, 1),
(VAR_ORG_ID, 'Prototype', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 2, NULL, 2),
(VAR_ORG_ID, 'Pilot', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 2, NULL, 3),
(VAR_ORG_ID, 'Risk Management', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 1, NULL, 4),
(VAR_ORG_ID, 'Design Input Gathering', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 1, NULL, 5),
(VAR_ORG_ID, 'Verification', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 1, NULL, 6),
(VAR_ORG_ID, 'Validation', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 1, NULL, 7),
(VAR_ORG_ID, 'Clinical Evaluation', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 1, NULL, 8),
(VAR_ORG_ID, 'Design Transfer', 1, NOW(), 1, NULL, NULL, VAR_TENANT_KEY, 1, NULL, 9),
(VAR_ORG_ID, 'test with custom stage name', 1, NOW(), 33, NULL, NULL, VAR_TENANT_KEY, 1, 'user_defined', 10);

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT8'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_8;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT9'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_9;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT10'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_10;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT11'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_11;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT12'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_12;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT13'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_13;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT14'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_14;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT15'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_15;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT16'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_16;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT17'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_17;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT18'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_18;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT19'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_19;

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT20'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL)
RETURNING id INTO VAR_FILE_ID_20;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT21'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_21;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT22'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_22;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT23'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_23;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT24'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_24;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT25'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_25;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT26'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_26;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT27'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_27;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT28'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_28;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT29'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_29;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT30'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_30;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT31'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_31;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT32'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_32;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT33'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_33;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT34'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_34;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT35'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_35;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT36'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_36;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT37'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_37;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT38'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_38;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT39'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_39;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT40'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_40;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT41'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_41;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT42'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_42;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT43'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_43;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT44'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_44;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT45'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_45;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT46'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_46;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT47'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_47;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT48'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_48;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT49'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_49;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT50'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_50;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT51'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_51;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT52'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_52;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT53'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_53;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT54'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_54;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT55'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_55;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT56'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_56;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT57'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_57;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT58'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_58;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT59'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_59;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT60'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_60;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT61'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_61;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT62'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_62;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT63'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_63;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT64'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_64;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT65'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_65;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT66'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_66;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT67'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_67;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT68'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_68;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT69'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_69;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT70'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_70;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT71'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_71;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT72'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_72;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT73'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_73;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT74'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_74;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT75'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_75;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT76'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_76;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT77'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_77;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT78'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_78;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT79'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_79;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT80'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_80;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT81'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_81;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT82'), NULL, '.pdf', 'f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1239011, 'TTW.kdBot6_eGFXszAQxnx30UnACPJ6N', VAR_BUCKET_NAME, '1/NaN/f1b5c7a2-0e16-4247-b78d-2d3040d52cab', 1, 1.0, NOW(), 1, NULL, NULL, 1, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_82;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT83'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_83;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT84'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_84;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT85'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_85;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT86'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_86;

PERFORM setval('dms.eqms_file_id_seq', (SELECT MAX(id) FROM dms.eqms_file));

INSERT INTO organization.eqms_design_transfer_checklist_lk (
  eqms_tenant_key, fk_eqms_organization_id, document_title, status, created_date, created_by, modified_date, modified_by, ref_id, fk_eqms_file_id, fk_eqms_record_generation_type_lk_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Device Classification', 1, NOW(), 1, NULL, NULL, 4, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Product Specification', 1, NOW(), 1, NULL, NULL, 5, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Drawings', 1, NOW(), 1, NULL, NULL, 6, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Design Bill of Materials', 1, NOW(), 1, NULL, NULL, 7, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Manufacturing Bill of Materials', 1, NOW(), 1, NULL, NULL, 8, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Purchase Bill of Materials', 1, NOW(), 1, NULL, NULL, 9, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Component Specifications / Data sheet', 1, NOW(), 1, NULL, NULL, 10, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Verification records', 1, NOW(), 1, NULL, NULL, 11, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Validation records', 1, NOW(), 1, NULL, NULL, 12, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Clinical Data', 1, NOW(), 1, NULL, NULL, 13, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Clinical Evaluation and Report', 1, NOW(), 1, NULL, NULL, 14, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Risk Management File', 1, NOW(), 1, NULL, NULL, 15, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Risk Management Plan', 1, NOW(), 1, NULL, NULL, 16, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Hazards', 1, NOW(), 1, NULL, NULL, 17, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Risk Management Report', 1, NOW(), 1, NULL, NULL, 18, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Benefit Risk Analysis', 1, NOW(), 1, NULL, NULL, 19, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Risk Chart - Before', 1, NOW(), 1, NULL, NULL, 20, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Risk Chart - After', 1, NOW(), 1, NULL, NULL, 21, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Predicate Device Data', 1, NOW(), 1, NULL, NULL, 22, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Device Software Specification', 1, NOW(), 1, NULL, NULL, 23, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Device Software binary code', 1, NOW(), 1, NULL, NULL, 24, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Product Life Time Declaration', 1, NOW(), 1, NULL, NULL, 25, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Product Life Time - Verification Report', 1, NOW(), 1, NULL, NULL, 26, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Device Manufacturing Procedure', 1, NOW(), 1, NULL, NULL, 27, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Manufacturing Jig / Equipment specification', 1, NOW(), 1, NULL, NULL, 28, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Special Processes in Manufacturing', 1, NOW(), 1, NULL, NULL, 29, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Infrastructure for manufacturing', 1, NOW(), 1, NULL, NULL, 30, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Parts incoming inspection procedure', 1, NOW(), 1, NULL, NULL, 31, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Measuring equipment in QC/QA', 1, NOW(), 1, NULL, NULL, 32, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Packaging specification', 1, NOW(), 1, NULL, NULL, 33, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Packaging procedure', 1, NOW(), 1, NULL, NULL, 34, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Shelf Life of the device', 1, NOW(), 1, NULL, NULL, 35, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Shelf life - Stability study Protocol', 1, NOW(), 1, NULL, NULL, 36, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Shelf life - Stability study report', 1, NOW(), 1, NULL, NULL, 37, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Labelling procedure', 1, NOW(), 1, NULL, NULL, 38, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Labels', 1, NOW(), 1, NULL, NULL, 39, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'User Manual (IFU)', 1, NOW(), 1, NULL, NULL, 40, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Service Manual', 1, NOW(), 1, NULL, NULL, 41, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Device Maintenance Instructions', 1, NOW(), 1, NULL, NULL, 42, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Storage requirements', 1, NOW(), 1, NULL, NULL, 43, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Storage -stability study Protocol', 1, NOW(), 1, NULL, NULL, 44, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Storage - Stability study report', 1, NOW(), 1, NULL, NULL, 45, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Transportation requirements', 1, NOW(), 1, NULL, NULL, 46, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Transportation validation report', 1, NOW(), 1, NULL, NULL, 47, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Accessories', 1, NOW(), 1, NULL, NULL, 48, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Consumables', 1, NOW(), 1, NULL, NULL, 49, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Applicable Standards', 1, NOW(), 1, NULL, NULL, 50, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Applicable Standard test reports', 1, NOW(), 1, NULL, NULL, 51, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Chemical Tests protocol and report', 1, NOW(), 1, NULL, NULL, 52, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Physical Tests protocol and report', 1, NOW(), 1, NULL, NULL, 53, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Biological Tests protocol and report', 1, NOW(), 1, NULL, NULL, 54, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Biological Evaluation protocol and report', 1, NOW(), 1, NULL, NULL, 55, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Biostability Tests protocol and report', 1, NOW(), 1, NULL, NULL, 56, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sterilisation procedure', 1, NOW(), 1, NULL, NULL, 57, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Master Plan for sterilisation', 1, NOW(), 1, NULL, NULL, 58, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Steriliser Validation Report', 1, NOW(), 1, NULL, NULL, 59, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Bioburden Testing Procedure', 1, NOW(), 1, NULL, NULL, 60, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Bioburden Trend Analysis report', 1, NOW(), 1, NULL, NULL, 61, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Bioburden Test Method Validation protocol and report', 1, NOW(), 1, NULL, NULL, 62, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Bioburden Recovery results', 1, NOW(), 1, NULL, NULL, 63, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Routine sterilisation specification', 1, NOW(), 1, NULL, NULL, 64, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Microbial environment qualification reports and routine monitoring control procedure and reports', 1, NOW(), 1, NULL, NULL, 65, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sterility testing procedure', 1, NOW(), 1, NULL, NULL, 66, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Cleaning and Disinfection procedure', 1, NOW(), 1, NULL, NULL, 67, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Clean Room Control and Monitoring Procedure and report', 1, NOW(), 1, NULL, NULL, 68, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Microbiological safety', 1, NOW(), 1, NULL, NULL, 69, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Usability Engineering File', 1, NOW(), 1, NULL, NULL, 70, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Drug / medicinal combination', 1, NOW(), 1, NULL, NULL, 71, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Blood derivatives, Human tissues – medical device combination', 1, NOW(), 1, NULL, NULL, 72, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Coated Medical device (Biomimicry)', 1, NOW(), 1, NULL, NULL, 73, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Aseptic filling', 1, NOW(), 1, NULL, NULL, 74, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Reprocessing of re-sterilisable medical devices', 1, NOW(), 1, NULL, NULL, 75, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Measuring function of device', 1, NOW(), 1, NULL, NULL, 76, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Combination with other medical devices', 1, NOW(), 1, NULL, NULL, 77, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Compatibility of Drugs', 1, NOW(), 1, NULL, NULL, 78, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Declaration of Conformity', 1, NOW(), 1, NULL, NULL, 79, VAR_FILE_ID_10, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Intended Use', 1, NOW(), 1, NULL, NULL, 1, VAR_FILE_ID_10, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'General Description', 1, NOW(), 1, NULL, NULL, 2, VAR_FILE_ID_10, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Applications of use procedure', 1, NOW(), 1, NULL, NULL, 3, VAR_FILE_ID_10, 1);

INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT90'), NULL, '.pdf', '0872fde5-fff6-466c-8d25-7065b431d7c', NULL, '7o2byfy0afHywbr0_B5YoGe6.SMPRLZs', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/0872fde5-fff6-466c-8d25-7065b431d7c', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_90;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT91'), NULL, '.pdf', 'e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', NULL, 'riYodacCw9jWIb11ifVZ3PY_UtRTIKGN', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/e05dd8cc-8b17-4f1d-bdd4-78b603a0afcc', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_91;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT92'), NULL, '.pdf', 'ed377cf8-4855-4c3a-bf71-b6112ea57d15', NULL, 'nxrfkFGnG51Cy_Vf0ajPkLwLS7Z5fSza', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/ed377cf8-4855-4c3a-bf71-b6112ea57d15', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_92;
INSERT INTO dms.eqms_file (eqms_tenant_key, fk_eqms_organization_id, file_name, file_description, file_extension, file_guid, file_size, file_version_id, file_bucket, file_object_key, status, version, created_date, created_by, modified_date, modified_by, fk_eqms_file_category_lk_id, fk_eqms_file_type_lk_id, fk_uploaded_eqms_user_id, purpose, source, s3_uri, full_url) 
VALUES(VAR_TENANT_KEY, VAR_ORG_ID, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/PRE-DEFINED-FILES/DOCUMENT93'), NULL, '.pdf', '5e3f41a8-da22-46b2-a4b2-d4cee082ca49', NULL, '7en35yajhlSAYQxbZM97kKh.dMJItPSq', VAR_BUCKET_NAME, 'undefined/undefined/user_profile/5e3f41a8-da22-46b2-a4b2-d4cee082ca49', 1, 1.0, NOW(), 1, NULL, NULL, NULL, 3, VAR_USER_ID, NULL, NULL, NULL, NULL) 
RETURNING id INTO VAR_FILE_ID_93;


-- eqms_dnd_document_lk
INSERT INTO organization.eqms_dnd_document_lk (
  eqms_tenant_key, fk_eqms_organization_id, document_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_file_id, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'RMS-QP-09_Risk_Management.docx', 1, NOW(), 1, NULL, NULL, VAR_FILE_ID_92, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'RMS-QP-11_Design_and_Development.docx', 1, NOW(), 1, NULL, NULL, VAR_FILE_ID_92, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'RMS-QP-29_Control_of_Outsourced_Processes.docx', 1, NOW(), 1, NULL, NULL, VAR_FILE_ID_92, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'RMS-QP-31_Process_Risk_Management.docx', 1, NOW(), 1, NULL, NULL, VAR_FILE_ID_92, 4);

PERFORM setval('dms.eqms_file_id_seq', (SELECT MAX(id) FROM dms.eqms_file));

-- eqms_feasibility_currency_lk
INSERT INTO organization.eqms_feasibility_currency_lk (
  eqms_tenant_key, fk_eqms_organization_id, currency, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'INR', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'USD', 1, NOW(), 1, NULL, NULL, 2);

-- eqms_feasibility_decision_lk
INSERT INTO organization.eqms_feasibility_decision_lk (
  eqms_tenant_key, fk_eqms_organization_id, feasibility_decision, status, created_date, created_by, modified_date, modified_by, ref_id, decision_slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Procure', 1, NOW(), 1, NULL, NULL, 1, 'procure'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Proceed with Design', 1, NOW(), 1, NULL, NULL, 2, 'proceed with Design'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Drop', 1, NOW(), 1, NULL, NULL, 3, 'drop');

-- eqms_feasibility_type_lk
INSERT INTO organization.eqms_feasibility_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, feasibility_type, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Financial Feasibility', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Marketing Strategy Alignment', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Technical Feasibility', 1, NOW(), 1, NULL, NULL, 3);

-- eqms_functional_block_type_lk
INSERT INTO organization.eqms_functional_block_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, functional_block_type, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Other', 1, NOW(), 1, NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Software', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Hardware', 1, NOW(), 1, NULL, NULL, 1);


-- eqms_labelling_packaging_type_lk
INSERT INTO organization.eqms_labelling_packaging_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, labelling_packaging_type, type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Packaging', 'system_defined', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Labelling', 'system_defined', 1, NULL, NULL, NULL, NULL);

-- eqms_license_status_lk
INSERT INTO organization.eqms_license_status_lk (
  eqms_tenant_key, fk_eqms_organization_id, license_status, status, created_date, created_by, modified_date, modified_by, slug, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Manufacturing License', 1, NULL, 1, NULL, NULL, 'manufacturing_license', 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Test License', 1, NULL, 1, NULL, NULL, 'test_license', 2);

-- eqms_market_demography_category_lk
INSERT INTO organization.eqms_market_demography_category_lk (
  eqms_tenant_key, fk_eqms_organization_id, market_demography_category, status, created_date, created_by, modified_date, modified_by, ref_id, "order"
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Neonates', 1, NOW(), 1, NULL, NULL, 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Pediatrics', 1, NOW(), 1, NULL, NULL, 2, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Adults', 1, NOW(), 1, NULL, NULL, 3, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Senior Citizens', 1, NOW(), 1, NULL, NULL, 4, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Parents', 1, NOW(), 1, NULL, NULL, 5, 6),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Race', 1, NOW(), 1, NULL, NULL, 6, 7),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Region', 1, NOW(), 1, NULL, NULL, 7, 8),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Special Category', 1, NOW(), 1, NULL, NULL, 8, 5);

-- eqms_market_demography_sub_category_lk
INSERT INTO organization.eqms_market_demography_sub_category_lk (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_market_demography_category_lk_id, market_demography_sub_category, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Boy', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Girl', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Boy', 1, NOW(), 1, NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Girl', 1, NOW(), 1, NULL, NULL, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Male', 1, NOW(), 1, NULL, NULL, 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Female', 1, NOW(), 1, NULL, NULL, 6),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Male', 1, NOW(), 1, NULL, NULL, 7),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Female', 1, NOW(), 1, NULL, NULL, 8),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Adult Parents', 1, NOW(), 1, NULL, NULL, 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Others', 1, NOW(), 1, NULL, NULL, 9),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Rural', 1, NOW(), 1, NULL, NULL, 11),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Urban', 1, NOW(), 1, NULL, NULL, 12),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Citizen', 1, NOW(), 1, NULL, NULL, 13),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Metropolitan', 1, NOW(), 1, NULL, NULL, 14),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Low Income Groups', 1, NOW(), 1, NULL, NULL, 15),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Mid Income Groups', 1, NOW(), 1, NULL, NULL, 16),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'High Income Groups', 1, NOW(), 1, NULL, NULL, 17),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Young Parents', 1, NOW(), 1, NULL, NULL, 18),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Caucasoid', 1, NOW(), 1, NULL, NULL, 19),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Negroid', 1, NOW(), 1, NULL, NULL, 20),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Mongoloid', 1, NOW(), 1, NULL, NULL, 21),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Asiatic sub group', 1, NOW(), 1, NULL, NULL, 22),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Pacific Island', 1, NOW(), 1, NULL, NULL, 23),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Australian', 1, NOW(), 1, NULL, NULL, 24),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Amerindians', 1, NOW(), 1, NULL, NULL, 25),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Eskimos', 1, NOW(), 1, NULL, NULL, 26);

-- eqms_market_segment_lk
INSERT INTO organization.eqms_market_segment_lk (
  eqms_tenant_key, fk_eqms_organization_id, market_segment, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Government', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Corporate', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Clinics (Consult and go)', 1, NOW(), 1, NULL, NULL, 6),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Freelance', 1, NOW(), 1, NULL, NULL, 7),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Diagnostic Centres', 1, NOW(), 1, NULL, NULL, 8),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Pharmacies', 1, NOW(), 1, NULL, NULL, 9),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Home care', 1, NOW(), 1, NULL, NULL, 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Private High (above 75 Beds)', 1, NOW(), 1, NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Private Low (20 - 75 Beds)', 1, NOW(), 1, NULL, NULL, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Nursing homes (10 - 20 Beds)', 1, NOW(), 1, NULL, NULL, 5);

-- eqms_pnd_buyer_lk
INSERT INTO organization.eqms_pnd_buyer_lk (
  eqms_tenant_key, fk_eqms_organization_id, buyer, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Hospital', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Nursing home', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Doctor', 1, NOW(), 1, NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Home use', 1, NOW(), 1, NULL, NULL, 4);

-- eqms_pnd_item_lk
INSERT INTO organization.eqms_pnd_item_lk (
  eqms_tenant_key, fk_eqms_organization_id, pnd_item, status, created_date, created_by, modified_date, modified_by, pnd_item_category, pnd_item_identifier, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'GMDN Code', 1, NOW(), 1, NULL, NULL, 'text', 'gmdn_code', 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Abbreviation', 1, NOW(), 1, NULL, NULL, 'text', 'abbreviation', 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Development Cost', 1, NOW(), 1, NULL, NULL, 'text', 'development_cost', 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Buyer', 1, NOW(), 1, NULL, NULL, 'buyer_chosen', 'buyer', 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 'End User', 1, NOW(), 1, NULL, NULL, 'end_user_chosen', 'end_user', 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Competitor Information', 1, NOW(), 1, NULL, NULL, 'text', 'competitor_information', 6),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Product Features', 1, NOW(), 1, NULL, NULL, 'text', 'product_features', 7),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Service Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'service_requirements', 8),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Packaging Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'packaging_requirements', 9),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Delivery Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'delivery_requirements', 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Environmental Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'environmental_requirements', 11),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Documentation Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'documentation_requirements', 12),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Target Selling Price', 1, NOW(), 1, NULL, NULL, 'text', 'target_selling_price', 13),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Quantity Forecast (3 Years)', 1, NOW(), 1, NULL, NULL, 'text', 'quantity_forecast_3_years', 14),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Target Timeline for Product Launch', 1, NOW(), 1, NULL, NULL, 'text', 'target_timeline_for_product_launch', 15),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Post Delivery Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'post_delivery_requirements', 16),
(VAR_TENANT_KEY, VAR_ORG_ID, 'EMDN Code', 1, NOW(), 1, NULL, NULL, 'text', 'emdn_code', 17),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Generic Name of Product', 1, NOW(), 1, NULL, NULL, 'text', 'product_generic_name', 18),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Intented Use of Product', 1, NOW(), 1, NULL, NULL, 'text', 'intended_use_of_product', 19),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Application of the product', 1, NOW(), 1, NULL, NULL, 'text', 'application_of_product', 20),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Product Category', 1, NOW(), 1, NULL, NULL, 'product_category_chosen', 'product_category', 21);


-- eqms_target_audience_type_lk
INSERT INTO organization.eqms_target_audience_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, target_audience_type, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Nurse', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Technician', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Doctor', 1, NOW(), 1, NULL, NULL, 3);

-- eqms_use_environment_lk
INSERT INTO organization.eqms_use_environment_lk (
  eqms_tenant_key, ref_id, fk_eqms_organization_id, use_environment, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, 1, VAR_ORG_ID, 'nurse', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, 2, VAR_ORG_ID, 'technician', 1, NULL, NULL, NULL, NULL);

-- eqms_alarm_type_lk
INSERT INTO organization.eqms_alarm_type_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  alarm_type,
  slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Audible', 'audible', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Visual', 'visual', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Both', 'both', 1, NOW(), 1, NULL, NULL);

END $$;
