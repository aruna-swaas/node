DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
--Regulatory DMF Document - Dev Database

-- Insert document template type lookup first
INSERT INTO dms.eqms_document_template_type_lk (ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by) VALUES 
(33, VAR_TENANT_KEY, VAR_ORG_ID, 'device_master_file', 1, NOW(), 1);

-- Insert document template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 33, 'PART 1 DEVICE MASTER FILE', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Regulations/Indian MDR/I-MDR forms/PART 1 DEVICE MASTER FILE.docx'), 1.0, 1, 'REGULATION_DMF_DOCUMENT_GENERATION', 2, NOW(), 1, 32);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 32, 'REGULATION_DMF_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (32, VAR_TENANT_KEY, VAR_ORG_ID, 33, 'PART 1 DEVICE MASTER FILE', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Regulations/Indian MDR/I-MDR forms/PART 1 DEVICE MASTER FILE.docx'), 1.0, 1, 'REGULATION_DMF_DOCUMENT_GENERATION', NOW(), NOW(), 1);

INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 32, 55, 1, NOW(), 1);

-- Executive Summary Text Variables (ref_ids 472-487)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'intendedUse', 32, '{intendedUse}', 1, 1, NOW(), 472),
(VAR_TENANT_KEY, VAR_ORG_ID, 'indicationsOfUse', 32, '{indicationsOfUse}', 1, 1, NOW(), 473),
(VAR_TENANT_KEY, VAR_ORG_ID, 'intendedPopulation', 32, '{intendedPopulation}', 1, 1, NOW(), 474),
(VAR_TENANT_KEY, VAR_ORG_ID, 'intendedUsers', 32, '{intendedUsers}', 1, 1, NOW(), 475),
(VAR_TENANT_KEY, VAR_ORG_ID, 'contraindicationsOfUse', 32, '{contraindicationsOfUse}', 1, 1, NOW(), 476),
(VAR_TENANT_KEY, VAR_ORG_ID, 'classOfDevice', 32, '{classOfDevice}', 1, 1, NOW(), 477),
(VAR_TENANT_KEY, VAR_ORG_ID, 'novelFeatures', 32, '{novelFeatures}', 1, 1, NOW(), 478),
(VAR_TENANT_KEY, VAR_ORG_ID, 'sterilizationInformation', 32, '{sterilizationInformation}', 1, 1, NOW(), 479),
(VAR_TENANT_KEY, VAR_ORG_ID, 'riskManagementPlan', 32, '{riskManagementPlan}', 1, 1, NOW(), 480),
(VAR_TENANT_KEY, VAR_ORG_ID, 'clinicalEvaluation', 32, '{clinicalEvaluation}', 1, 1, NOW(), 481),
(VAR_TENANT_KEY, VAR_ORG_ID, 'regulatoryStatus', 32, '{regulatoryStatus}', 1, 1, NOW(), 482),
(VAR_TENANT_KEY, VAR_ORG_ID, 'declarationOfConformity', 32, '{declarationOfConformity}', 1, 1, NOW(), 483),
(VAR_TENANT_KEY, VAR_ORG_ID, 'domesticPrice', 32, '{domesticPrice}', 1, 1, NOW(), 484),
(VAR_TENANT_KEY, VAR_ORG_ID, 'nonViableCellTissueDerivatives', 32, '{nonViableCellTissueDerivatives}', 1, 1, NOW(), 485),
(VAR_TENANT_KEY, VAR_ORG_ID, 'microbialRecombinantMaterials', 32, '{microbialRecombinantMaterials}', 1, 1, NOW(), 486),
(VAR_TENANT_KEY, VAR_ORG_ID, 'irradiatingComponents', 32, '{irradiatingComponents}', 1, 1, NOW(), 487);

