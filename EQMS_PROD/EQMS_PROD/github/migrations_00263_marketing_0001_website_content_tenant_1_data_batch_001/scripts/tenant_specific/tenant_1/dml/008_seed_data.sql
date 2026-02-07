DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
-- Inserting Document Template Type Lookup
INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'pnd', 1, NOW (), 1, 15);

-- Inserting Document Template into eqms_document_template
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 15, 'MKG-F-01 Product Need Document', '.docx', VAR_BUCKET_NAME, CONCAT (VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Marketing/MKG-F-01 Product Need Document.docx'), 1.0, 1, 'DND_PND_DOCUMENT_GENERATION', 2, NOW (), 1, 5);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 5, 'DND_PND_DOCUMENT_GENERATION', 1, NOW(), 1);

--History table insert with the template_id
INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, container_id, created_date, created_by, valid_from_date, fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, template_version) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'MKG-F-01 Product Need Document', '.docx', VAR_BUCKET_NAME, CONCAT (VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Marketing/MKG-F-01 Product Need Document.docx'), 1, 'DND_PND_DOCUMENT_GENERATION', NOW (), 1, NOW (), 5, 15, 1.0);

-- Inserting Document Template Form Mapping
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, 
status, created_date, created_by
) VALUES 
    (VAR_TENANT_KEY, VAR_ORG_ID, 5, 6, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 5, 103, 1, NOW(), 1);

-- Variable: generic_name (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'generic_name', 1, 5, '{generic_name}', NOW (), 1, 70);

-- Transformation rule for generic_name (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 70, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 18}}', 1, NOW (), 1);

-- Mapper for generic_name (no conditions, only table/column mapping)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 70, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: intended_use (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'intended_use', 1, 5, '{intended_use}', NOW (), 1, 71);

-- Transformation rule for intended_use (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 71, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 19}}', 1, NOW (), 1);

-- Mapper for intended_use
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 71, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: buyer_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'buyer_requirement', 1, 5, '{buyer_requirement}', NOW (), 1, 72);

-- Transformation rule for buyer_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 72, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 4}}', 1, NOW (), 1);

-- Mapper for buyer_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 72, 'eqms_pnd_buyer_lk', 'buyer', 1, NOW (), 1);

-- Variable: user_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'user_requirement', 1, 5, '{user_requirement}', NOW (), 1, 73);

-- Transformation rule for user_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 73, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 5}}', 1, NOW (), 1);

-- Mapper for user_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 73, 'eqms_target_audience_type_lk', 'target_audience_type', 1, NOW (), 1);

-- Variable: competitor_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'competitor_requirement', 1, 5, '{competitor_requirement}', NOW (), 1, 74);

-- Transformation rule for competitor_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 74, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 6}}', 1, NOW (), 1);

-- Mapper for competitor_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 74, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: feature_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'feature_requirement', 1, 5, '{feature_requirement}', NOW (), 1, 75);

-- Transformation rule for feature_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 75, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 7}}', 1, NOW (), 1);

-- Mapper for feature_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 75, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: gmdn_code (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'gmdn_code', 1, 5, '{gmdn_code}', NOW (), 1, 76);

-- Transformation rule for gmdn_code (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 76, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 1}}', 1, NOW (), 1);

-- Mapper for gmdn_code
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 76, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: abbrevation (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'abbrevation', 1, 5, '{abbrevation}', NOW (), 1, 77);

-- Transformation rule for abbrevation (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 77, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 2}}', 1, NOW (), 1);

-- Mapper for abbrevation
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 77, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: development_cost (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'development_cost', 1, 5, '{development_cost}', NOW (), 1, 78);

-- Transformation rule for development_cost (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 78, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 3}}', 1, NOW (), 1);

-- Mapper for development_cost
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 78, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: service_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'service_requirement', 1, 5, '{service_requirement}', NOW (), 1, 79);

-- Transformation rule for service_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 79, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 8}}', 1, NOW (), 1);

-- Mapper for service_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 79, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: packaging_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'packaging_requirement', 1, 5, '{packaging_requirement}', NOW (), 1, 80);

-- Transformation rule for packaging_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 80, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 9}}', 1, NOW (), 1);

-- Mapper for packaging_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 80, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: delivery_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'delivery_requirement', 1, 5, '{delivery_requirement}', NOW (), 1, 81);

