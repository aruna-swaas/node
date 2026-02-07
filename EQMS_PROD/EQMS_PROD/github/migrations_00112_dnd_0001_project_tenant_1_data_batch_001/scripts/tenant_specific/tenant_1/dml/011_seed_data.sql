DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
--Design Review Report
-- Refactored to use new scalable schema structure
INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'design_review_report', 1, NOW(), 1, 12);

--First Insert to eqms_document_template with ref_id = 26
INSERT INTO dms.eqms_document_template (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, template_version, ref_id, fk_eqms_document_template_type_lk_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'F-17 Design Review Report', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-17 Design Review Report.docx'), 1, 2, NOW(), 1, 1.0, 26, 12);

-- =============================================
-- 2.1. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 26, 'DND_DESIGN_REVIEW_REPORT_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert into history table with the template_id = 26
INSERT INTO dms.eqms_document_template_history (eqms_tenant_key, fk_eqms_organization_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, status, container_id, created_date, created_by, valid_from_date, fk_eqms_document_template_id, template_version, fk_eqms_document_template_type_lk_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'F-17 Design Review Report', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Design and Development/Design and Development Forms/F-17 Design Review Report.docx'), 1, 'DND_DESIGN_REVIEW_REPORT_DOCUMENT_GENERATION', NOW(), 1, NOW(), 26, 1.0, 12);

--INSERT INTO dms.eqms_document_template_form_mapping
INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 26, 47, 1, NOW(), 1);

--prototypeDesignStage Variable into eqms_document_template_variable with ref_id = 387
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'prototypeDesignStage', '{prototypeDesignStage}', 1, 26, NOW(), 1, 387);

--pilotDesignStage Variable into eqms_document_template_variable with ref_id = 388
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'pilotDesignStage', '{pilotDesignStage}', 1, 26, NOW(), 1, 388);

--designTeamMembers Variable into eqms_document_template_variable with ref_id = 361
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'designTeamMembers', '{designTeamMembers}', 1, 26, NOW(), 1, 361);

--mapperVariable Variable into eqms_document_template_variable with ref_id = 362
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', '{mapperVariable}', 1, 26, NOW(), 1, 362);

--meetingDetails Variable into eqms_document_template_variable with ref_id = 358
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'meetingDetails', '{meetingDetails}', 1, 26, NOW(), 1, 358);

--otherTeamMembers Variable into eqms_document_template_variable with ref_id = 357
INSERT INTO dms.eqms_document_template_variable (eqms_tenant_key, fk_eqms_organization_id, variable_key, variable_identifier, status, fk_eqms_document_template_id, created_date, created_by, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'otherTeamMembers', '{otherMembers}', 1, 26, NOW(), 1, 357);

-- Transformation rules for prototypeDesignStage (ref_id 387) - relation_matrix operation
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 387, 6, 1, 1, '{"eqms_design_stage_lk": {"ref_id": 2}}', NOW(), 1);

-- Transformation rules for pilotDesignStage (ref_id 388) - relation_matrix operation
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 388, 6, 1, 1, '{"eqms_design_stage_lk": {"ref_id": 3}}', NOW(), 1);

-- Transformation rules for designTeamMembers (ref_id 361) - grid operation
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 361, 7, 1, 1, NOW(), 1);

-- Transformation rules for mapperVariable (ref_id 362) - text operation
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 362, 10, 1, 1, NOW(), 1);

-- Transformation rules for meetingDetails (ref_id 358) - grid operation
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 358, 7, 1, 1, NOW(), 1);

-- Transformation rules for otherTeamMembers (ref_id 357) - grid operation
INSERT INTO dms.eqms_document_template_variable_transformation_rules (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, condition, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 357, 7, 1, 1, '{"eqms_design_stage_lk": {"ref_id": 1}}', NOW(), 1);

-- Mapper data for prototypeDesignStage (ref_id 387)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_build_stage_order', 'stage_number', 1, 387, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_design_stage_lk', 'design_stage', 1, 387, NOW(), 1);

-- Mapper data for pilotDesignStage (ref_id 388)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_build_stage_order', 'stage_number', 1, 388, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_design_stage_lk', 'design_stage', 1, 388, NOW(), 1);

-- Mapper data for meetingDetails (ref_id 358) - place
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_design_review_report', 'place', 1, 358, NOW(), 1);

-- Mapper data for meetingDetails (ref_id 358) - date
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_design_review_report', 'date', 1, 358, NOW(), 1);

-- Mapper data for designTeamMembers (ref_id 361) - last_name
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_users', 'encrypted_user_last_name', 1, 361, NOW(), 1);

-- Mapper data for designTeamMembers (ref_id 361) - first_name
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_users', 'encrypted_user_first_name', 1, 361, NOW(), 1);

-- Mapper data for mapperVariable (ref_id 362) - project id with @project_id condition
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, form_condition) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project', 'id', 1, 362, NOW(), 1, '{"id": "@project_id"}');

-- Mapper data for mapperVariable (ref_id 362) - design_stage_lk ref_id
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_design_stage_lk', 'ref_id', 1, 362, NOW(), 1);

-- Mapper data for mapperVariable (ref_id 362) - project_build_stages id
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_build_stages', 'id', 1, 362, NOW(), 1);

-- Mapper data for mapperVariable (ref_id 362) - project_build_stage_order id
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_build_stage_order', 'id', 1, 362, NOW(), 1);

-- Mapper data for mapperVariable (ref_id 362) - execution_stage id
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage', 'id', 1, 362, NOW(), 1);

-- Mapper data for mapperVariable (ref_id 362) - execution_stage_design_review_report id
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_design_review_report', 'id', 1, 362, NOW(), 1);

-- Mapper data for mapperVariable (ref_id 362) - project_design_team_member_selection id
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_team_member_selection', 'id', 1, 362, NOW(), 1);

-- Mapper data for mapperVariable (ref_id 362) - project_design_team_stages_mapper id
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_team_stages_mapper', 'id', 1, 362, NOW(), 1);

-- Mapper data for mapperVariable (ref_id 362) - users id
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_users', 'id', 1, 362, NOW(), 1);

-- Mapper data for mapperVariable (ref_id 362) - project_design_team_member id
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_team_member', 'id', 1, 362, NOW(), 1);

-- Mapper data for meetingDetails (ref_id 358) - topic
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_design_review_report', 'topic', 1, 358, NOW(), 1);

-- Mapper data for meetingDetails (ref_id 358) - minutes_of_meeting
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by, value_type) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_execution_stage_design_review_report', 'minutes_of_meeting', 1, 358, NOW(), 1, 'HTML');

-- Mapper data for otherTeamMembers (ref_id 357) - resource_name
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_team_other_member', 'resource_name', 1, 357, NOW(), 1);

-- Mapper data for otherTeamMembers (ref_id 357) - resource_name (duplicate entry)
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, form_table_name, form_column_name, status, fk_eqms_document_template_variable_id, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'eqms_project_design_team_other_member', 'resource_name', 1, 357, NOW(), 1);

END $$;