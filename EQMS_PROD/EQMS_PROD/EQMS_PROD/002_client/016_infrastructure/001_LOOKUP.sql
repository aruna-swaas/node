DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- eqms_frequency_lk
INSERT INTO organization.eqms_frequency_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, frequency_name, status, created_by, created_date, modified_by, modified_date, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Hourly', 1, 1, NOW(), 1, NOW(), 'hourly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Daily', 1, 1, NOW(), 1, NOW(), 'daily'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Weekly', 1, 1, NOW(), 1, NOW(), 'weekly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Monthly', 1, 1, NOW(), 1, NOW(), 'monthly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Quarterly', 1, 1, NOW(), 1, NOW(), 'quarterly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Half-Yearly', 1, 1, NOW(), 1, NOW(), 'half_yearly'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Yearly', 1, 1, NOW(), 1, NOW(), 'yearly');

INSERT INTO organization.eqms_power_supply_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, power_supply_name, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Single Phase 230V', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Three Phase 415V', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'DC 24V', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'DC 12V', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'AC 110V', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'AC 440V', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Battery Backup', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Solar Power', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'UPS Protected', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Not Applicable', 1, 1, NOW(), 1, NOW());

-- eqms_maintenance_service_type_lk
INSERT INTO organization.eqms_maintenance_service_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, maintenance_service_type, status, created_by, created_date, modified_by, modified_date, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Supplier', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Agent', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Inhouse', 1, 1, NOW(), 1, NOW(), NULL);

-- eqms_iqc_group_lk
INSERT INTO organization.eqms_iqc_group_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, iqc_group_name, iqc_group_type, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Physical Parameters', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Chemical Parameters', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Microbiological Parameters', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Functional Testing', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Performance Parameters', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Safety Parameters', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Environmental Parameters', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Electrical Parameters', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Mechanical Parameters', 'system_defined', 1, 1, NOW(), 1, NOW());

END $$;
