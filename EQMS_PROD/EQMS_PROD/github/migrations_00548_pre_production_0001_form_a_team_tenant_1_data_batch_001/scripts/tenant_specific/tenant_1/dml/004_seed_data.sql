DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

INSERT INTO organization.eqms_context_types (
  ref_id, 
  eqms_tenant_key, 
  fk_eqms_organization_id, 
  context_name, 
  context_description, 
  status, 
  created_date, 
  created_by, 
  modified_date, 
  modified_by, 
  context_slug
) VALUES 
  (90, VAR_TENANT_KEY, VAR_ORG_ID, 'product_features', NULL, 1, NULL, NULL, NULL, NULL, 'product_features'),
  (91, VAR_TENANT_KEY, VAR_ORG_ID, 'jigs_and_fixture_validation_acceptance_criteria', NULL, 1, NULL, NULL, NULL, NULL, 'jigs_and_fixture_validation_acceptance_criteria');

INSERT INTO organization.eqms_context_types 
(ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug)
VALUES 
(93, VAR_TENANT_KEY, VAR_ORG_ID, 'performance Qualification', NULL , 1, NULL, NULL, NULL, NULL, 'performance_qualification'),
(94, VAR_TENANT_KEY, VAR_ORG_ID, 'Installation Qualification', NULL , 1, NULL, NULL, NULL, NULL, 'installation_qualification'),
(95, VAR_TENANT_KEY, VAR_ORG_ID, 'operation Qualification', NULL , 1, NULL, NULL, NULL, NULL, 'operation_qualification');

INSERT INTO organization.eqms_context_types 
(ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug)
VALUES 
(106, VAR_TENANT_KEY, VAR_ORG_ID, 'jig_fixtures_validation_report', NULL , 1, NULL, NULL, NULL, NULL, 'jig_fixtures_validation_report'),
(107, VAR_TENANT_KEY, VAR_ORG_ID, 'part_assembly_settings', NULL , 1, NULL, NULL, NULL, NULL, 'part_assembly_settings'),
(108, VAR_TENANT_KEY, VAR_ORG_ID, 'part_item', NULL , 1, NULL, NULL, NULL, NULL, 'part_item'),
(109, VAR_TENANT_KEY, VAR_ORG_ID, 'part_item_detail', NULL , 1, NULL, NULL, NULL, NULL, 'part_item_detail'),
(110, VAR_TENANT_KEY, VAR_ORG_ID, 'testing_protocol', NULL , 1, NULL, NULL, NULL, NULL, 'testing_protocol'),
(111, VAR_TENANT_KEY, VAR_ORG_ID, 'set_burn_in', NULL , 1, NULL, NULL, NULL, NULL, 'set_burn_in'),
(112, VAR_TENANT_KEY, VAR_ORG_ID, 'product_traceability_card', NULL , 1, NULL, NULL, NULL, NULL, 'product_traceability_card'),
(113, VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_selection_criteria', NULL , 1, NULL, NULL, NULL, NULL, 'vendor_selection_criteria'),
(114, VAR_TENANT_KEY, VAR_ORG_ID, 'assembly_work_instruction', NULL , 1, NULL, NULL, NULL, NULL, 'assembly_work_instruction'),
(115, VAR_TENANT_KEY, VAR_ORG_ID, 'assembly_drawing', NULL , 1, NULL, NULL, NULL, NULL, 'assembly_drawing'),
(116, VAR_TENANT_KEY, VAR_ORG_ID, 'inventory_detail', NULL , 1, NULL, NULL, NULL, NULL, 'inventory_detail'),
(117, VAR_TENANT_KEY, VAR_ORG_ID, 'storage_environment', NULL , 1, NULL, NULL, NULL, NULL, 'storage_environment'),
(118, VAR_TENANT_KEY, VAR_ORG_ID, 'electrical_drawing', NULL , 1, NULL, NULL, NULL, NULL, 'electrical_drawing'),
(119, VAR_TENANT_KEY, VAR_ORG_ID, 'iqa_exclusion', NULL , 1, NULL, NULL, NULL, NULL, 'iqa_exclusion'),
(120, VAR_TENANT_KEY, VAR_ORG_ID, 'serial_batch', NULL , 1, NULL, NULL, NULL, NULL, 'serial_batch'),
(121, VAR_TENANT_KEY, VAR_ORG_ID, 'set_burn_in', NULL , 1, NULL, NULL, NULL, NULL, 'set_burn_in'),
(122, VAR_TENANT_KEY, VAR_ORG_ID, 'operational_qualification_worst', NULL , 1, NULL, NULL, NULL, NULL, 'operational_qualification_worst'),
(123, VAR_TENANT_KEY, VAR_ORG_ID, 'operational_qualification_best', NULL , 1, NULL, NULL, NULL, NULL, 'operational_qualification_best');


INSERT INTO organization.eqms_context_types 
(ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug)
VALUES 
(124, VAR_TENANT_KEY, VAR_ORG_ID, 'packaging_storage_instruction', NULL , 1, NULL, NULL, NULL, NULL, 'packaging_storage_instruction');


INSERT INTO organization.eqms_context_types 
(ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug)
VALUES 
(125, VAR_TENANT_KEY, VAR_ORG_ID, 'shelf_life', NULL , 1, NULL, NULL, NULL, NULL, 'shelf_life');
END $$;