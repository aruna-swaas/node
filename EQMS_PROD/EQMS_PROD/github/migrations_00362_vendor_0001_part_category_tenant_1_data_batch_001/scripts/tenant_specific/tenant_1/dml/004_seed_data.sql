DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN
INSERT INTO organization.eqms_context_types (
  eqms_tenant_key, fk_eqms_organization_id, context_name, context_description, status, created_date, created_by, context_slug, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_re_evaluation_criteria', NULL , 1, NOW(), 1, 'vendor_re_evaluation_criteria',59),
(VAR_TENANT_KEY, VAR_ORG_ID, 'sample_inspection_criteria', NULL , 1, NOW(), 1,'sample_inspection_criteria',61),
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_agreement_checklist_id', 'Vendor Management', 1, NOW(), 1, 'vendor_agreement_checklist_id', 69),
(VAR_TENANT_KEY, VAR_ORG_ID, 'vendor_selection_criteria_id', 'vendor Management', 1, NOW(), 1, 'vendor_selection_criteria_id', 70),
(VAR_TENANT_KEY, VAR_ORG_ID, 'part_category_id', 'vendor Management', 1, NOW(), 1, 'part_category_id', 71),
(VAR_TENANT_KEY, VAR_ORG_ID, 'sample_order_id', 'vendor Management', 1, NOW(), 1, 'sample_order_id', 72),
(VAR_TENANT_KEY, VAR_ORG_ID, 'sample_order_inspection_id', 'vendor Management', 1, NOW(), 1, 'sample_order_inspection_id', 73);
END $$;