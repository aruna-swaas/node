-- eqms_design_transfer_checklist_template_mapper_lk
DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_design_transfer_checklist_template_mapper_lk (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_design_transfer_checklist_lk_id, fk_eqms_document_template_id, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 18, 1, NULL, NULL, NULL, NULL);

END $$;