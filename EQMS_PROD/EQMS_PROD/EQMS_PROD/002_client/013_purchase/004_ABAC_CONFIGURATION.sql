DO $$ 
DECLARE 
VAR_TENANT_KEY INT := ${TENANTKEY}; 
VAR_ORG_ID INT := ${ORGID}; 

BEGIN

--eqms_form
INSERT INTO abac.eqms_form (eqms_tenant_key, fk_eqms_organization_id, form_name, status, created_date, created_by, modified_date, modified_by, fk_eqms_form_type_lk_id, is_parallel_allowed, completion_tracking, fk_eqms_entity_subscription_id, ref_id, slug)
VALUES
    (VAR_TENANT_KEY, VAR_ORG_ID, 'Purchase Order', 1, NOW(), 1, NULL, NULL, 3, false, false, NULL, 116, NULL),
    (VAR_TENANT_KEY, VAR_ORG_ID, 'Record Generation Purchasing Information', 1, NOW(), 1, NULL, NULL, 1, 'false', 'false', null, 164, 'record_generation_purchasing_information');

INSERT INTO abac.eqms_form_menu_mapping (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id, fk_eqms_menu_lk_id, status, created_date, created_by) VALUES 
    (VAR_TENANT_KEY, VAR_ORG_ID, 116, 212, 1, NOW(), 1),
    (VAR_TENANT_KEY, VAR_ORG_ID, 164, 308, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 116, 310, 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 122, 305, 1, NOW(), 1);

END $$; 