-- Grid Variables (ref_ids 488-498)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'marketingHistory', 32, '{marketingHistory}', 1, 1, NOW(), 488),
(VAR_TENANT_KEY, VAR_ORG_ID, 'regulatoryApprovals', 32, '{regulatoryApprovals}', 1, 1, NOW(), 489),
(VAR_TENANT_KEY, VAR_ORG_ID, 'marketClearance', 32, '{marketClearance}', 1, 1, NOW(), 490),
(VAR_TENANT_KEY, VAR_ORG_ID, 'seriousAdverseEvents', 32, '{seriousAdverseEvents}', 1, 1, NOW(), 491),
(VAR_TENANT_KEY, VAR_ORG_ID, 'fieldSafetyCorrectiveAction', 32, '{fieldSafetyCorrectiveAction}', 1, 1, NOW(), 492),
(VAR_TENANT_KEY, VAR_ORG_ID, 'materialsInContactWithBody', 32, '{materialsInContactWithBody}', 1, 1, NOW(), 493),
(VAR_TENANT_KEY, VAR_ORG_ID, 'materialsNotInContactWithBody', 32, '{materialsNotInContactWithBody}', 1, 1, NOW(), 494),
(VAR_TENANT_KEY, VAR_ORG_ID, 'essentialPrinciplesChecklist', 32, '{essentialPrinciplesChecklist}', 1, 1, NOW(), 495),
(VAR_TENANT_KEY, VAR_ORG_ID, 'materialsDirectContactVerification', 32, '{materialsDirectContactVerification}', 1, 1, NOW(), 553),
(VAR_TENANT_KEY, VAR_ORG_ID, 'materialsIndirectContactVerification', 32, '{materialsIndirectContactVerification}', 1, 1, NOW(), 554),
(VAR_TENANT_KEY, VAR_ORG_ID, 'biocompatibleTestResults', 32, '{biocompatibleTestResults}', 1, 1, NOW(), 555);

-- Device Description Text Variables (ref_ids 496-510)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'materialsOfConstruction', 32, '{materialsOfConstruction}', 1, 1, NOW(), 496),
(VAR_TENANT_KEY, VAR_ORG_ID, 'contraindications', 32, '{contraindications}', 1, 1, NOW(), 497),
(VAR_TENANT_KEY, VAR_ORG_ID, 'warningsPrecautions', 32, '{warningsPrecautions}', 1, 1, NOW(), 498),
(VAR_TENANT_KEY, VAR_ORG_ID, 'potentialAdverseEffects', 32, '{potentialAdverseEffects}', 1, 1, NOW(), 499),
(VAR_TENANT_KEY, VAR_ORG_ID, 'patientPopulationCriteria', 32, '{patientPopulationCriteria}', 1, 1, NOW(), 500),
(VAR_TENANT_KEY, VAR_ORG_ID, 'accessoriesDescription', 32, '{accessoriesDescription}', 1, 1, NOW(), 501),
(VAR_TENANT_KEY, VAR_ORG_ID, 'novelFeaturesExplanation', 32, '{novelFeaturesExplanation}', 1, 1, NOW(), 502),
(VAR_TENANT_KEY, VAR_ORG_ID, 'principleOfOperation', 32, '{principleOfOperation}', 1, 1, NOW(), 503),
(VAR_TENANT_KEY, VAR_ORG_ID, 'deviceConfigurationsVariants', 32, '{deviceConfigurationsVariants}', 1, 1, NOW(), 504),
(VAR_TENANT_KEY, VAR_ORG_ID, 'keyFunctionalElements', 32, '{keyFunctionalElements}', 1, 1, NOW(), 505),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productSpecifications', 32, '{productSpecifications}', 1, 1, NOW(), 506),
(VAR_TENANT_KEY, VAR_ORG_ID, 'previousGeneration', 32, '{previousGeneration}', 1, 1, NOW(), 507),
(VAR_TENANT_KEY, VAR_ORG_ID, 'predicateDevices', 32, '{predicateDevices}', 1, 1, NOW(), 508),
(VAR_TENANT_KEY, VAR_ORG_ID, 'comparativeAnalysis', 32, '{comparativeAnalysis}', 1, 1, NOW(), 509),
(VAR_TENANT_KEY, VAR_ORG_ID, 'ionizingRadiation', 32, '{ionizingRadiation}', 1, 1, NOW(), 510);

-- Labelling Text Variables (ref_ids 511-513)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'productLabels', 32, '{productLabels}', 1, 1, NOW(), 511),
(VAR_TENANT_KEY, VAR_ORG_ID, 'accessoryLabels', 32, '{accessoryLabels}', 1, 1, NOW(), 512),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productBrochure', 32, '{productBrochure}', 1, 1, NOW(), 513);

-- Design & Manufacturing Text Variables (ref_ids 514-515)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'designProcessFlow', 32, '{designProcessFlow}', 1, 1, NOW(), 514),
(VAR_TENANT_KEY, VAR_ORG_ID, 'manufacturingProcessFlow', 32, '{manufacturingProcessFlow}', 1, 1, NOW(), 515);

