DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
-- Entity Template
INSERT INTO organization.eqms_entity_template (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_category_id, entity_title, entity_version, slug, is_annexure, fk_parent_entity_id, fk_eqms_module_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 1, 'CCC-HR-F-10 Employee Check List', 1, 'ccc-hr-f-10-employee-check-list', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 1, 'CCC-HR-F-09 Training Effectiveness Evaluation', 1, 'ccc-hr-f-09-training-effectiveness-evaluation', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 1, 'CCC-HR-F-08-Induction', 1, 'ccc-hr-f-08-induction', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 1, 'CCC-HR-F-07 Org Chart', 1, 'ccc-hr-f-07-org-chart', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 1, 'CCC-HR-F-06-Candidate Evaluation', 1, 'ccc-hr-f-06-candidate-evaluation', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 56, 1, 'CCC-HR-F-05 Resource Requisition', 1, 'ccc-hr-f-05-resource-requisition', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 57, 1, 'CCC-HR-F-03 Training Need', 1, 'ccc-hr-f-03-training-need', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, 1, 'CCC-HR-F-02 - Individual Competency', 1, 'ccc-hr-f-02---individual-competency', 'false', NULL, NULL, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 59, 1, 'CCC-HR-F-01 Job Description', 1, 'ccc-hr-f-01-job-description', 'false', NULL, NULL, 1, NOW(), 1);

-- Delimiter
INSERT INTO organization.eqms_nomenclature_delimiter (
  eqms_tenant_key, fk_eqms_entity_template_id, fk_eqms_organization_id, delimiter, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, 51, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 52, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 53, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 54, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 55, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 56, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 57, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 58, VAR_ORG_ID, '-', 1, NOW(), 1),
(VAR_TENANT_KEY, 59, VAR_ORG_ID, '-', 1, NOW(), 1);

-- Name Parts
INSERT INTO organization.eqms_nomenclature_name_parts (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_template_id, part_value, part_order, fk_eqms_sequence_def_id, fk_eqms_nomenclature_part_type_id, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 172, 51, 'HRCS', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 173, 51, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 174, 51, 'employee-check-list', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 175, 51, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 176, 52, 'HRCS', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 177, 52, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 178, 52, 'training-effectiveness-evaluation', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 179, 52, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 180, 53, 'HRCS', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 181, 53, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 182, 53, 'induction', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 183, 53, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 184, 54, 'HRCS', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 185, 54, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 186, 54, 'org-chart', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 187, 54, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 188, 55, 'HRCS', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 189, 55, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 190, 55, 'candidate-evaluation', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 191, 55, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 192, 56, 'HRCS', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 193, 56, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 194, 56, 'resource-requisition', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 195, 56, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 196, 57, 'HRCS', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 197, 57, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 198, 57, 'training-need', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 199, 57, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 200, 58, 'HRCS', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 201, 58, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 202, 58, 'individual-competency', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 203, 58, NULL, 4, NULL, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 204, 59, 'HRCS', 1, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 205, 59, NULL, 2, NULL, 3, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 206, 59, 'job-description', 3, NULL, 2, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 207, 59, NULL, 4, NULL, 1, 1, NOW(), 1);

-- Part Date Formats
INSERT INTO organization.eqms_nomenclature_part_date_formats (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_nomenclature_name_parts_id, date_time_format, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 175, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 179, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 183, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 187, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 191, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 195, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 199, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 203, 'ddLLyyyyHHmmss', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 207, 'ddLLyyyyHHmmss', 1, NOW(), 1);

-- Entity Nomenclature Mappings
INSERT INTO organization.eqms_entity_nomenclature_mappings (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_nomenclature_name_part_id, related_table, related_column, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 173, 'hrcs.eqms_organization_employee', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 177, 'hrcs.eqms_hr_employee_training_evaluation', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 181, 'hrcs.eqms_organization_employee', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 185, 'hrcs.eqms_organization_employee', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 189, 'hrcs.eqms_hr_candidate_evalution', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 56, 193, 'hrcs.eqms_hr_resource_requisition', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 57, 197, 'hrcs.eqms_organization_employee', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, 201, 'hrcs.eqms_organization_employee', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 59, 205, 'hrcs.eqms_hr_role_definition', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Joins
INSERT INTO organization.eqms_nomenclature_mapping_joins (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, fk_eqms_entity_nomenclature_mapping_id, join_order, fk_eqms_nomenclature_join_type_id, join_table, join_on_left, join_on_right, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 51, 1, 1, 'hrcs.eqms_organization_employee', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 52, 1, 1, 'hrcs.eqms_hr_employee_training_evaluation', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 53, 1, 1, 'hrcs.eqms_organization_employee', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 54, 1, 1, 'hrcs.eqms_organization_employee', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 55, 1, 1, 'hrcs.eqms_hr_candidate_evalution', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 56, 56, 1, 1, 'hrcs.eqms_hr_resource_requisition', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 57, 57, 1, 1, 'hrcs.eqms_organization_employee', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, 58, 1, 1, 'hrcs.eqms_organization_employee', 'id', 'id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 59, 59, 1, 1, 'hrcs.eqms_hr_role_definition', 'id', 'id', 1, NOW(), 1);

-- Nomenclature Mapping Conditions
INSERT INTO organization.eqms_nomenclature_mapping_conditions (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_nomenclature_mapping_id, fk_eqms_mapping_join_id, condition_order, condition_expression, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 51, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 56, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 57, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, NULL, 1, '@id', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 59, NULL, 1, '@id', 1, NOW(), 1);

END $$;

