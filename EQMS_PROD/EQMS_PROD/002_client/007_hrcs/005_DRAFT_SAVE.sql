DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id, ref_id, slug)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Health Checkup Declaration', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 93, 'health_checkup_declaration'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Skill Master', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 94, 'skill_master'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Training Schedule', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 95, 'training_schedule');

INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by, modified_date, modified_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 93, 35, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 94, 25, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 95, 32, 1, NOW(), 1, NULL, NULL);

INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (23, VAR_TENANT_KEY, VAR_ORG_ID, 'skill_master', NULL , 1, NULL, NULL, NULL, NULL, 'skill_master'),
(24, VAR_TENANT_KEY, VAR_ORG_ID, 'employee_list', NULL , 1, NULL, NULL, NULL, NULL, 'employee_list');
END $$;