-- Risk Analysis Text Variables (ref_id 516)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'riskAnalysis', 32, '{riskAnalysis}', 1, 1, NOW(), 516);

-- Verification & Validation Text Variables (ref_ids 517-531)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'generalVerification', 32, '{generalVerification}', 1, 1, NOW(), 517),
(VAR_TENANT_KEY, VAR_ORG_ID, 'biocompatibility', 32, '{biocompatibility}', 1, 1, NOW(), 518),
(VAR_TENANT_KEY, VAR_ORG_ID, 'biocompatibleTestReports', 32, '{biocompatibleTestReports}', 1, 1, NOW(), 519),
(VAR_TENANT_KEY, VAR_ORG_ID, 'biologicalEvaluation', 32, '{biologicalEvaluation}', 1, 1, NOW(), 520),
(VAR_TENANT_KEY, VAR_ORG_ID, 'medicinalSubstances', 32, '{medicinalSubstances}', 1, 1, NOW(), 521),
(VAR_TENANT_KEY, VAR_ORG_ID, 'biologicalSafety', 32, '{biologicalSafety}', 1, 1, NOW(), 522),
(VAR_TENANT_KEY, VAR_ORG_ID, 'sterilizationETOMethod', 32, '{sterilizationETOMethod}', 1, 1, NOW(), 523),
(VAR_TENANT_KEY, VAR_ORG_ID, 'softwareVerification', 32, '{softwareVerification}', 1, 1, NOW(), 524),
(VAR_TENANT_KEY, VAR_ORG_ID, 'animalStudies', 32, '{animalStudies}', 1, 1, NOW(), 525),
(VAR_TENANT_KEY, VAR_ORG_ID, 'stabilityDataMainUnit', 32, '{stabilityDataMainUnit}', 1, 1, NOW(), 526),
(VAR_TENANT_KEY, VAR_ORG_ID, 'stabilityDataAccessories', 32, '{stabilityDataAccessories}', 1, 1, NOW(), 527),
(VAR_TENANT_KEY, VAR_ORG_ID, 'acceleratedStabilityStudy', 32, '{acceleratedStabilityStudy}', 1, 1, NOW(), 528),
(VAR_TENANT_KEY, VAR_ORG_ID, 'clinicalEvidence', 32, '{clinicalEvidence}', 1, 1, NOW(), 529),
(VAR_TENANT_KEY, VAR_ORG_ID, 'postMarketSurveillance', 32, '{postMarketSurveillance}', 1, 1, NOW(), 530),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productGenericName', 32, '{productGenericName}', 1, 1, NOW(), 531),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productIntendedUse', 32, '{productIntendedUse}', 1, 1, NOW(), 532),
(VAR_TENANT_KEY, VAR_ORG_ID, 'introductoryDescriptiveInformation', 32, '{introductoryDescriptiveInformation}', 1, 1, NOW(), 533),
(VAR_TENANT_KEY, VAR_ORG_ID, 'modelVariantName', 32, '{modelVariantName}', 1, 1, NOW(), 534),
(VAR_TENANT_KEY, VAR_ORG_ID, 'modelNumber', 32, '{modelNumber}', 1, 1, NOW(), 535),
(VAR_TENANT_KEY, VAR_ORG_ID, 'productCategory', 32, '{productCategory}', 1, 1, NOW(), 556);

-- Mapper Text Variables (ref_id 536)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 32, '{mapperVariable}', 1, 1, NOW(), 536);

-- Company Name Text Variables (ref_id 537)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'companyName', 32, '{companyName}', 1, 1, NOW(), 537);

