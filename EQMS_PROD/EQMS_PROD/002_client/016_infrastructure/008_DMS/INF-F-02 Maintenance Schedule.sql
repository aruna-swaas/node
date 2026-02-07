-- Classification - Confidential
DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
-- INF-F-02 Maintenance Schedule Template Document - Dev Database

-- Insert document template type lookup first
INSERT INTO dms.eqms_document_template_type_lk (
    ref_id, eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by
) VALUES 
(55, VAR_TENANT_KEY, VAR_ORG_ID, 'maintenance_schedule_template', 1, NOW(), 1);

-- Insert document template
INSERT INTO dms.eqms_document_template (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, fk_eqms_record_generation_mode_lk_id, created_date, created_by, ref_id
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 'INF-F-02 Maintenance Schedule', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Infrastructure/INF-F-02 Maintenance Schedule.docx'), 1.0, 1, 2, NOW(), 1, 54);

-- Form mapping (change 140 if different form_id)
INSERT INTO dms.eqms_document_template_form_mapping (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 163, 1, NOW(), 1);

-- =============================================
-- EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTIONS
-- =============================================
INSERT INTO dms.eqms_document_template_magic_read_details (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'MAINTENANCE_SCHEDULE_DOCUMENT_GENERATION', 1, NOW(), 1);

-- Insert document template history
INSERT INTO dms.eqms_document_template_history (
    fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by
) VALUES 
(54, VAR_TENANT_KEY, VAR_ORG_ID, 55, 'INF-F-02 Maintenance Schedule', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Infrastructure/INF-F-02 Maintenance Schedule.docx'), 1.0, 1, NOW(), NOW(), 1);

-- =============================
-- Text Variables (ref_ids 881–884)
-- =============================
INSERT INTO dms.eqms_document_template_variable (
    eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'serial_number', 54, '{serial_number}', 1, 1, NOW(), 881),
(VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructure_name', 54, '{infrastructure_name}', 1, 1, NOW(), 882),
(VAR_TENANT_KEY, VAR_ORG_ID, 'department', 54, '{department}', 1, 1, NOW(), 883);

INSERT INTO dms.eqms_document_template_variable_transformation_rules (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 881, 10, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 882, 10, 1, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 883, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 881, 'eqms_infrastructure', 'serial_number', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 883, 'eqms_organization_department', 'department_name', NULL, 1, 1, NOW());

INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 882, 'eqms_infrastructure', 'infrastructure_name', NULL, 1, 1, NOW());

-- =============================
-- Grid Variables (ref_ids 884–889)
-- =============================

-- Tools grid (tool_name)
INSERT INTO dms.eqms_document_template_variable (
    eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'tools', 54, '{tools}', 1, 1, NOW(), 884);
INSERT INTO dms.eqms_document_template_variable_transformation_rules (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 884, 7, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 884, 'eqms_tools', 'tool_name', NULL, 1, 1, NOW());

-- Equipments grid (equipment_name)
INSERT INTO dms.eqms_document_template_variable (
    eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'equipments', 54, '{equipments}', 1, 1, NOW(), 885);
INSERT INTO dms.eqms_document_template_variable_transformation_rules (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 885, 7, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date
) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 885, 'eqms_equipment_lk', 'equipment_name', NULL, 1, 1, NOW());

-- Skills grid (skill_name)
INSERT INTO dms.eqms_document_template_variable (
    eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'skills', 54, '{skills}', 1, 1, NOW(), 886);
INSERT INTO dms.eqms_document_template_variable_transformation_rules (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 886, 7, 1, 1, NOW(), 1);
INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 886, 'eqms_hr_skill_master', 'skill_name', NULL, 1, 1, NOW());

-- Maintenance grid (maintenance_description, frequency_name, maintenance_service_type)
INSERT INTO dms.eqms_document_template_variable (
    eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'maintenance', 54, '{maintenance}', 1, 1, NOW(), 887);

INSERT INTO dms.eqms_document_template_variable_transformation_rules (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 887, 7, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 887, 'eqms_infrastructure_maintenance_plan_detail', 'maintenance_description', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 887, 'eqms_frequency_lk', 'frequency_name', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 887, 'eqms_maintenance_service_type_lk', 'maintenance_service_type', NULL, 1, 1, NOW());

-- Mapper variable: all tables with only id as grid
INSERT INTO dms.eqms_document_template_variable (
    eqms_tenant_key, fk_eqms_organization_id, variable_key, fk_eqms_document_template_id, variable_identifier, status, created_by, created_date, ref_id
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 'mapper_variable', 54, '{mapper_variable}', 1, 1, NOW(), 888);

INSERT INTO dms.eqms_document_template_variable_transformation_rules (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 888, 10, 1, 1, NOW(), 1);

INSERT INTO dms.eqms_document_variable_mapper (
    eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date
) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 888, 'eqms_infrastructure_maintenance_plan_equipments', 'id', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 888, 'eqms_infrastructure_maintenance_plan_skill_mapper', 'id', NULL, 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 888, 'eqms_infrastructure_maintenance_plan_tools', 'id', NULL, 1, 1, NOW());

-- Mapper Variable with Form Condition
INSERT INTO dms.eqms_document_variable_mapper (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, value_type, status, created_by, created_date, form_condition) VALUES 
(VAR_TENANT_KEY, VAR_ORG_ID, 888, 'eqms_infrastructure_maintenance_plan', 'fk_eqms_infrastructure_id', NULL, 1, 1, NOW(), '{"fk_eqms_infrastructure_id" : "@infrastructure_id"}');


END $$;