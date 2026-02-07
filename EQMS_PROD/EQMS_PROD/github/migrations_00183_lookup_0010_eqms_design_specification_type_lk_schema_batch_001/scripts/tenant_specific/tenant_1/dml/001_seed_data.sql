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

END $$;
