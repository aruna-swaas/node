-- Rollback: Delete seed data from file 009_NOMENCLATURE.sql
-- Original file: 009_NOMENCLATURE.sql
-- Seed data file: 007_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 59 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 58 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 57 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 56 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 55 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 54 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 53 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 52 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_conditions
DELETE FROM organization.eqms_nomenclature_mapping_conditions WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_nomenclature_mapping_id = 51 AND condition_order = 1 AND condition_expression = '@id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND fk_eqms_entity_nomenclature_mapping_id = 59 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'hrcs.eqms_hr_role_definition' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND fk_eqms_entity_nomenclature_mapping_id = 58 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'hrcs.eqms_organization_employee' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND fk_eqms_entity_nomenclature_mapping_id = 57 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'hrcs.eqms_organization_employee' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND fk_eqms_entity_nomenclature_mapping_id = 56 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'hrcs.eqms_hr_resource_requisition' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND fk_eqms_entity_nomenclature_mapping_id = 55 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'hrcs.eqms_hr_candidate_evalution' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND fk_eqms_entity_nomenclature_mapping_id = 54 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'hrcs.eqms_organization_employee' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND fk_eqms_entity_nomenclature_mapping_id = 53 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'hrcs.eqms_organization_employee' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND fk_eqms_entity_nomenclature_mapping_id = 52 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'hrcs.eqms_hr_employee_training_evaluation' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_mapping_joins
DELETE FROM organization.eqms_nomenclature_mapping_joins WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND fk_eqms_entity_nomenclature_mapping_id = 51 AND join_order = 1 AND fk_eqms_nomenclature_join_type_id = 1 AND join_table = 'hrcs.eqms_organization_employee' AND join_on_left = 'id' AND join_on_right = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND fk_eqms_nomenclature_name_part_id = 205 AND related_table = 'hrcs.eqms_hr_role_definition' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND fk_eqms_nomenclature_name_part_id = 201 AND related_table = 'hrcs.eqms_organization_employee' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND fk_eqms_nomenclature_name_part_id = 197 AND related_table = 'hrcs.eqms_organization_employee' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND fk_eqms_nomenclature_name_part_id = 193 AND related_table = 'hrcs.eqms_hr_resource_requisition' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND fk_eqms_nomenclature_name_part_id = 189 AND related_table = 'hrcs.eqms_hr_candidate_evalution' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND fk_eqms_nomenclature_name_part_id = 185 AND related_table = 'hrcs.eqms_organization_employee' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND fk_eqms_nomenclature_name_part_id = 181 AND related_table = 'hrcs.eqms_organization_employee' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND fk_eqms_nomenclature_name_part_id = 177 AND related_table = 'hrcs.eqms_hr_employee_training_evaluation' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_entity_nomenclature_mappings
DELETE FROM organization.eqms_entity_nomenclature_mappings WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND fk_eqms_nomenclature_name_part_id = 173 AND related_table = 'hrcs.eqms_organization_employee' AND related_column = 'id' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 207 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 203 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 199 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 195 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 191 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 187 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 183 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 179 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_part_date_formats
DELETE FROM organization.eqms_nomenclature_part_date_formats WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_nomenclature_name_parts_id = 175 AND date_time_format = 'ddLLyyyyHHmmss' AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 207 AND fk_eqms_entity_template_id = 59 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 206 AND fk_eqms_entity_template_id = 59 AND part_value = 'job-description' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 205 AND fk_eqms_entity_template_id = 59 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 204 AND fk_eqms_entity_template_id = 59 AND part_value = 'HRCS' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 203 AND fk_eqms_entity_template_id = 58 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 202 AND fk_eqms_entity_template_id = 58 AND part_value = 'individual-competency' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 201 AND fk_eqms_entity_template_id = 58 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 200 AND fk_eqms_entity_template_id = 58 AND part_value = 'HRCS' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 199 AND fk_eqms_entity_template_id = 57 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 198 AND fk_eqms_entity_template_id = 57 AND part_value = 'training-need' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 197 AND fk_eqms_entity_template_id = 57 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 196 AND fk_eqms_entity_template_id = 57 AND part_value = 'HRCS' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 195 AND fk_eqms_entity_template_id = 56 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 194 AND fk_eqms_entity_template_id = 56 AND part_value = 'resource-requisition' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 193 AND fk_eqms_entity_template_id = 56 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 192 AND fk_eqms_entity_template_id = 56 AND part_value = 'HRCS' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 191 AND fk_eqms_entity_template_id = 55 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 190 AND fk_eqms_entity_template_id = 55 AND part_value = 'candidate-evaluation' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 189 AND fk_eqms_entity_template_id = 55 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 188 AND fk_eqms_entity_template_id = 55 AND part_value = 'HRCS' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 187 AND fk_eqms_entity_template_id = 54 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 186 AND fk_eqms_entity_template_id = 54 AND part_value = 'org-chart' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 185 AND fk_eqms_entity_template_id = 54 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 184 AND fk_eqms_entity_template_id = 54 AND part_value = 'HRCS' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 183 AND fk_eqms_entity_template_id = 53 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 182 AND fk_eqms_entity_template_id = 53 AND part_value = 'induction' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 181 AND fk_eqms_entity_template_id = 53 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 180 AND fk_eqms_entity_template_id = 53 AND part_value = 'HRCS' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 179 AND fk_eqms_entity_template_id = 52 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 178 AND fk_eqms_entity_template_id = 52 AND part_value = 'training-effectiveness-evaluation' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 177 AND fk_eqms_entity_template_id = 52 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 176 AND fk_eqms_entity_template_id = 52 AND part_value = 'HRCS' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 175 AND fk_eqms_entity_template_id = 51 AND part_order = 4 AND fk_eqms_nomenclature_part_type_id = 1 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 174 AND fk_eqms_entity_template_id = 51 AND part_value = 'employee-check-list' AND part_order = 3 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 173 AND fk_eqms_entity_template_id = 51 AND part_order = 2 AND fk_eqms_nomenclature_part_type_id = 3 AND status = 1;

