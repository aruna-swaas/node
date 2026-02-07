DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_reg_manufacture_license_template (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, template_code, template_type, description, version, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'MD-3', 'Manufacturing License', NULL, 1.0, 1, 1, NOW(), NULL, NULL);

END $$;
