DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

INSERT INTO organization.eqms_context_types (
  ref_id, 
  eqms_tenant_key, 
  fk_eqms_organization_id, 
  context_name, 
  context_description, 
  status, 
  created_date, 
  created_by, 
  modified_date, 
  modified_by, 
  context_slug
) VALUES 
  (67, VAR_TENANT_KEY, VAR_ORG_ID, 'sanity_specification_checklist', NULL, 1, NULL, NULL, NULL, NULL, 'sanity_specification_checklist'),
  (74, VAR_TENANT_KEY, VAR_ORG_ID, 'non_conformance_details', 'Qc Management', 1, NOW(), 1, NULL, NULL, 'non_conformance_details'),
  (75, VAR_TENANT_KEY, VAR_ORG_ID, 'form_a_team', NULL, 1, NOW(), 1, NULL, NULL, 'form_a_team'),
  (76, VAR_TENANT_KEY, VAR_ORG_ID, 'goods_inward', NULL, 1, NOW(), 1, NULL, NULL, 'goods_inward'),
  (68, VAR_TENANT_KEY, VAR_ORG_ID, 'sanity_check_inspection', NULL , 1, NULL, NULL, NULL, NULL, 'sanity_check_inspection'),
  (80, VAR_TENANT_KEY, VAR_ORG_ID, 'hardware', NULL , 1, NULL, NULL, NULL, NULL, 'hardware'),
  (81, VAR_TENANT_KEY, VAR_ORG_ID, 'software', NULL , 1, NULL, NULL, NULL, NULL, 'software'),
  (82, VAR_TENANT_KEY, VAR_ORG_ID, 'initiate_inspection', NULL , 1, NULL, NULL, NULL, NULL, 'initiate_inspection');

END $$;