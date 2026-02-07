DO $$
DECLARE
    VAR_TENANT_KEY   INT     := ${TENANTKEY}; 
    VAR_ORG_ID       INT     := ${ORGID};
BEGIN
-- Action Master Lookup Insert Statements based on action-master-lk.csv
INSERT INTO abac.eqms_action_master_lk (eqms_tenant_key, fk_eqms_organization_id, action_name, description, status, created_date, created_by, modified_date, modified_by, ref_id)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Uncheck', 'Uncheck a checkbox in the form', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Save', 'Used to perform save any form', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Submit For Review', 'Used to Raise for a review', 1, NOW(), 1, NULL, NULL, 3);


-- Form Type Lookup Insert Statements based on form-type.csv
INSERT INTO abac.eqms_form_type_lk (eqms_tenant_key, fk_eqms_organization_id, form_type, status, created_date, created_by, modified_date, modified_by, ref_id)
VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'workflow', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'conditional', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'independent', 1, NOW(), 1, NULL, NULL, 3);

INSERT INTO abac.eqms_form_dependency_type_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  dependency_type,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by,
  ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'completion', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'status', 1, NOW(), 1, NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'role_assignment', 1, NOW(), 1, NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'custom', 1, NOW(), 1, NULL, NULL, 4);

END $$;
