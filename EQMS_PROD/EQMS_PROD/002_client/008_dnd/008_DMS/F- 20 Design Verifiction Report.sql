DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
--Design Verification Report V2
-- Refactored to use hardcoded ref_id values instead of dynamic variables
--Insert into eqms_document_template_type_lk with ref_id = 24
INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'design_verification_report', 1, NOW(), 1, 24);

--First Insert to eqms_document_template with ref_id = 23
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, template_version, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 24, 'F-20 Design Verifiction Report V 2', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-20 Design Verifiction Report V 2.docx'), 1, 2, NOW(), 1, 1.0, 23);

-- =============================================
-- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 23, 'DND_VERIFICATION_REPORT_DOCUMENT_GENERATION', 1, NOW(), 1);

--History table insert with template_id = 23
INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, container_id, created_date, valid_from_date, created_by) VALUES (23, VAR_TENANT_KEY, VAR_ORG_ID, 24, 'F-20 Design Verifiction Report V 2', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-20 Design Verifiction Report V 2.docx'), 1.0, 1, 'DND_VERIFICATION_REPORT_DOCUMENT_GENERATION', NOW(), NOW(), 1);


--INSERT INTO dms.eqms_document_template_form_mapping
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 23, 46, 1, NOW(), 1);

--Item tested Variable into eqms_document_template_variable with ref_id = 342
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'itemTested', '{itemTested}', 1, 23, NOW(), 1, 342);

--Mapper variable for item tested
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_design_stage_item_lk', 'item_type', 1, 342, NOW(), 1);

--Batch Number Variable into eqms_document_template_variable with ref_id = 343
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'batchNo', '{batchNo}', 1, 23, NOW(), 1, 343);

--Mapper variable for batch number
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification', 'batch_no', 1, 343, NOW(), 1);

--Software version Variable into eqms_document_template_variable with ref_id = 344
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'softwareVersion', '{softwareVersion}', 1, 23, NOW(), 1, 344);

--Mapper variable for software version
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification', 'software_version', 1, 344, NOW(), 1);

--Tested by user Variable into eqms_document_template_variable with ref_id = 345
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'testedBy', '{testedBy}', 1, 23, NOW(), 1, 345);

--mapper variable for tester first name
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_users', 'encrypted_user_first_name', 1, 345, NOW(), 1);

--mapper variable for tester last name
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_users', 'encrypted_user_last_name', 1, 345, NOW(), 1);

--tested by user last Variable into eqms_document_template_variable with ref_id = 346 - SKIPPED (combined with 345)

-- tested on variable into eqms_document_template_variable with ref_id = 347
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'testedOn', '{testedOn}', 1, 23, NOW(), 1, 347);

--mapper data for tested on
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification', 'tested_date', 1, 347, NOW(), 1);

--Jig used Variable into eqms_document_template_variable with ref_id = 348
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'jigsUsed', '{jigsUsed}', 1, 23, NOW(), 1, 348);

--Mapper data for jigs used
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_jig_lk', 'jig_name', 1, 348, NOW(), 1);

--Equipments used Variable into eqms_document_template_variable with ref_id = 349
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'equipmentsUsed', '{equipmentsUsed}', 1, 23, NOW(), 1, 349);

-- mapper data for equipments used
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_equipment_lk', 'equipment_name', 1, 349, NOW(), 1);

--Verification report Variable into eqms_document_template_variable with ref_id = 350
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'verificationReport', '{verificationReport}', 1, 23, NOW(), 1, 350);

-- mapper data for the verification report grid
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_design_input_requirement', 'dir_id', 1, 350, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'specification_description', 1, 350, NOW(), 1, 'HTML');

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification_plan', 'acceptance_criteria', 1, 350, NOW(), 1, 'HTML');

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification', 'test_result', 1, 350, NOW(), 1);

--mapperVariable into eqms_document_template_variable with ref_id = 351
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', '{mapperVariable}', 1, 23, NOW(), 1, 351);

-- Transformation rules for all variables
-- Grid variables (operation_id = 7) - changed from text to grid
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 342, 7, 1, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 343, 7, 1, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 344, 7, 1, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 345, 7, 1, 1, NOW(), 1);
-- ref_id 346 skipped (combined with 345)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 347, 7, 1, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 351, 10, 1, 1, NOW(), 1);

-- Grid variables (operation_id = 7)
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 348, 7, 1, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 349, 7, 1, 1, NOW(), 1);
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 350, 7, 1, 1, NOW(), 1);

--fileName Variable into eqms_document_template_variable with ref_id = 429
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'fileName', '{fileName}', 1, 23, NOW(), 1, 429);

-- Transformation rules for fileName (ref_id 429) - grid operation
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 429, 7, 1, 1, NOW(), 1);

-- Mapper data for fileName (ref_id 429) - file_name
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_file', 'file_name', 1, 429, NOW(), 1);

--Mapper data for the mapper variable
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_organization_product', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_design_input_requirement', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_dig_specification', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_equipment_lk', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification_plan', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification_report', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification_jigs', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_verification_equipments', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_jig_lk', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, form_condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project', 'id', 1, 351, '{"id":"@project_id"}', NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_build_stage_order', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_build_stages', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_quality_plan', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_users', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_verification_result_lk', 'id', 1, 351, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_design_stage_item_lk', 'id', 1, 351, NOW(), 1);

END $$;