-- Nested Relation Variables for Predicate Device Aspects (ref_ids 538-552)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, variable_type, created_by, created_date, ref_id) VALUES 
-- General Equivalency Feature (ref_id 538)
(VAR_TENANT_KEY, VAR_ORG_ID, 'generalEquivalencyFeature', 32, '{generalEquivalencyFeature}', 1, 'nested_relation', 1, NOW(), 538),
-- General Equivalency Manufacturer (ref_id 539)
(VAR_TENANT_KEY, VAR_ORG_ID, 'generalEquivalencyManufacturer', 32, '{generalEquivalencyManufacturer}', 1, 'nested_relation', 1, NOW(), 539),
-- Regulatory Equivalency Classification (ref_id 540)
(VAR_TENANT_KEY, VAR_ORG_ID, 'regulatoryEquivalencyClassification', 32, '{regulatoryEquivalencyClassification}', 1, 'nested_relation', 1, NOW(), 540),
-- Regulatory Equivalency System Certification (ref_id 541)
(VAR_TENANT_KEY, VAR_ORG_ID, 'regulatoryEquivalencySystemCertification', 32, '{regulatoryEquivalencySystemCertification}', 1, 'nested_relation', 1, NOW(), 541),
-- Regulatory Standards (ref_id 542)
(VAR_TENANT_KEY, VAR_ORG_ID, 'regulatoryStandards', 32, '{regulatoryStandards}', 1, 'nested_relation', 1, NOW(), 542),
-- Regulatory Intended Use (ref_id 543)
(VAR_TENANT_KEY, VAR_ORG_ID, 'regulatoryIntendedUse', 32, '{regulatoryIntendedUse}', 1, 'nested_relation', 1, NOW(), 543),
-- Regulatory Indications for Use (ref_id 544)
(VAR_TENANT_KEY, VAR_ORG_ID, 'regulatoryIndicationsForUse', 32, '{regulatoryIndicationsForUse}', 1, 'nested_relation', 1, NOW(), 544),
-- Tech TBD1 (ref_id 545)
(VAR_TENANT_KEY, VAR_ORG_ID, 'TechTBD1', 32, '{TechTBD1}', 1, 'nested_relation', 1, NOW(), 545),
-- Tech TBD2 (ref_id 546)
(VAR_TENANT_KEY, VAR_ORG_ID, 'TechTBD2', 32, '{TechTBD2}', 1, 'nested_relation', 1, NOW(), 546),
-- Tech TBD3 (ref_id 547)
(VAR_TENANT_KEY, VAR_ORG_ID, 'TechTBD3', 32, '{TechTBD3}', 1, 'nested_relation', 1, NOW(), 547),
-- Tech TBD4 (ref_id 548)
(VAR_TENANT_KEY, VAR_ORG_ID, 'TechTBD4', 32, '{TechTBD4}', 1, 'nested_relation', 1, NOW(), 548),
-- Biological Requirements (ref_id 549)
(VAR_TENANT_KEY, VAR_ORG_ID, 'biologicalRequirements', 32, '{biologicalRequirements}', 1, 'nested_relation', 1, NOW(), 549),
-- Biological Sterile (ref_id 550)
(VAR_TENANT_KEY, VAR_ORG_ID, 'biologicalSterile', 32, '{biologicalSterile}', 1, 'nested_relation', 1, NOW(), 550),
-- Biological Sterilization Type (ref_id 551)
(VAR_TENANT_KEY, VAR_ORG_ID, 'biologicalSterlizationType', 32, '{biologicalSterlizationType}', 1, 'nested_relation', 1, NOW(), 551),
-- Clinical Equivalency (ref_id 552)
(VAR_TENANT_KEY, VAR_ORG_ID, 'clinicalEquivalency', 32, '{clinicalEquivalency}', 1, 'nested_relation', 1, NOW(), 552);

-- Transformation Rules for Text Variables (operation_id = 10)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 472, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 473, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 474, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 475, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 476, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 477, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 478, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 479, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 480, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 481, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 482, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 483, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 484, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 485, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 486, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 487, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 496, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 497, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 498, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 499, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 500, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 501, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 502, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 503, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 504, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 505, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 506, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 507, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 508, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 509, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 510, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 511, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 512, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 513, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 514, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 515, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 516, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 517, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 518, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 519, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 520, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 521, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 522, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 523, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 524, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 525, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 526, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 527, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 528, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 529, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 530, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 531, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 532, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 533, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 534, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 535, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 536, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 537, 10, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 556, 10, 1, 1, NOW(), 1);

-- Transformation Rules for Grid Variables (operation_id = 7)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 488, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 489, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 490, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 491, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 492, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 493, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 494, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 495, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 553, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 554, 7, 1, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 555, 7, 1, 1, NOW(), 1);

