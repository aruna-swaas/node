-- Classification: Confidential

DO $$
DECLARE
    VAR_TENANT_KEY              INT     := ${TENANTKEY};
    VAR_ORG_ID                  INT     := ${ORGID};
    VAR_BUCKET_NAME             TEXT    := '${BUCKETNAME}';
BEGIN
    -- =============================================
    -- 1. EQMS_DOCUMENT_TEMPLATE_TYPE_LK INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template_type_lk (eqms_tenant_key, fk_eqms_organization_id, document_template_type, status, created_date, created_by, ref_id)
    VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'record_generation_maintenance_report', 1, NOW(), 1, 60);

    -- =============================================
    -- 2. EQMS_DOCUMENT_TEMPLATE INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name,
        document_template_extension, s3_bucket_name, s3_object_key, template_version, status,
        created_date, created_by, ref_id, fk_eqms_record_generation_mode_lk_id
    ) VALUES (
        VAR_TENANT_KEY, VAR_ORG_ID, 60, 'INF-F-04 Maintenance Report', '.docx',
        VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Infrastructure/INF-F-04 Maintenance Report.docx'),
        1.0, 1, NOW(), 1, 59, 2
    );

    INSERT INTO dms.eqms_document_template_history (fk_eqms_document_template_id, eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_type_lk_id, document_template_name, document_template_extension, s3_bucket_name, s3_object_key, template_version, status, created_date, valid_from_date, created_by) VALUES (59, VAR_TENANT_KEY, VAR_ORG_ID, 60, 'INF-F-04 Maintenance Report', '.docx', VAR_BUCKET_NAME, CONCAT(VAR_TENANT_KEY, '/', VAR_ORG_ID, '/Document Templates/Functional Procedure and Forms/Infrastructure/INF-F-04 Maintenance Report.docx'), 1.0, 1, NOW(), NOW(), 1);


    INSERT INTO dms.eqms_document_template_form_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, fk_eqms_form_id, status, created_date, created_by) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 59, 159, 1, NOW(), 1);

    -- =============================================
    -- 3. EQMS_DOCUMENT_TEMPLATE_VARIABLE INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable (
        eqms_tenant_key, fk_eqms_organization_id, variable_key, status, created_date, created_by, fk_eqms_document_template_id, variable_identifier, ref_id) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructureName', 1, NOW(), 1, 59, '{infrastructureName}', 923),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'serialNo', 1, NOW(), 1, 59, '{serialNo}', 924),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'departmentName', 1, NOW(), 1, 59, '{departmentName}', 925),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'equipments', 1, NOW(), 1, 59, '{equipments}', 926),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'maintenanceDetails', 1, NOW(), 1, 59, '{maintenanceDetails}', 927),
        (VAR_TENANT_KEY, VAR_ORG_ID, 'mapperVariable', 1, NOW(), 1, 59, '{mapperVariable}', 928);

    -- =============================================
    -- 4. EQMS_DOCUMENT_VARIABLE_MAPPER INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_variable_mapper (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, form_table_name, form_column_name, form_condition, status, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 923, 'eqms_infrastructure', 'infrastructure_name', null, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 924, 'eqms_infrastructure', 'serial_number', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 925, 'eqms_organization_department', 'department_name', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 926, 'eqms_equipment_item', 'equipment_item', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 926, 'eqms_equipment_calibration_details', 'calibration_status', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 927, 'eqms_maintenance_report_detail', 'action_carried_out', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 927, 'eqms_maintenance_service_type_lk', 'maintenance_service_type', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 927, 'eqms_frequency_lk', 'frequency_name', NULL, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 928, 'eqms_maintenance_report', 'id', '{"id": "@maintenance_report_id"}', 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 928, 'eqms_maintenance_report_equipment', 'id', null, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 928, 'eqms_infrastructure_maintenance_plan_detail', 'id', null, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 928, 'eqms_infrastructure_maintenance_plan', 'id', null, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 928, 'eqms_infrastructure_maintenance_plan_equipments', 'id', null, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 928, 'eqms_infrastructure_maintenance_schedule_detail', 'id', null, 1, NOW(), 1);

    -- =============================================
    -- 5. EQMS_DOCUMENT_TEMPLATE_VARIABLE_TRANSFORMATION_RULES INSERTIONS
    -- =============================================
    INSERT INTO dms.eqms_document_template_variable_transformation_rules (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_variable_id, fk_eqms_document_variable_operation_id, "order", status, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 923, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 924, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 925, 10, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 926, 7, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 927, 7, 1, 1, NOW(), 1),
        (VAR_TENANT_KEY, VAR_ORG_ID, 928, 10, 1, 1, NOW(), 1);

    -- =============================================
    -- 6. EQMS_DOCUMENT_TEMPLATE_MAGIC_READ_DETAILS INSERTION
    -- =============================================
    INSERT INTO dms.eqms_document_template_magic_read_details (
        eqms_tenant_key, fk_eqms_organization_id, fk_eqms_document_template_id, container_id, status, created_date, created_by
    ) VALUES
        (VAR_TENANT_KEY, VAR_ORG_ID, 59, 'INFRA_MAINTENANCE_REPORT_DOCUMENT_GENERATION', 1, NOW(), 1);

END $$;
