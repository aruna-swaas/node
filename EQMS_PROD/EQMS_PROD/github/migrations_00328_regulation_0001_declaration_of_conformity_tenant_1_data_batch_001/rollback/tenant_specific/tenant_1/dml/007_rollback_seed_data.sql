-- Rollback: Delete seed data from file PART 1 DEVICE MASTER FILE.sql
-- Original file: PART 1 DEVICE MASTER FILE.sql
-- Seed data file: 007_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 552 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 552;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 551 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 551;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 550 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 550;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 549 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 549;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 548 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 548;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 547 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 547;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 546 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 546;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 545 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 545;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 544 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 544;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 543 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 543;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 542 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 542;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 541 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 541;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 540 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 540;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 539 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 539;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 538 AND form_table_name = 'eqms_reg_aspects_predicate_device' AND form_column_name = 'predicate_device_company' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = ref_id 538;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 555 AND form_table_name = 'eqms_reg_biocompatible_test_results' AND form_column_name = 'result' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 555 AND form_table_name = 'eqms_reg_biocompatible_test_results' AND form_column_name = 'scope_of_plan' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 555 AND form_table_name = 'eqms_reg_biocompatible_test_results' AND form_column_name = 'std_ref' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 554 AND form_table_name = 'eqms_reg_material_indirect_contact_verification' AND form_column_name = 'part_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 554 AND form_table_name = 'eqms_reg_material_indirect_contact_verification' AND form_column_name = 'material' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 553 AND form_table_name = 'eqms_reg_material_direct_contact_verification' AND form_column_name = 'part_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 553 AND form_table_name = 'eqms_reg_material_direct_contact_verification' AND form_column_name = 'material' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 535 AND form_table_name = 'eqms_product_variants' AND form_column_name = 'model_number' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 534 AND form_table_name = 'eqms_product_variants' AND form_column_name = 'model_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 495 AND form_table_name = 'eqms_reg_dmf_essential_principles_checklist' AND form_column_name = 'document_reference_notes' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 495 AND form_table_name = 'eqms_reg_dmf_essential_principles_checklist' AND form_column_name = 'is_complies' AND value_type = 'boolean' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 495 AND form_table_name = 'eqms_reg_dmf_essential_principles_checklist' AND form_column_name = 'specification_standard_subclause_reference' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 495 AND form_table_name = 'eqms_reg_dmf_essential_principles_checklist' AND form_column_name = 'is_relevant' AND value_type = 'boolean' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 495 AND form_table_name = 'eqms_reg_dmf_essential_principles_checklist' AND form_column_name = 'essential_principles_checklist' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 494 AND form_table_name = 'eqms_reg_material_indirect_contact' AND form_column_name = 'material' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 494 AND form_table_name = 'eqms_reg_material_indirect_contact' AND form_column_name = 'part_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 493 AND form_table_name = 'eqms_reg_material_direct_contact' AND form_column_name = 'material' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 493 AND form_table_name = 'eqms_reg_material_direct_contact' AND form_column_name = 'part_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 492 AND form_table_name = 'eqms_reg_country_lk' AND form_column_name = 'country_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 492 AND form_table_name = 'eqms_reg_field_safety_corrective_action' AND form_column_name = 'fcsa_date' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 492 AND form_table_name = 'eqms_reg_field_safety_corrective_action' AND form_column_name = 'reason_action' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 492 AND form_table_name = 'eqms_reg_field_safety_corrective_action' AND form_column_name = 'fsca_reason' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 491 AND form_table_name = 'eqms_reg_serious_adverse_event' AND form_column_name = 'total_unit_sold' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 491 AND form_table_name = 'eqms_reg_serious_adverse_event' AND form_column_name = 'sae_reported_count' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 491 AND form_table_name = 'eqms_reg_serious_adverse_event' AND form_column_name = 'end_date' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 491 AND form_table_name = 'eqms_reg_serious_adverse_event' AND form_column_name = 'start_date' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 491 AND form_table_name = 'eqms_reg_serious_adverse_event' AND form_column_name = 'serious_adverse_event' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 490 AND form_table_name = 'eqms_reg_market_clearance' AND form_column_name = 'clearance_date' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 490 AND form_table_name = 'eqms_reg_market_clearance' AND form_column_name = 'registration_status';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 490 AND form_table_name = 'eqms_reg_market_clearance' AND form_column_name = 'indication_use' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 490 AND form_table_name = 'eqms_reg_regulatory_agency_lk' AND form_column_name = 'regulatory_agency' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 489 AND form_table_name = 'eqms_reg_regulatory_approvals' AND form_column_name = 'approved_date' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 489 AND form_table_name = 'eqms_reg_regulatory_approvals' AND form_column_name = 'device_class' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 489 AND form_table_name = 'eqms_reg_regulatory_approvals' AND form_column_name = 'approved_shelf_life' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 489 AND form_table_name = 'eqms_reg_regulatory_approvals' AND form_column_name = 'approved_indication' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 489 AND form_table_name = 'eqms_reg_country_lk' AND form_column_name = 'country_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 488 AND form_table_name = 'eqms_reg_marketing_device_launch' AND form_column_name = 'nos_marketed_qty' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 488 AND form_table_name = 'eqms_reg_marketing_device_launch' AND form_column_name = 'year' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 533 AND form_table_name = 'eqms_project' AND form_column_name = 'project_reason_description' AND status = 1 AND form_condition = '{"id":"@project_id"}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 556 AND form_table_name = 'eqms_product_category_lk' AND form_column_name = 'product_category' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 537 AND form_table_name = 'eqms_organization' AND form_column_name = 'organization_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 536 AND form_table_name = 'eqms_reg_device_product_specification_aspects' AND form_column_name = 'ref_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 536 AND form_table_name = 'eqms_reg_device_master_file' AND form_column_name = 'id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 532 AND form_table_name = 'eqms_organization_product' AND form_column_name = 'product_intended_use' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 531 AND form_table_name = 'eqms_organization_product' AND form_column_name = 'product_generic_name' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 530 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'post_market_surveillance_data' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 529 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'clinical_evidence' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 528 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'accelerated_stability_study_report' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 527 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'utility_type_details' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 526 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'main_unit' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 525 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'animal_studies' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 524 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'software_verification' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 523 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'sterile_eto_method' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 522 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'biological_safety' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 521 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'medicinal_substances' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 520 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'biological_evaluation' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 519 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'biocompatible_test_reports' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 518 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'biocompatibility' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 517 AND form_table_name = 'eqms_reg_device_verification_validation' AND form_column_name = 'general' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 516 AND form_table_name = 'eqms_reg_dmf_risk_control_summary' AND form_column_name = 'risk_analysis' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 515 AND form_table_name = 'eqms_reg_dmf_design_manufacturing_information' AND form_column_name = 'manufacturing_process' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 514 AND form_table_name = 'eqms_reg_dmf_design_manufacturing_information' AND form_column_name = 'device_design' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 513 AND form_table_name = 'eqms_reg_dmf_labelling' AND form_column_name = 'product_brochure' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 512 AND form_table_name = 'eqms_reg_dmf_labelling' AND form_column_name = 'utility_type_lables' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 511 AND form_table_name = 'eqms_reg_dmf_labelling' AND form_column_name = 'product_labels' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 510 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'emits_ionizing_radiation' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 509 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'comparative_analysis' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 508 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'predicate_device_available' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 507 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'previous_generation' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 506 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'product_specifications' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 505 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'key_functional_elements_description' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 504 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'device_configurations_variants' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 503 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'principle_of_operation' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 502 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'novel_features' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 501 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'accessory_combination_product_description' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 500 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'intended_use_patient_criteria' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 499 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'potential_adverse_effects' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 498 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'precautions' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 497 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'contra_indications' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 496 AND form_table_name = 'eqms_reg_device_product_specification' AND form_column_name = 'material_construction' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 487 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'irradiating_component_type' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 486 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'microbial_recombinant_origin_material' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 485 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'non_viable_cell_tissue_derivative' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 484 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'device_domestic_price' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 483 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'declaration_conformity' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 482 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'regulatory_status' AND value_type = 'HTML';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 481 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'clinical_evaluation' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 480 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'risk_management_controls' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 479 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'sterilization_information' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 478 AND form_table_name = 'eqms_reg_dmf_executive_summary' AND form_column_name = 'novel_feature' AND value_type = 'HTML' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 477 AND form_table_name = 'eqms_reg_product_classification' AND form_column_name = 'classification' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 476 AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'contraindications_of_use' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 475 AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'intended_users' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 474 AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'intended_population' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 473 AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'indications_of_use' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 472 AND form_table_name = 'eqms_project_design_input_gathering' AND form_column_name = 'intended_use' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 552 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 20}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 552;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 551 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 19}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 551;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 550 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 18}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 550;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 549 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 17}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 549;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 548 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 15}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 548;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 547 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 14}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 547;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 546 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 13}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 546;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 545 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 12}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 545;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 544 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 10}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 544;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 543 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 9}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 543;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 542 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 8}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 542;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 541 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 7}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 541;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 540 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 6}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 540;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 539 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 4}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 539;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 538 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND status = 1 AND condition = '{"eqms_reg_aspects_predicate_device": {"eqms_reg_device_product_specification_aspects": {"ref_id": 3}}}';

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = ref_id 538;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = operation_id = 8;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 555 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 554 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 553 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 495 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 494 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 493 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 492 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 491 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 490 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 489 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 488 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = operation_id = 7;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 556 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 537 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 536 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 535 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 534 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 533 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 532 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 531 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 530 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 529 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 528 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 527 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 526 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 525 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 524 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 523 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 522 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 521 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 520 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 519 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 518 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 517 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 516 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 515 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 514 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 513 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 512 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 511 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 510 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 509 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 508 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 507 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 506 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 505 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 504 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 503 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 502 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 501 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 500 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 499 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 498 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 497 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 496 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 487 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 486 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 485 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 484 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 483 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 482 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 481 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 480 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 479 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 478 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 477 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 476 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 475 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 474 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 473 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 472 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = operation_id = 10;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 552 AND variable_key = 'clinicalEquivalency' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{clinicalEquivalency}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 552;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 551 AND variable_key = 'biologicalSterlizationType' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{biologicalSterlizationType}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 551;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 550 AND variable_key = 'biologicalSterile' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{biologicalSterile}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 550;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 549 AND variable_key = 'biologicalRequirements' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{biologicalRequirements}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 549;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 548 AND variable_key = 'TechTBD4' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{TechTBD4}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 548;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 547 AND variable_key = 'TechTBD3' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{TechTBD3}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 547;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 546 AND variable_key = 'TechTBD2' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{TechTBD2}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 546;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 545 AND variable_key = 'TechTBD1' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{TechTBD1}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 545;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 544 AND variable_key = 'regulatoryIndicationsForUse' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{regulatoryIndicationsForUse}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 544;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 543 AND variable_key = 'regulatoryIntendedUse' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{regulatoryIntendedUse}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 543;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 542 AND variable_key = 'regulatoryStandards' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{regulatoryStandards}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 542;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 541 AND variable_key = 'regulatoryEquivalencySystemCertification' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{regulatoryEquivalencySystemCertification}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 541;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 540 AND variable_key = 'regulatoryEquivalencyClassification' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{regulatoryEquivalencyClassification}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 540;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 539 AND variable_key = 'generalEquivalencyManufacturer' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{generalEquivalencyManufacturer}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 539;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 538 AND variable_key = 'generalEquivalencyFeature' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{generalEquivalencyFeature}' AND status = 1 AND variable_type = 'nested_relation';

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 538;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_ids 538-552;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 537 AND variable_key = 'companyName' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{companyName}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 537;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 536 AND variable_key = 'mapperVariable' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{mapperVariable}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 536;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 556 AND variable_key = 'productCategory' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{productCategory}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 535 AND variable_key = 'modelNumber' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{modelNumber}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 534 AND variable_key = 'modelVariantName' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{modelVariantName}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 533 AND variable_key = 'introductoryDescriptiveInformation' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{introductoryDescriptiveInformation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 532 AND variable_key = 'productIntendedUse' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{productIntendedUse}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 531 AND variable_key = 'productGenericName' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{productGenericName}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 530 AND variable_key = 'postMarketSurveillance' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{postMarketSurveillance}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 529 AND variable_key = 'clinicalEvidence' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{clinicalEvidence}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 528 AND variable_key = 'acceleratedStabilityStudy' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{acceleratedStabilityStudy}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 527 AND variable_key = 'stabilityDataAccessories' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{stabilityDataAccessories}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 526 AND variable_key = 'stabilityDataMainUnit' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{stabilityDataMainUnit}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 525 AND variable_key = 'animalStudies' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{animalStudies}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 524 AND variable_key = 'softwareVerification' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{softwareVerification}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 523 AND variable_key = 'sterilizationETOMethod' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{sterilizationETOMethod}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 522 AND variable_key = 'biologicalSafety' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{biologicalSafety}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 521 AND variable_key = 'medicinalSubstances' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{medicinalSubstances}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 520 AND variable_key = 'biologicalEvaluation' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{biologicalEvaluation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 519 AND variable_key = 'biocompatibleTestReports' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{biocompatibleTestReports}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 518 AND variable_key = 'biocompatibility' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{biocompatibility}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 517 AND variable_key = 'generalVerification' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{generalVerification}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_ids 517-531;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 516 AND variable_key = 'riskAnalysis' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{riskAnalysis}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_id 516;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 515 AND variable_key = 'manufacturingProcessFlow' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{manufacturingProcessFlow}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 514 AND variable_key = 'designProcessFlow' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{designProcessFlow}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_ids 514-515;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 513 AND variable_key = 'productBrochure' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{productBrochure}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 512 AND variable_key = 'accessoryLabels' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{accessoryLabels}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 511 AND variable_key = 'productLabels' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{productLabels}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_ids 511-513;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 510 AND variable_key = 'ionizingRadiation' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{ionizingRadiation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 509 AND variable_key = 'comparativeAnalysis' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{comparativeAnalysis}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 508 AND variable_key = 'predicateDevices' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{predicateDevices}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 507 AND variable_key = 'previousGeneration' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{previousGeneration}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 506 AND variable_key = 'productSpecifications' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{productSpecifications}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 505 AND variable_key = 'keyFunctionalElements' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{keyFunctionalElements}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 504 AND variable_key = 'deviceConfigurationsVariants' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{deviceConfigurationsVariants}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 503 AND variable_key = 'principleOfOperation' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{principleOfOperation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 502 AND variable_key = 'novelFeaturesExplanation' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{novelFeaturesExplanation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 501 AND variable_key = 'accessoriesDescription' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{accessoriesDescription}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 500 AND variable_key = 'patientPopulationCriteria' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{patientPopulationCriteria}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 499 AND variable_key = 'potentialAdverseEffects' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{potentialAdverseEffects}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 498 AND variable_key = 'warningsPrecautions' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{warningsPrecautions}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 497 AND variable_key = 'contraindications' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{contraindications}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 496 AND variable_key = 'materialsOfConstruction' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{materialsOfConstruction}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_ids 496-510;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 555 AND variable_key = 'biocompatibleTestResults' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{biocompatibleTestResults}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 554 AND variable_key = 'materialsIndirectContactVerification' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{materialsIndirectContactVerification}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 553 AND variable_key = 'materialsDirectContactVerification' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{materialsDirectContactVerification}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 495 AND variable_key = 'essentialPrinciplesChecklist' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{essentialPrinciplesChecklist}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 494 AND variable_key = 'materialsNotInContactWithBody' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{materialsNotInContactWithBody}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 493 AND variable_key = 'materialsInContactWithBody' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{materialsInContactWithBody}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 492 AND variable_key = 'fieldSafetyCorrectiveAction' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{fieldSafetyCorrectiveAction}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 491 AND variable_key = 'seriousAdverseEvents' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{seriousAdverseEvents}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 490 AND variable_key = 'marketClearance' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{marketClearance}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 489 AND variable_key = 'regulatoryApprovals' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{regulatoryApprovals}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 488 AND variable_key = 'marketingHistory' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{marketingHistory}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = ref_ids 488-498;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 487 AND variable_key = 'irradiatingComponents' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{irradiatingComponents}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 486 AND variable_key = 'microbialRecombinantMaterials' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{microbialRecombinantMaterials}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 485 AND variable_key = 'nonViableCellTissueDerivatives' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{nonViableCellTissueDerivatives}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 484 AND variable_key = 'domesticPrice' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{domesticPrice}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 483 AND variable_key = 'declarationOfConformity' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{declarationOfConformity}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 482 AND variable_key = 'regulatoryStatus' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{regulatoryStatus}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 481 AND variable_key = 'clinicalEvaluation' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{clinicalEvaluation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 480 AND variable_key = 'riskManagementPlan' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{riskManagementPlan}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 479 AND variable_key = 'sterilizationInformation' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{sterilizationInformation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 478 AND variable_key = 'novelFeatures' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{novelFeatures}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 477 AND variable_key = 'classOfDevice' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{classOfDevice}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 476 AND variable_key = 'contraindicationsOfUse' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{contraindicationsOfUse}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 475 AND variable_key = 'intendedUsers' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{intendedUsers}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 474 AND variable_key = 'intendedPopulation' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{intendedPopulation}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 473 AND variable_key = 'indicationsOfUse' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{indicationsOfUse}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 472 AND variable_key = 'intendedUse' AND fk_eqms_document_template_id = 32 AND variable_identifier = '{intendedUse}' AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = ref_ids 472-487;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 32 AND fk_eqms_form_id = 55 AND status = 1;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 32 AND fk_eqms_document_template_type_lk_id = 33 AND document_template_name = 'PART 1 DEVICE MASTER FILE' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Regulations/Indian MDR/I-MDR forms/PART 1 DEVICE MASTER FILE.docx') AND template_version = 1.0 AND status = 1 AND container_id = 'REGULATION_DMF_DOCUMENT_GENERATION';

-- Delete from dms.eqms_document_template_magic_read_details
DELETE FROM dms.eqms_document_template_magic_read_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 32 AND container_id = 'REGULATION_DMF_DOCUMENT_GENERATION' AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_document_template_type_lk_id = 33 AND document_template_name = 'PART 1 DEVICE MASTER FILE' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Regulations/Indian MDR/I-MDR forms/PART 1 DEVICE MASTER FILE.docx') AND template_version = 1.0 AND status = 1 AND container_id = 'REGULATION_DMF_DOCUMENT_GENERATION' AND fk_eqms_record_generation_mode_lk_id = 2;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND document_template_type = 'device_master_file' AND status = 1;

END $$;
