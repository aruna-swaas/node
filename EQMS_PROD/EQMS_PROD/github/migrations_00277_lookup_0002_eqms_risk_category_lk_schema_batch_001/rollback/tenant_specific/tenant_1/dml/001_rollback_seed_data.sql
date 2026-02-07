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
BEGIN

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND category_name = 'Other Hazards' AND status = 1 AND slug = 'other_hazards';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND category_name = 'Medical device produce an output that is used as an input for determining clinical action or function' AND status = 1 AND slug = 'medical_device_produce_an_output_that_is_used_as_an_input_for_determining_clinical_action_or_function';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND category_name = 'Does the device have a degree of autonomy (AI)' AND status = 1 AND slug = 'does_the_device_have_a_degree_of_autonomy_ai';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND category_name = 'Device Allow access to information' AND status = 1 AND slug = 'device_allow_access_to_information';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND category_name = 'Inventory Hazards' AND status = 1 AND slug = 'inventory_hazards';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND category_name = 'Sales Hazards' AND status = 1 AND slug = 'sales_hazards';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND category_name = 'Service Hazards' AND status = 1 AND slug = 'service_hazards';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND category_name = 'QAC Hazards' AND status = 1 AND slug = 'qac_hazards';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND category_name = 'Packaging and Transportation Hazards' AND status = 1 AND slug = 'packaging_and_transportation_hazards';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND category_name = 'Purchase Hazards' AND status = 1 AND slug = 'purchase_hazards';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND category_name = 'Manufacturing Hazards' AND status = 1 AND slug = 'manufacturing_hazards';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND category_name = 'Thermal cut-outs or Overload control devices' AND status = 1 AND slug = 'thermal_cut_outs_or_overload_control_devices';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND category_name = 'Movable parts' AND status = 1 AND slug = 'movable_parts';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND category_name = 'Batteries' AND status = 1 AND slug = 'batteries';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND category_name = 'Source of input power' AND status = 1 AND slug = 'source_of_input_power';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND category_name = 'Physiological effects' AND status = 1 AND slug = 'physiological_effects';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND category_name = 'Detachable parts identification' AND status = 1 AND slug = 'detachable_parts_identification';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND category_name = 'Actuating mechanism' AND status = 1 AND slug = 'actuating_mechanism';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND category_name = 'Transport and packaging' AND status = 1 AND slug = 'transport_and_packaging';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND category_name = 'Essential performance' AND status = 1 AND slug = 'essential_performance';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND category_name = 'Device characteristics' AND status = 1 AND slug = 'device_characteristics';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND category_name = 'Critical data for patient care' AND status = 1 AND slug = 'critical_data_for_patient_care';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND category_name = 'Deliberate misuse' AND status = 1 AND slug = 'deliberate_misuse';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND category_name = 'Alarm system' AND status = 1 AND slug = 'alarm_system';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND category_name = 'Human factors' AND status = 1 AND slug = 'human_factors';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND category_name = 'New manufacturing process' AND status = 1 AND slug = 'new_manufacturing_process';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND category_name = 'Information on safe use' AND status = 1 AND slug = 'information_on_safe_use';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND category_name = 'Requirement of special training for installation or use' AND status = 1 AND slug = 'requirement_of_special_training_for_installation_or_use';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND category_name = 'Safe decommissioning or disposal' AND status = 1 AND slug = 'safe_decommissioning_or_disposal';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND category_name = 'Intended for single use' AND status = 1 AND slug = 'intended_for_single_use';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND category_name = 'Lifetime of the device' AND status = 1 AND slug = 'lifetime_of_the_device';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND category_name = 'Device subjected to mechanical forces' AND status = 1 AND slug = 'device_subjected_to_mechanical_forces';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND category_name = 'Long term use effects' AND status = 1 AND slug = 'long_term_use_effects';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND category_name = 'Shelf life' AND status = 1 AND slug = 'shelf_life';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND category_name = 'Software' AND status = 1 AND slug = 'software';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND category_name = 'Maintenance and calibration' AND status = 1 AND slug = 'maintenance_and_calibration';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND category_name = 'Consumables and accessories' AND status = 1 AND slug = 'consumables_and_accessories';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND category_name = 'Influence on environment' AND status = 1 AND slug = 'influence_on_environment';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND category_name = 'Susceptibility to environmental influence' AND status = 1 AND slug = 'susceptibility_to_environmental_influence';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND category_name = 'Unwanted output of energy or substance' AND status = 1 AND slug = 'unwanted_output_of_energy_or_substance';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND category_name = 'Conjunction with medicines or other medical technologies' AND status = 1 AND slug = 'conjunction_with_medicines_or_other_medical_technologies';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND category_name = 'Device is interpretative' AND status = 1 AND slug = 'device_is_interpretative';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND category_name = 'Measurements taken by the device' AND status = 1 AND slug = 'measurements_taken_by_the_device';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND category_name = 'Patient environment modification' AND status = 1 AND slug = 'patient_environment_modification';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND category_name = 'Cleaning and disinfection' AND status = 1 AND slug = 'cleaning_and_disinfection';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND category_name = 'Sterility' AND status = 1 AND slug = 'sterility';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND category_name = 'Biological materials processed by the device' AND status = 1 AND slug = 'biological_materials_processed_by_the_device';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND category_name = 'Substances delivered or extracted from patient' AND status = 1 AND slug = 'substances_delivered_or_extracted_from_patient';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND category_name = 'Energy delivered or extracted from patient' AND status = 1 AND slug = 'energy_delivered_or_extracted_from_patient';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND category_name = 'Materials / components used in contact with or used with' AND status = 1 AND slug = 'materials_components_used_in_contact_with_or_used_with';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND category_name = 'Intended to be in contact with the patient or other persons' AND status = 1 AND slug = 'intended_to_be_in_contact_with_the_patient_or_other_persons';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND category_name = 'Intended to be implanted' AND status = 1 AND slug = 'intended_to_be_implanted';

-- Delete from organization.eqms_risk_category_lk
DELETE FROM organization.eqms_risk_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND category_name = 'Intended use' AND status = 1 AND slug = 'intended_use';

END $$;