-- Transformation Rules for Nested Relation Variables (operation_id = 8)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by, condition) VALUES 
-- General Equivalency Feature (ref_id 538)
(VAR_TENANT_KEY, VAR_ORG_ID, 538, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 3}}}'),
-- General Equivalency Manufacturer (ref_id 539)
(VAR_TENANT_KEY, VAR_ORG_ID, 539, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 4}}}'),
-- Regulatory Equivalency Classification (ref_id 540)
(VAR_TENANT_KEY, VAR_ORG_ID, 540, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 6}}}'),
-- Regulatory Equivalency System Certification (ref_id 541)
(VAR_TENANT_KEY, VAR_ORG_ID, 541, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 7}}}'),
-- Regulatory Standards (ref_id 542)
(VAR_TENANT_KEY, VAR_ORG_ID, 542, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 8}}}'),
-- Regulatory Intended Use (ref_id 543)
(VAR_TENANT_KEY, VAR_ORG_ID, 543, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 9}}}'),
-- Regulatory Indications for Use (ref_id 544)
(VAR_TENANT_KEY, VAR_ORG_ID, 544, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 10}}}'),
-- Tech TBD1 (ref_id 545)
(VAR_TENANT_KEY, VAR_ORG_ID, 545, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 12}}}'),
-- Tech TBD2 (ref_id 546)
(VAR_TENANT_KEY, VAR_ORG_ID, 546, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 13}}}'),
-- Tech TBD3 (ref_id 547)
(VAR_TENANT_KEY, VAR_ORG_ID, 547, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 14}}}'),
-- Tech TBD4 (ref_id 548)
(VAR_TENANT_KEY, VAR_ORG_ID, 548, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 15}}}'),
-- Biological Requirements (ref_id 549)
(VAR_TENANT_KEY, VAR_ORG_ID, 549, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 17}}}'),
-- Biological Sterile (ref_id 550)
(VAR_TENANT_KEY, VAR_ORG_ID, 550, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 18}}}'),
-- Biological Sterilization Type (ref_id 551)
(VAR_TENANT_KEY, VAR_ORG_ID, 551, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 19}}}'),
-- Clinical Equivalency (ref_id 552)
(VAR_TENANT_KEY, VAR_ORG_ID, 552, 8, 1, 1, NOW(), 1, '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 20}}}');

-- Mapper Data for Text Variables
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date) VALUES 
-- Executive Summary Mappers
(VAR_TENANT_KEY, VAR_ORG_ID, 472, 'eqms_project_design_input_gathering', 'intended_use', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 473, 'eqms_project_design_input_gathering', 'indications_of_use', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 474, 'eqms_project_design_input_gathering', 'intended_population', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 475, 'eqms_project_design_input_gathering', 'intended_users', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 476, 'eqms_project_design_input_gathering', 'contraindications_of_use', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 477, 'eqms_reg_product_classification', 'classification', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 478, 'eqms_reg_dmf_executive_summary', 'novel_feature', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 479, 'eqms_reg_dmf_executive_summary', 'sterilization_information', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 480, 'eqms_reg_dmf_executive_summary', 'risk_management_controls', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 481, 'eqms_reg_dmf_executive_summary', 'clinical_evaluation', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 482, 'eqms_reg_dmf_executive_summary', 'regulatory_status', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 483, 'eqms_reg_dmf_executive_summary', 'declaration_conformity', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 484, 'eqms_reg_dmf_executive_summary', 'device_domestic_price', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 485, 'eqms_reg_dmf_executive_summary', 'non_viable_cell_tissue_derivative', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 486, 'eqms_reg_dmf_executive_summary', 'microbial_recombinant_origin_material', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 487, 'eqms_reg_dmf_executive_summary', 'irradiating_component_type', NULL, 1, 1, NOW()),

-- Device Description Mappers
(VAR_TENANT_KEY, VAR_ORG_ID, 496, 'eqms_reg_device_product_specification', 'material_construction', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 497, 'eqms_reg_device_product_specification', 'contra_indications', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 498, 'eqms_reg_device_product_specification', 'precautions', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 499, 'eqms_reg_device_product_specification', 'potential_adverse_effects', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 500, 'eqms_reg_device_product_specification', 'intended_use_patient_criteria', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 501, 'eqms_reg_device_product_specification', 'accessory_combination_product_description', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 502, 'eqms_reg_device_product_specification', 'novel_features', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 503, 'eqms_reg_device_product_specification', 'principle_of_operation', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 504, 'eqms_reg_device_product_specification', 'device_configurations_variants', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 505, 'eqms_reg_device_product_specification', 'key_functional_elements_description', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 506, 'eqms_reg_device_product_specification', 'product_specifications', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 507, 'eqms_reg_device_product_specification', 'previous_generation', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 508, 'eqms_reg_device_product_specification', 'predicate_device_available', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 509, 'eqms_reg_device_product_specification', 'comparative_analysis', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 510, 'eqms_reg_device_product_specification', 'emits_ionizing_radiation', NULL, 1, 1, NOW()),

