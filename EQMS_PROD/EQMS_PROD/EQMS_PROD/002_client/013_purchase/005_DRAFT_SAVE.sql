DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (60, VAR_TENANT_KEY, VAR_ORG_ID, 'purchase_order', NULL , 1, NULL, NULL, NULL, NULL, 'purchase_order');
INSERT INTO organization.eqms_context_types (ref_id, eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, modified_date, modified_by, context_slug) VALUES (62, VAR_TENANT_KEY, VAR_ORG_ID, 'part_category', NULL , 1, NULL, NULL, NULL, NULL, 'part_category');
INSERT INTO organization.eqms_context_types (eqms_tenant_key, fk_eqms_organization_id, context_name, status, created_date, created_by, 
context_slug, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_part_category_mapper', 1, NOW(), 1, 'vendor_part_category_mapper', 63);
INSERT INTO organization.eqms_context_types (eqms_tenant_key, fk_eqms_organization_id, context_name, status, created_date, created_by, 
context_slug, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_re_evaluation', 1, NOW(), 1, 'vendor_re_evaluation', 64);
INSERT INTO organization.eqms_context_types (eqms_tenant_key, fk_eqms_organization_id, context_name, status, created_date, created_by, 
context_slug, ref_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 'sample_order', 1, NOW(), 1, 'sample_order', 65);
END $$;
