-- Rollback: Delete seed data from file MKG-F-01 Product Need Document.sql
-- Original file: MKG-F-01 Product Need Document.sql
-- Seed data file: 008_seed_data.sql
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
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_project' AND form_column_name = 'project_reason' AND form_condition = '{"id": "@project_id"}' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = project;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_pnd_item_lk' AND form_column_name = 'ref_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_product_need_document' AND form_column_name = 'fk_eqms_project_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_pnd_product_category_chosen_requirements' AND form_column_name = 'fk_eqms_pnd_item_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_product_need_document' AND form_column_name = 'fk_eqms_project_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_pnd_item_lk' AND form_column_name = 'pnd_item' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_pnd_items' AND form_column_name = 'fk_eqms_product_need_document_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_pnd_end_user_chosen_requirements' AND form_column_name = 'fk_eqms_pnd_item_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_pnd_buyer_chosen_requirements' AND form_column_name = 'fk_eqms_pnd_item_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_pnd_items' AND form_column_name = 'fk_eqms_pnd_item_lk_id' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND form_table_name = 'eqms_pnd_specification' AND form_column_name = 'fk_eqms_product_need_document_id' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = multiple table mappings;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 92 AND fk_eqms_document_variable_operation_id = 10 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = text operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 92 AND variable_key = 'mapperVariable' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{mapperVariable}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = text;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 91 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 91 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 17}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 91 AND variable_key = 'emdn_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{emdn_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 90 AND form_table_name = 'eqms_product_category_lk' AND form_column_name = 'product_category' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 90 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 21}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 90 AND variable_key = 'product_category_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{product_category_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 89 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 89 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 20}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 89 AND variable_key = 'product_application' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{product_application}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 88 AND form_table_name = 'eqms_pnd_specification' AND form_column_name = 'pnd_parameter' AND status = 1;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 88 AND form_table_name = 'eqms_pnd_specification' AND form_column_name = 'pnd_specification' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = multiple columns for grid;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 88 AND fk_eqms_document_variable_operation_id = 7 AND order = 1 AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = grid operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 88 AND variable_key = 'specifications' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{specifications}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = grid;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 87 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 87 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 15}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 87 AND variable_key = 'target_timeline_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{target_timeline_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 86 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 86 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 14}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND variable_key = 'quantity_forcast_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{quantity_forcast_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 85 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 85 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 13}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND variable_key = 'target_sp_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{target_sp_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 84 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 84 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 12}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 84 AND variable_key = 'documentation_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{documentation_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 83 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 83 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 11}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 83 AND variable_key = 'environmental_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{environmental_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 82 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 82 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 16}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 82 AND variable_key = 'post_delivery_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{post_delivery_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 81 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 81 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 10}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 81 AND variable_key = 'delivery_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{delivery_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 80 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 80 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 9}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND variable_key = 'packaging_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{packaging_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 79 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 79 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 8}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND variable_key = 'service_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{service_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 78 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 78 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 3}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND variable_key = 'development_cost' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{development_cost}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 77 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 77 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 2}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND variable_key = 'abbrevation' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{abbrevation}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 76 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 76 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 1}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND variable_key = 'gmdn_code' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{gmdn_code}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 75 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 75 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 7}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND variable_key = 'feature_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{feature_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 74 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 74 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 6}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND variable_key = 'competitor_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{competitor_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 73 AND form_table_name = 'eqms_target_audience_type_lk' AND form_column_name = 'target_audience_type' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 73 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 5}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND variable_key = 'user_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{user_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 72 AND form_table_name = 'eqms_pnd_buyer_lk' AND form_column_name = 'buyer' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 72 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 4}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND variable_key = 'buyer_requirement' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{buyer_requirement}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 71 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 71 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 19}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND variable_key = 'intended_use' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{intended_use}';

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_variable_mapper
DELETE FROM dms.eqms_document_variable_mapper WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 70 AND form_table_name = 'eqms_pnd_text_requirements' AND form_column_name = 'requirement' AND status = 1;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = no conditions AND fk_eqms_organization_id = only table/column mapping;

-- Delete from dms.eqms_document_template_variable_transformation_rules
DELETE FROM dms.eqms_document_template_variable_transformation_rules WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_variable_id = 70 AND fk_eqms_document_variable_operation_id = 8 AND order = 1 AND condition = '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 18}}' AND status = 1;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = nested_relation operation;

-- Delete from dms.eqms_document_template_variable
DELETE FROM dms.eqms_document_template_variable WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND variable_key = 'generic_name' AND status = 1 AND fk_eqms_document_template_id = 5 AND variable_identifier = '{generic_name}';

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = nested_relation;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 5 AND fk_eqms_form_id = 103 AND status = 1;

-- Delete from dms.eqms_document_template_form_mapping
DELETE FROM dms.eqms_document_template_form_mapping WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 5 AND fk_eqms_form_id = 6 AND status = 1;

-- Delete from dms.eqms_document_template_history
DELETE FROM dms.eqms_document_template_history WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND document_template_name = 'MKG-F-01 Product Need Document' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT (VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Marketing/MKG-F-01 Product Need Document.docx') AND status = 1 AND container_id = 'DND_PND_DOCUMENT_GENERATION' AND fk_eqms_document_template_id = 5 AND fk_eqms_document_template_type_lk_id = 15 AND template_version = 1.0;

-- Delete from dms.eqms_document_template_magic_read_details
DELETE FROM dms.eqms_document_template_magic_read_details WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_document_template_id = 5 AND container_id = 'DND_PND_DOCUMENT_GENERATION' AND status = 1;

-- Delete from dms.eqms_document_template
DELETE FROM dms.eqms_document_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_document_template_type_lk_id = 15 AND document_template_name = 'MKG-F-01 Product Need Document' AND document_template_extension = '.docx' AND s3_bucket_name = VAR_BUCKET_NAME AND s3_object_key = CONCAT (VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Marketing/MKG-F-01 Product Need Document.docx') AND template_version = 1.0 AND status = 1 AND container_id = 'DND_PND_DOCUMENT_GENERATION' AND fk_eqms_record_generation_mode_lk_id = 2;

-- Delete from dms.eqms_document_template_type_lk
DELETE FROM dms.eqms_document_template_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND document_template_type = 'pnd' AND status = 1;

END $$;
