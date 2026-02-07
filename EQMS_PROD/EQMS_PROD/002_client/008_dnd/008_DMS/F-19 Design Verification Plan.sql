DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'Design Verification Plan', 1, NOW(), 1, 31);
 
  -- Template
  INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 31, 'F-19 Design Verification Plan', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-19 Design Verification Plan.docx'), 1.0, 1, 'DND_DESIGN_VERIFICATION_PLAN_DOCUMENT_GENERATION', 2, NOW(), 1, 30);

  -- =============================================
  -- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
  -- =============================================
  INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 30, 'DND_DESIGN_VERIFICATION_PLAN_DOCUMENT_GENERATION', 1, NOW(), 1);

  INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, created_by, valid_from_date) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 30, 31, 'F-19 Design Verification Plan', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-19 Design Verification Plan.docx'), 1.0, 1, 'DND_DESIGN_VERIFICATION_PLAN_DOCUMENT_GENERATION', NOW(), 1, NOW());

  -- Map template to form
  INSERT INTO dms.eqms_document_template_form_mapping (
      eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by
  )
  VALUES 
      (VAR_TENANT_KEY, VAR_ORG_ID, 30, 45, 1, NOW(), 1),
      (VAR_TENANT_KEY, VAR_ORG_ID, 30, 109, 1, NOW(), 1);

  -- dir grid (rows = verification plans)
  INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'dir', 1, 30, '{dir}', NOW(), 1, 399);

  -- Grid columns
  -- Procedure / Plan (HTML)
  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 399, 'eqms_execution_stage_verification_plan', 'verification_plan', 1, 'HTML', NOW(), 1);

  -- Acceptance Criteria (HTML)
  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, value_type, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 399, 'eqms_execution_stage_verification_plan', 'acceptance_criteria', 1, 'HTML', NOW(), 1);

  -- DIR No.
  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 399, 'eqms_design_input_requirement', 'dir_id', 1, NOW(), 1);

  -- Specification Type (from spec type LK)
  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 399, 'eqms_design_specification_type_lk', 'specification_type', 1, NOW(), 1);

  -- Parameter (from DIG specification)
  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 399, 'eqms_dig_specification', 'specification_parameter', 1, NOW(), 1);

  -- mapperVariable (text)
  INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, status, fk_eqms_document_template_id, variable_identifier, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, 30, '{mapperVariable}', NOW(), 1, 400);

  -- Filter: project id
  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 'eqms_project', 'id', '{"id":"@project_id"}', 1, NOW(), 1);

  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 'eqms_project_build_stages', 'id', 1, NOW(), 1);

  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 'eqms_project_build_stage_order', 'id', 1, NOW(), 1);

  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 'eqms_execution_stage', 'id', 1, NOW(), 1);

  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 'eqms_execution_stage_verification_plan', 'id', 1, NOW(), 1);

  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 'eqms_design_input_requirement', 'id', 1, NOW(), 1);

  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 'eqms_dig_specification', 'id', 1, NOW(), 1);

  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 'eqms_project_applicable_specification', 'id', 1, NOW(), 1);

  INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 'eqms_design_specification_type_lk', 'id', 1, NOW(), 1);

  -- Transformation rules
  -- dir grid -> grid operation
  INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 399, 7, 1, 1, NOW(), 1);

  -- mapperVariable -> text operation
  INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, status, "order", created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 400, 10, 1, 1, NOW(), 1);

END $$;