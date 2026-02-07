-- Rollback: Delete seed data from file lookup_only_001_LOOKUP.sql
-- Original file: lookup_only_001_LOOKUP.sql
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

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND document_title = 'Applications of use procedure' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10 AND fk_eqms_record_generation_type_lk_id = 1;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND document_title = 'General Description' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10 AND fk_eqms_record_generation_type_lk_id = 2;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND document_title = 'Intended Use' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10 AND fk_eqms_record_generation_type_lk_id = 2;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND document_title = 'Declaration of Conformity' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND document_title = 'Compatibility of Drugs' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND document_title = 'Combination with other medical devices' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND document_title = 'Measuring function of device' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND document_title = 'Reprocessing of re-sterilisable medical devices' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND document_title = 'Aseptic filling' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND document_title = 'Coated Medical device (Biomimicry)' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND document_title = 'Blood derivatives, Human tissues – medical device combination' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND document_title = 'Drug / medicinal combination' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND document_title = 'Usability Engineering File' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND document_title = 'Microbiological safety' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND document_title = 'Clean Room Control and Monitoring Procedure and report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 67 AND document_title = 'Cleaning and Disinfection procedure' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 66 AND document_title = 'Sterility testing procedure' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 65 AND document_title = 'Microbial environment qualification reports and routine monitoring control procedure and reports' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 64 AND document_title = 'Routine sterilisation specification' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 63 AND document_title = 'Bioburden Recovery results' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 62 AND document_title = 'Bioburden Test Method Validation protocol and report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 61 AND document_title = 'Bioburden Trend Analysis report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 60 AND document_title = 'Bioburden Testing Procedure' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND document_title = 'Steriliser Validation Report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND document_title = 'Master Plan for sterilisation' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND document_title = 'Sterilisation procedure' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND document_title = 'Biostability Tests protocol and report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND document_title = 'Biological Evaluation protocol and report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND document_title = 'Biological Tests protocol and report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND document_title = 'Physical Tests protocol and report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND document_title = 'Chemical Tests protocol and report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND document_title = 'Applicable Standard test reports' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND document_title = 'Applicable Standards' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND document_title = 'Consumables' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND document_title = 'Accessories' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND document_title = 'Transportation validation report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND document_title = 'Transportation requirements' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND document_title = 'Storage - Stability study report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND document_title = 'Storage -stability study Protocol' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND document_title = 'Storage requirements' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND document_title = 'Device Maintenance Instructions' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND document_title = 'Service Manual' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND document_title = 'User Manual (IFU)' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND document_title = 'Labels' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND document_title = 'Labelling procedure' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND document_title = 'Shelf life - Stability study report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND document_title = 'Shelf life - Stability study Protocol' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND document_title = 'Shelf Life of the device' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND document_title = 'Packaging procedure' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND document_title = 'Packaging specification' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND document_title = 'Measuring equipment in QC/QA' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND document_title = 'Parts incoming inspection procedure' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND document_title = 'Infrastructure for manufacturing' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND document_title = 'Special Processes in Manufacturing' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND document_title = 'Manufacturing Jig / Equipment specification' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND document_title = 'Device Manufacturing Procedure' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND document_title = 'Product Life Time - Verification Report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND document_title = 'Product Life Time Declaration' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND document_title = 'Device Software binary code' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND document_title = 'Device Software Specification' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND document_title = 'Predicate Device Data' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND document_title = 'Risk Chart - After' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND document_title = 'Risk Chart - Before' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND document_title = 'Benefit Risk Analysis' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND document_title = 'Risk Management Report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND document_title = 'Hazards' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND document_title = 'Risk Management Plan' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND document_title = 'Risk Management File' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND document_title = 'Clinical Evaluation and Report' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND document_title = 'Clinical Data' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND document_title = 'Validation records' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND document_title = 'Verification records' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND document_title = 'Component Specifications / Data sheet' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND document_title = 'Purchase Bill of Materials' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND document_title = 'Manufacturing Bill of Materials' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND document_title = 'Design Bill of Materials' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND document_title = 'Drawings' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND document_title = 'Product Specification' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

-- Delete from organization.eqms_design_transfer_checklist_lk
DELETE FROM organization.eqms_design_transfer_checklist_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND document_title = 'Device Classification' AND status = 1 AND fk_eqms_file_id = VAR_FILE_ID_10;

END $$;
