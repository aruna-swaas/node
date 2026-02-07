DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (52, VAR_TENANT_KEY, VAR_ORG_ID, 'order_acknowledgement', NULL , 1, NULL, NULL, NULL, NULL, 'order_acknowledgement');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (53, VAR_TENANT_KEY, VAR_ORG_ID, 'organization', NULL , 1, NULL, NULL, NULL, NULL, 'organization');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (54, VAR_TENANT_KEY, VAR_ORG_ID, 'customer_feedback', NULL , 1, NULL, NULL, NULL, NULL, 'customer_feedback');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (55, VAR_TENANT_KEY, VAR_ORG_ID, 'sales_forecast', NULL , 1, NULL, NULL, NULL, NULL, 'sales_forecast');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (56, VAR_TENANT_KEY, VAR_ORG_ID, 'customer_feedback_criteria', NULL , 1, NULL, NULL, NULL, NULL, 'customer_feedback_criteria');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (57, VAR_TENANT_KEY, VAR_ORG_ID, 'delivery_dispatch', NULL , 1, NULL, NULL, NULL, NULL, 'delivery_dispatch');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (58, VAR_TENANT_KEY, VAR_ORG_ID, 'quotation', NULL , 1, NULL, NULL, NULL, NULL, 'quotation');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (77, VAR_TENANT_KEY, VAR_ORG_ID, 'product', NULL , 1, NULL, NULL, NULL, NULL, 'product');

END $$;