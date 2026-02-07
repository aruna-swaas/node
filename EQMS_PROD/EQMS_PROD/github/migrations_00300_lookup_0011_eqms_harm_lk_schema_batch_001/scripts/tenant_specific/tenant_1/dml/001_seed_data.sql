DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_harm_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, harm_to_value, description, status, created_by, created_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Patient', 'Harm that may occur to the patient using the medical device', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'User', 'Harm that may occur to the healthcare professional or user of the medical device', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Bystanders', 'Harm that may occur to people in the vicinity who are not directly using the device', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Enrollment', 'Harm that may occur during the enrollment or clinical trial process', 1, 1, NOW());

END $$;
