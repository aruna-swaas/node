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

END $$;
