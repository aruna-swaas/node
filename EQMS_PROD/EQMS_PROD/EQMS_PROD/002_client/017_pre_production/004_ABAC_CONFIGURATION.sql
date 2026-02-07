DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 
BEGIN

INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by,
modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id,
ref_id, slug) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'Product Traceability Card', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 140, 'product_traceability_card'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Set Burn In', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 141, 'set_burn_in');

INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id, ref_id, slug)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Process Validation', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 145, 'process_validation');

INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by,
modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id,
ref_id, slug) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'Test Protocol', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 149, 'test_protocol'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Inspection Protocol', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 150, 'inspection_protocol'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Packaging Protocol', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 151, 'packaging_protocol');


INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by,
modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id,
ref_id, slug) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'Jigs and Fixture Validation Acceptance Criteria', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 171, 'jigs_and_fixture_validation_acceptance_criteria'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Jig and Fixture Validation Report', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 165, 'jig_fixtures_validation_report'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Vendor Selection Criteria', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 167, 'vendor_selection_criteria'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Part Assembly Settings', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 168, 'part_assembly_settings'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Bill of Material', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 169, 'bill_of_material'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Packaging and Storage Instructions', 1, NOW(), 1, null, null, 1, 'false', 'false', null, 170, 'packaging_and_storage_instructions');

INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_Lk_id, status,
created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 140, 284, 1, NOW(), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 141, 283, 1, NOW(), 1);


INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by, modified_date, modified_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 145, 286, 1, NOW(), 1, NULL, NULL);

INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status,
created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 149, 279, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 150, 280, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 151, 281, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 127, 273, 1, NOW(), 1);

INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status,
created_date, created_by) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 171, 275, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 165, 274, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 167, 273, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 168, 277, 1, NOW(), 1), 
(VAR_TENANT_KEY, VAR_ORG_ID, 169, 276, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 170, 282, 1, NOW(), 1);

END $$;