-- Labelling Mappers
(VAR_TENANT_KEY, VAR_ORG_ID, 511, 'eqms_reg_dmf_labelling', 'product_labels', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 512, 'eqms_reg_dmf_labelling', 'utility_type_lables', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 513, 'eqms_reg_dmf_labelling', 'product_brochure', 'HTML', 1, 1, NOW()),

-- Design & Manufacturing Mappers
(VAR_TENANT_KEY, VAR_ORG_ID, 514, 'eqms_reg_dmf_design_manufacturing_information', 'device_design', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 515, 'eqms_reg_dmf_design_manufacturing_information', 'manufacturing_process', 'HTML', 1, 1, NOW()),

-- Risk Analysis Mappers
(VAR_TENANT_KEY, VAR_ORG_ID, 516, 'eqms_reg_dmf_risk_control_summary', 'risk_analysis', 'HTML', 1, 1, NOW()),

-- Verification & Validation Mappers
(VAR_TENANT_KEY, VAR_ORG_ID, 517, 'eqms_reg_device_verification_validation', 'general', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 518, 'eqms_reg_device_verification_validation', 'biocompatibility', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 519, 'eqms_reg_device_verification_validation', 'biocompatible_test_reports', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 520, 'eqms_reg_device_verification_validation', 'biological_evaluation', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 521, 'eqms_reg_device_verification_validation', 'medicinal_substances', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 522, 'eqms_reg_device_verification_validation', 'biological_safety', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 523, 'eqms_reg_device_verification_validation', 'sterile_eto_method', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 524, 'eqms_reg_device_verification_validation', 'software_verification', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 525, 'eqms_reg_device_verification_validation', 'animal_studies', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 526, 'eqms_reg_device_verification_validation', 'main_unit', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 527, 'eqms_reg_device_verification_validation', 'utility_type_details', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 528, 'eqms_reg_device_verification_validation', 'accelerated_stability_study_report', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 529, 'eqms_reg_device_verification_validation', 'clinical_evidence', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 530, 'eqms_reg_device_verification_validation', 'post_market_surveillance_data', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 531, 'eqms_organization_product', 'product_generic_name', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 532, 'eqms_organization_product', 'product_intended_use', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 536, 'eqms_reg_device_master_file', 'id', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 536, 'eqms_reg_device_product_specification_aspects', 'ref_id', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 537, 'eqms_organization', 'organization_name', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 556, 'eqms_product_category_lk', 'product_category', NULL, 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date, form_condition) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 533, 'eqms_project', 'project_reason_description', NULL, 1, 1, NOW(), '{"id":"@project_id"}');

-- Mapper Data for Grid Variables
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date) VALUES 
-- Marketing History Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 488, 'eqms_reg_marketing_device_launch', 'year', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 488, 'eqms_reg_marketing_device_launch', 'nos_marketed_qty', NULL, 1, 1, NOW()),

-- Regulatory Approvals Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 489, 'eqms_reg_country_lk', 'country_name', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 489, 'eqms_reg_regulatory_approvals', 'approved_indication', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 489, 'eqms_reg_regulatory_approvals', 'approved_shelf_life', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 489, 'eqms_reg_regulatory_approvals', 'device_class', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 489, 'eqms_reg_regulatory_approvals', 'approved_date', NULL, 1, 1, NOW()),

-- Market Clearance Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 490, 'eqms_reg_regulatory_agency_lk', 'regulatory_agency', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 490, 'eqms_reg_market_clearance', 'indication_use', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 490, 'eqms_reg_market_clearance', 'registration_status', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 490, 'eqms_reg_market_clearance', 'clearance_date', NULL, 1, 1, NOW()),

-- Serious Adverse Events Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 491, 'eqms_reg_serious_adverse_event', 'serious_adverse_event', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 491, 'eqms_reg_serious_adverse_event', 'start_date', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 491, 'eqms_reg_serious_adverse_event', 'end_date', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 491, 'eqms_reg_serious_adverse_event', 'sae_reported_count', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 491, 'eqms_reg_serious_adverse_event', 'total_unit_sold', NULL, 1, 1, NOW()),

