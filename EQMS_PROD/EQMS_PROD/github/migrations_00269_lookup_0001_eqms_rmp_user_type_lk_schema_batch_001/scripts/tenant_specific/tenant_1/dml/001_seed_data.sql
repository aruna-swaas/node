DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_rmp_user_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, user_type_name, description, status, created_date, created_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Care taker', 'Patient care taker or family member who assists with device use', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Doctor', 'Medical doctor who prescribes and oversees device usage', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Nurse', 'Registered nurse who operates the device in clinical settings', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Patient', 'End patient user who directly uses the medical device', 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Technician', 'Medical device technician responsible for device operation and maintenance', 1, NOW(), 1);

END $$;