-- Transformation rule for delivery_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 81, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 10}}', 1, NOW (), 1);

-- Mapper for delivery_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 81, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: post_delivery_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'post_delivery_requirement', 1, 5, '{post_delivery_requirement}', NOW (), 1, 82);

-- Transformation rule for post_delivery_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 82, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 16}}', 1, NOW (), 1);

-- Mapper for post_delivery_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 82, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: environmental_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'environmental_requirement', 1, 5, '{environmental_requirement}', NOW (), 1, 83);

-- Transformation rule for environmental_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 83, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 11}}', 1, NOW (), 1);

-- Mapper for environmental_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 83, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: documentation_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'documentation_requirement', 1, 5, '{documentation_requirement}', NOW (), 1, 84);

-- Transformation rule for documentation_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 84, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 12}}', 1, NOW (), 1);

-- Mapper for documentation_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 84, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: target_sp_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'target_sp_requirement', 1, 5, '{target_sp_requirement}', NOW (), 1, 85);

-- Transformation rule for target_sp_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 85, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 13}}', 1, NOW (), 1);

-- Mapper for target_sp_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 85, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: quantity_forcast_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'quantity_forcast_requirement', 1, 5, '{quantity_forcast_requirement}', NOW (), 1, 86);

-- Transformation rule for quantity_forcast_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 86, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 14}}', 1, NOW (), 1);

-- Mapper for quantity_forcast_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 86, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: target_timeline_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'target_timeline_requirement', 1, 5, '{target_timeline_requirement}', NOW (), 1, 87);

-- Transformation rule for target_timeline_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 87, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 15}}', 1, NOW (), 1);

-- Mapper for target_timeline_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 87, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: specifications (grid)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'specifications', 1, 5, '{specifications}', NOW (), 1, 88);

-- Transformation rule for specifications (grid operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 88, 7, 1, 1, NOW (), 1);

-- Mapper for specifications (multiple columns for grid)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 88, 'eqms_pnd_specification', 'pnd_specification', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 88, 'eqms_pnd_specification', 'pnd_parameter', 1, NOW (), 1);

-- Variable: product_application (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'product_application', 1, 5, '{product_application}', NOW (), 1, 89);

-- Transformation rule for product_application (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 89, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 20}}', 1, NOW (), 1);

-- Mapper for product_application
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 89, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: product_category_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'product_category_requirement', 1, 5, '{product_category_requirement}', NOW (), 1, 90);

-- Transformation rule for product_category_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 90, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 21}}', 1, NOW (), 1);

-- Mapper for product_category_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 90, 'eqms_product_category_lk', 'product_category', 1, NOW (), 1);

-- Variable: emdn_requirement (nested_relation)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'emdn_requirement', 1, 5, '{emdn_requirement}', NOW (), 1, 91);

-- Transformation rule for emdn_requirement (nested_relation operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", parameters, condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 91, 8, 1, NULL, '{"eqms_pnd_items": {"fk_eqms_pnd_item_lk_id": 17}}', 1, NOW (), 1);

-- Mapper for emdn_requirement
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 91, 'eqms_pnd_text_requirements', 'requirement', 1, NOW (), 1);

-- Variable: mapperVariable (text)
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, 5, '{mapperVariable}', NOW (), 1, 92);

-- Transformation rule for mapperVariable (text operation)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 92, 10, 1, 1, NOW (), 1);

-- Mapper for mapperVariable (multiple table mappings)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_pnd_specification', 'fk_eqms_product_need_document_id', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_pnd_items', 'fk_eqms_pnd_item_lk_id', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_pnd_buyer_chosen_requirements', 'fk_eqms_pnd_item_id', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_pnd_end_user_chosen_requirements', 'fk_eqms_pnd_item_id', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_pnd_items', 'fk_eqms_product_need_document_id', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_pnd_item_lk', 'pnd_item', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_product_need_document', 'fk_eqms_project_id', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_pnd_product_category_chosen_requirements', 'fk_eqms_pnd_item_id', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_product_need_document', 'fk_eqms_project_id', 1, NOW (), 1), (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_pnd_item_lk', 'ref_id', 1, NOW (), 1);

-- Conditional Mapper (project) - Keep @project_id condition in mapper as per requirements
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 92, 'eqms_project', 'project_reason', '{"id": "@project_id"}', 1, NOW (), 1);

END $$;