-- Field Safety Corrective Action Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 492, 'eqms_reg_field_safety_corrective_action', 'fsca_reason', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 492, 'eqms_reg_field_safety_corrective_action', 'reason_action', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 492, 'eqms_reg_field_safety_corrective_action', 'fcsa_date', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 492, 'eqms_reg_country_lk', 'country_name', NULL, 1, 1, NOW()),

-- Materials in Contact with Body Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 493, 'eqms_reg_material_direct_contact', 'part_name', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 493, 'eqms_reg_material_direct_contact', 'material', NULL, 1, 1, NOW()),

-- Materials not in Contact with Body Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 494, 'eqms_reg_material_indirect_contact', 'part_name', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 494, 'eqms_reg_material_indirect_contact', 'material', NULL, 1, 1, NOW()),

-- Essential Principles Checklist Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 495, 'eqms_reg_dmf_essential_principles_checklist', 'essential_principles_checklist', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 495, 'eqms_reg_dmf_essential_principles_checklist', 'is_relevant', 'boolean', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 495, 'eqms_reg_dmf_essential_principles_checklist', 'specification_standard_subclause_reference', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 495, 'eqms_reg_dmf_essential_principles_checklist', 'is_complies', 'boolean', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 495, 'eqms_reg_dmf_essential_principles_checklist', 'document_reference_notes', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 534, 'eqms_product_variants', 'model_name', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 535, 'eqms_product_variants', 'model_number', NULL, 1, 1, NOW()),

-- Materials Direct Contact Verification Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 553, 'eqms_reg_material_direct_contact_verification', 'material', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 553, 'eqms_reg_material_direct_contact_verification', 'part_name', NULL, 1, 1, NOW()),

-- Materials Indirect Contact Verification Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 554, 'eqms_reg_material_indirect_contact_verification', 'material', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 554, 'eqms_reg_material_indirect_contact_verification', 'part_name', NULL, 1, 1, NOW()),

-- Biocompatible Test Results Grid
(VAR_TENANT_KEY, VAR_ORG_ID, 555, 'eqms_reg_biocompatible_test_results', 'std_ref', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 555, 'eqms_reg_biocompatible_test_results', 'scope_of_plan', 'HTML', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 555, 'eqms_reg_biocompatible_test_results', 'result', NULL, 1, 1, NOW());

-- Mapper Data for Nested Relation Variables
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_by, created_date) VALUES 
-- General Equivalency Feature (ref_id 538)
(VAR_TENANT_KEY, VAR_ORG_ID, 538, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- General Equivalency Manufacturer (ref_id 539)
(VAR_TENANT_KEY, VAR_ORG_ID, 539, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Regulatory Equivalency Classification (ref_id 540)
(VAR_TENANT_KEY, VAR_ORG_ID, 540, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Regulatory Equivalency System Certification (ref_id 541)
(VAR_TENANT_KEY, VAR_ORG_ID, 541, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Regulatory Standards (ref_id 542)
(VAR_TENANT_KEY, VAR_ORG_ID, 542, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Regulatory Intended Use (ref_id 543)
(VAR_TENANT_KEY, VAR_ORG_ID, 543, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Regulatory Indications for Use (ref_id 544)
(VAR_TENANT_KEY, VAR_ORG_ID, 544, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Tech TBD1 (ref_id 545)
(VAR_TENANT_KEY, VAR_ORG_ID, 545, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Tech TBD2 (ref_id 546)
(VAR_TENANT_KEY, VAR_ORG_ID, 546, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Tech TBD3 (ref_id 547)
(VAR_TENANT_KEY, VAR_ORG_ID, 547, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Tech TBD4 (ref_id 548)
(VAR_TENANT_KEY, VAR_ORG_ID, 548, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Biological Requirements (ref_id 549)
(VAR_TENANT_KEY, VAR_ORG_ID, 549, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Biological Sterile (ref_id 550)
(VAR_TENANT_KEY, VAR_ORG_ID, 550, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Biological Sterilization Type (ref_id 551)
(VAR_TENANT_KEY, VAR_ORG_ID, 551, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW()),
-- Clinical Equivalency (ref_id 552)
(VAR_TENANT_KEY, VAR_ORG_ID, 552, 'eqms_reg_aspects_predicate_device', 'predicate_device_company', 1, 1, NOW());

END $$;
