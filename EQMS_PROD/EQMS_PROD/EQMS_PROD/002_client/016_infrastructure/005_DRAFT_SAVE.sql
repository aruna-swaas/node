DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES
(78, VAR_TENANT_KEY, VAR_ORG_ID, 'complaint', NULL , 1, NOW (), 1, NULL, NULL, 'complaint'),
(83, VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructure_qualification', NULL , 1, NOW (), 1, NULL, NULL, 'infrastructure_qualification'),
(84, VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructure_request', NULL , 1, NOW (), 1, NULL, NULL,'infrastructure_request');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (85, VAR_TENANT_KEY, VAR_ORG_ID, 'maintenance_plan', NULL , 1, NULL, NULL, NULL, NULL, 'maintenance_plan');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (105, VAR_TENANT_KEY, VAR_ORG_ID, 'infrastructure_id', NULL , 1, NULL, NULL, NULL, NULL, 'infrastructure_id');


END $$;