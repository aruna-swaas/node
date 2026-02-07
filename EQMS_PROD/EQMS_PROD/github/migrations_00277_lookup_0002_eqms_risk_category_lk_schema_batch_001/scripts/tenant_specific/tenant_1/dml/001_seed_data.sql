DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_risk_category_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, category_name, status, created_by, created_date, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Intended use', 1, 1, NOW(), 'intended_use'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Intended to be implanted', 1, 1, NOW(), 'intended_to_be_implanted'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Intended to be in contact with the patient or other persons', 1, 1, NOW(), 'intended_to_be_in_contact_with_the_patient_or_other_persons'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Materials / components used in contact with or used with', 1, 1, NOW(), 'materials_components_used_in_contact_with_or_used_with'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Energy delivered or extracted from patient', 1, 1, NOW(), 'energy_delivered_or_extracted_from_patient'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Substances delivered or extracted from patient', 1, 1, NOW(), 'substances_delivered_or_extracted_from_patient'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Biological materials processed by the device', 1, 1, NOW(), 'biological_materials_processed_by_the_device'),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Sterility', 1, 1, NOW(), 'sterility'),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Cleaning and disinfection', 1, 1, NOW(), 'cleaning_and_disinfection'),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Patient environment modification', 1, 1, NOW(), 'patient_environment_modification'),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Measurements taken by the device', 1, 1, NOW(), 'measurements_taken_by_the_device'),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Device is interpretative', 1, 1, NOW(), 'device_is_interpretative'),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Conjunction with medicines or other medical technologies', 1, 1, NOW(), 'conjunction_with_medicines_or_other_medical_technologies'),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Unwanted output of energy or substance', 1, 1, NOW(), 'unwanted_output_of_energy_or_substance'),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'Susceptibility to environmental influence', 1, 1, NOW(), 'susceptibility_to_environmental_influence'),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 'Influence on environment', 1, 1, NOW(), 'influence_on_environment'),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'Consumables and accessories', 1, 1, NOW(), 'consumables_and_accessories'),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 'Maintenance and calibration', 1, 1, NOW(), 'maintenance_and_calibration'),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 'Software', 1, 1, NOW(), 'software'),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 'Shelf life', 1, 1, NOW(), 'shelf_life'),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 'Long term use effects', 1, 1, NOW(), 'long_term_use_effects'),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 'Device subjected to mechanical forces', 1, 1, NOW(), 'device_subjected_to_mechanical_forces'),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 'Lifetime of the device', 1, 1, NOW(), 'lifetime_of_the_device'),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 'Intended for single use', 1, 1, NOW(), 'intended_for_single_use'),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 'Safe decommissioning or disposal', 1, 1, NOW(), 'safe_decommissioning_or_disposal'),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 'Requirement of special training for installation or use', 1, 1, NOW(), 'requirement_of_special_training_for_installation_or_use'),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 'Information on safe use', 1, 1, NOW(), 'information_on_safe_use'),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, 'New manufacturing process', 1, 1, NOW(), 'new_manufacturing_process'),
(VAR_TENANT_KEY, VAR_ORG_ID, 29, 'Human factors', 1, 1, NOW(), 'human_factors'),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 'Alarm system', 1, 1, NOW(), 'alarm_system'),
(VAR_TENANT_KEY, VAR_ORG_ID, 31, 'Deliberate misuse', 1, 1, NOW(), 'deliberate_misuse'),
(VAR_TENANT_KEY, VAR_ORG_ID, 32, 'Critical data for patient care', 1, 1, NOW(), 'critical_data_for_patient_care'),
(VAR_TENANT_KEY, VAR_ORG_ID, 33, 'Device characteristics', 1, 1, NOW(), 'device_characteristics'),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, 'Essential performance', 1, 1, NOW(), 'essential_performance'),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, 'Transport and packaging', 1, 1, NOW(), 'transport_and_packaging'),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 'Actuating mechanism', 1, 1, NOW(), 'actuating_mechanism'),
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 'Detachable parts identification', 1, 1, NOW(), 'detachable_parts_identification'),
(VAR_TENANT_KEY, VAR_ORG_ID, 38, 'Physiological effects', 1, 1, NOW(), 'physiological_effects'),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 'Source of input power', 1, 1, NOW(), 'source_of_input_power'),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 'Batteries', 1, 1, NOW(), 'batteries'),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 'Movable parts', 1, 1, NOW(), 'movable_parts'),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 'Thermal cut-outs or Overload control devices', 1, 1, NOW(), 'thermal_cut_outs_or_overload_control_devices'),
(VAR_TENANT_KEY, VAR_ORG_ID, 43, 'Manufacturing Hazards', 1, 1, NOW(), 'manufacturing_hazards'),
(VAR_TENANT_KEY, VAR_ORG_ID, 44, 'Purchase Hazards', 1, 1, NOW(), 'purchase_hazards'),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 'Packaging and Transportation Hazards', 1, 1, NOW(), 'packaging_and_transportation_hazards'),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 'QAC Hazards', 1, 1, NOW(), 'qac_hazards'),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 'Service Hazards', 1, 1, NOW(), 'service_hazards'),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 'Sales Hazards', 1, 1, NOW(), 'sales_hazards'),
(VAR_TENANT_KEY, VAR_ORG_ID, 49, 'Inventory Hazards', 1, 1, NOW(), 'inventory_hazards'),
(VAR_TENANT_KEY, VAR_ORG_ID, 50, 'Device Allow access to information', 1, 1, NOW(), 'device_allow_access_to_information'),
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 'Does the device have a degree of autonomy (AI)', 1, 1, NOW(), 'does_the_device_have_a_degree_of_autonomy_ai'),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 'Medical device produce an output that is used as an input for determining clinical action or function', 1, 1, NOW(), 'medical_device_produce_an_output_that_is_used_as_an_input_for_determining_clinical_action_or_function'),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'Other Hazards', 1, 1, NOW(), 'other_hazards');

END $$;