-- Delete from organization.eqms_nomenclature_name_parts
DELETE FROM organization.eqms_nomenclature_name_parts WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 172 AND fk_eqms_entity_template_id = 51 AND part_value = 'HRCS' AND part_order = 1 AND fk_eqms_nomenclature_part_type_id = 2 AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 59 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 58 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 57 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 56 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 55 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 54 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 53 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 52 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_nomenclature_delimiter
DELETE FROM organization.eqms_nomenclature_delimiter WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_entity_template_id = 51 AND delimiter = '-' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'CCC-HR-F-01 Job Description' AND entity_version = 1 AND slug = 'ccc-hr-f-01-job-description' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'CCC-HR-F-02 - Individual Competency' AND entity_version = 1 AND slug = 'ccc-hr-f-02---individual-competency' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'CCC-HR-F-03 Training Need' AND entity_version = 1 AND slug = 'ccc-hr-f-03-training-need' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'CCC-HR-F-05 Resource Requisition' AND entity_version = 1 AND slug = 'ccc-hr-f-05-resource-requisition' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'CCC-HR-F-06-Candidate Evaluation' AND entity_version = 1 AND slug = 'ccc-hr-f-06-candidate-evaluation' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'CCC-HR-F-07 Org Chart' AND entity_version = 1 AND slug = 'ccc-hr-f-07-org-chart' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'CCC-HR-F-08-Induction' AND entity_version = 1 AND slug = 'ccc-hr-f-08-induction' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'CCC-HR-F-09 Training Effectiveness Evaluation' AND entity_version = 1 AND slug = 'ccc-hr-f-09-training-effectiveness-evaluation' AND is_annexure = 'false' AND status = 1;

-- Delete from organization.eqms_entity_template
DELETE FROM organization.eqms_entity_template WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND fk_eqms_nomenclature_category_id = 1 AND entity_title = 'CCC-HR-F-10 Employee Check List' AND entity_version = 1 AND slug = 'ccc-hr-f-10-employee-check-list' AND is_annexure = 'false' AND status = 1;

END $$;
