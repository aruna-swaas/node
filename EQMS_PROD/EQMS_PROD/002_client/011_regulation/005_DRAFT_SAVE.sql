DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id, ref_id, slug)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Add Manufacturing License', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 77, 'add_manufacturing_license'),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Add Test License', 1, NOW(), 1, NULL, NULL, 1, false, false, NULL, 78, 'add_test_license');

INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by, modified_date, modified_by)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 77, 164, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 78, 163, 1, NOW(), 1, NULL, NULL);

INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (19, VAR_TENANT_KEY, VAR_ORG_ID, 'organization_site', NULL , 1, NULL, NULL, NULL, NULL, 'organization_site');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (79, VAR_TENANT_KEY, VAR_ORG_ID, 'principle_checklist', NULL , 1, NULL, NULL, NULL, NULL, 'principle_checklist');
END $$;