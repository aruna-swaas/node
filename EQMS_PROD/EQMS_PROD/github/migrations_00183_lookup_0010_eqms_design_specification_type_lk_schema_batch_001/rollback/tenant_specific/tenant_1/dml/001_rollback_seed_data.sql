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

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND specification_type = 'Intended Use' AND description = 'Intended use Description' AND status = 1 AND slug = 'intended_use' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND specification_type = 'Risk Control Measures' AND description = 'Description of Design Risk Control Measures' AND status = 1 AND slug = 'risk_control_measures' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND specification_type = 'Functional Specifications' AND description = 'Description of Functional Specifications' AND status = 1 AND slug = 'functional_specifications' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND specification_type = 'Performance Specifications' AND description = 'Description of Performance Specifications' AND status = 1 AND slug = 'performance_specification' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND specification_type = 'Shelf Life' AND description = 'Description of Shelf Life' AND status = 1 AND slug = 'shelf_life' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND specification_type = 'Statutory' AND description = 'Description of Statutory' AND status = 1 AND slug = 'statutory' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND specification_type = 'Safety' AND description = 'Description of Safety' AND status = 1 AND slug = 'safety' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND specification_type = 'Regulations' AND description = 'Description of Regulations' AND status = 1 AND slug = 'regulations' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND specification_type = 'Other Requirements' AND description = 'Description of Other Requirements' AND status = 1 AND slug = 'other_requirements' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND specification_type = 'Other Device Compatibility' AND description = 'Description of Other Device Compatibility' AND status = 1 AND slug = 'other_device_compatibility' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND specification_type = 'Accessories & Consumables' AND description = 'Description of Accessories & Consumables' AND status = 1 AND slug = 'accessories_&_consumables' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND specification_type = 'Toxicity & Biocompatability' AND description = 'Description of Toxicity and Biocompatability' AND status = 1 AND slug = 'toxicity_&_biocompatability' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND specification_type = 'Reliability Requirements' AND description = 'Description of Reliability Requirements' AND status = 1 AND slug = 'reliability_requirements' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND specification_type = 'Sterilization Requirements' AND description = 'Description of Sterilization Requirements' AND status = 1 AND slug = 'sterilization_requirements' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND specification_type = 'Training Requirements for Customers' AND description = 'Description of Training Requirement for Customers' AND status = 1 AND slug = 'training_requirements_for_customers' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND specification_type = 'References from the Previous Design' AND description = 'Description of References from the Previous Design' AND status = 1 AND slug = 'references_from_the_previous_design' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND specification_type = 'Adverse Events Design Input' AND description = 'Description of Adverse Event Design Input' AND status = 1 AND slug = 'adverse_events_design_input' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND specification_type = 'Servicing Requirements' AND description = 'Description of Servicing Requirements' AND status = 1 AND slug = 'servicing_requirements' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND specification_type = 'Installation Requirements' AND description = 'Description of Installation Requirements' AND status = 1 AND slug = 'installation_requirements' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND specification_type = 'Manufacturing Process' AND description = 'Description of Manufacturing Process' AND status = 1 AND slug = 'manufacturing_process' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND specification_type = 'Storage & Handling Requirements' AND description = 'Description of Storage & Handling Requirements' AND status = 1 AND slug = 'storage_&_handling_requirements' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND specification_type = 'Labelling and Packaging Requirements' AND description = 'Description of Labelling and Packaging Requirements' AND status = 1 AND slug = 'labelling_and_packaging_requirements' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND specification_type = 'Software Requirements' AND description = 'Description of Software Requirements' AND status = 1 AND slug = 'software_requirements' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND specification_type = 'Environmental Specifications' AND description = 'Description of Environmental Specifications' AND status = 1 AND slug = 'environmental_specifications' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND specification_type = 'Communication Protocol' AND description = 'Description of Communication Specifications' AND status = 1 AND slug = 'communication_protocol' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND specification_type = 'Usability Interface Specifications' AND description = 'Description of Usability Interface Specifications' AND status = 1 AND slug = 'usability_interface_specifications' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND specification_type = 'Power Supply' AND description = 'Description of Power Supply' AND status = 1 AND slug = 'power_supply' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND specification_type = 'Lifetime of the Device' AND description = 'Description of Lifetime of the Device' AND status = 1 AND slug = 'lifetime_of_the_device' AND fk_eqms_report_type_lk_id = 2;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND specification_type = 'Physical Characteristics' AND description = 'Description of Physical Characteristics' AND status = 1 AND slug = 'physical_characteristics' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND specification_type = 'User and Patient Requirements' AND description = 'Description of User and Patient Requirements' AND status = 1 AND slug = 'user_and_patient_requirements' AND fk_eqms_report_type_lk_id = 1;

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND specification_type = 'Standards' AND description = 'Description of Standards' AND status = 1 AND slug = 'standards';

-- Delete from organization.eqms_design_specification_type_lk
DELETE FROM organization.eqms_design_specification_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND specification_type = 'Alarms' AND description = 'Description of alarms' AND status = 1 AND slug = 'alarms';

END $$;
