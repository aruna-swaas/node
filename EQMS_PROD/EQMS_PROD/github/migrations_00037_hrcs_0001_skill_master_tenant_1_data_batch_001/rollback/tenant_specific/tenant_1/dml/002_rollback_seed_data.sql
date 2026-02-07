-- Rollback: Delete seed data from file 003_RBAC.sql
-- Original file: 003_RBAC.sql
-- Seed data file: 002_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
  VAR_TENANT_KEY INT := ${TENANTKEY};
  VAR_ORG_ID INT := ${ORGID};
BEGIN

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 37 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 37 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 37 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 37 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 37 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 37 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 36 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 36 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 36 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 36 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 36 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 36 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 34 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 34 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 34 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 34 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 34 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 34 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 33 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 33 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 33 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 33 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 33 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 33 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 31 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 31 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 31 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 31 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 31 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 31 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 30 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 30 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 30 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 30 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 30 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 30 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 28 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 28 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 28 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 28 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 28 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 28 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 27 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 27 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 27 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 27 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 27 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 27 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 19 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 19 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 19 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 19 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 19 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 19 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 18 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 18 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 18 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 18 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 18 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 18 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 16 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 16 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 16 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 16 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 16 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 16 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 15 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 15 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 15 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 15 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 15 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 15 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 10 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 10 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 10 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 10 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 10 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 10 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 7 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 7 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 7 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 7 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 7 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 7 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1116 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1115 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1114 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1113 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1112 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 921 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 920 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 919 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 918 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 917 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 916 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 915 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 914 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 913 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 912 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 856 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 855 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 854 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 853 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 852 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 851 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 850 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 849 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 848 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 847 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 846 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 845 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 823 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 757 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 756 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 755 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 754 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 753 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 752 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 751 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 750 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 749 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 748 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 692 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 691 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 690 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 689 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 688 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 687 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 686 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 685 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 684 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 683 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 682 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 681 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 659 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 593 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 592 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 591 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 590 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 589 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 588 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 587 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 586 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 585 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 584 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 528 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 527 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 526 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 525 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 524 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 523 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 522 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 521 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 520 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 519 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 518 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 517 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 495 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 429 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 428 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 427 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 426 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 425 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 424 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 423 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 422 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 421 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 420 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 364 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 363 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 362 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 361 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 360 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 359 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 358 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 357 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 356 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 355 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 354 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 353 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 331 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 265 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 264 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 263 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 262 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 261 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 260 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 259 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 258 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 257 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 256 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 200 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 199 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 198 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 197 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 196 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 195 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 194 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 193 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 192 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 191 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 190 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 189 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 167 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 101 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 100 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 99 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 98 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 97 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 96 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 95 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 94 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 93 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 92 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 36 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 35 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 34 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 33 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 32 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 31 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 30 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 29 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 28 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 27 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 26 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 25 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 3 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 41 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 40 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 9 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 25 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 24 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 921 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 920 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 919 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 918 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 917 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 916 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 915 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 914 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 913 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 912 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 854 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 853 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 852 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 851 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 850 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 849 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 848 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 847 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 846 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 845 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 823 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 584 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 528 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 527 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 526 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 525 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 524 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 523 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 522 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 521 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 520 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 519 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 518 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 517 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 495 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 265 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 264 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 263 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 262 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 261 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 260 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 259 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 258 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 257 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 256 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 200 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 199 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 198 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 197 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 196 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 195 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 194 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 193 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 192 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 191 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 190 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 189 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 167 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 101 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 100 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 99 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 98 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 97 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 96 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 95 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 94 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 93 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 92 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 36 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 35 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 34 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 33 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 32 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 31 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 30 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 29 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 28 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 27 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 26 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 25 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1116 AND fk_eqms_menu_lk_ref_id = 186 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1115 AND fk_eqms_menu_lk_ref_id = 186 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1114 AND fk_eqms_menu_lk_ref_id = 186 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1113 AND fk_eqms_menu_lk_ref_id = 186 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1112 AND fk_eqms_menu_lk_ref_id = 186 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1111 AND fk_eqms_menu_lk_ref_id = 186 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 921 AND fk_eqms_menu_lk_ref_id = 101 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 920 AND fk_eqms_menu_lk_ref_id = 100 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 919 AND fk_eqms_menu_lk_ref_id = 99 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 918 AND fk_eqms_menu_lk_ref_id = 98 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 917 AND fk_eqms_menu_lk_ref_id = 97 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 916 AND fk_eqms_menu_lk_ref_id = 96 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 915 AND fk_eqms_menu_lk_ref_id = 95 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 914 AND fk_eqms_menu_lk_ref_id = 94 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 913 AND fk_eqms_menu_lk_ref_id = 93 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 912 AND fk_eqms_menu_lk_ref_id = 92 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 856 AND fk_eqms_menu_lk_ref_id = 36 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 855 AND fk_eqms_menu_lk_ref_id = 35 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 854 AND fk_eqms_menu_lk_ref_id = 34 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 853 AND fk_eqms_menu_lk_ref_id = 33 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 852 AND fk_eqms_menu_lk_ref_id = 32 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 851 AND fk_eqms_menu_lk_ref_id = 31 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 850 AND fk_eqms_menu_lk_ref_id = 30 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 849 AND fk_eqms_menu_lk_ref_id = 29 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 848 AND fk_eqms_menu_lk_ref_id = 28 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 847 AND fk_eqms_menu_lk_ref_id = 27 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 846 AND fk_eqms_menu_lk_ref_id = 26 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 845 AND fk_eqms_menu_lk_ref_id = 25 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 823 AND fk_eqms_menu_lk_ref_id = 3 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 757 AND fk_eqms_menu_lk_ref_id = 101 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 756 AND fk_eqms_menu_lk_ref_id = 100 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 755 AND fk_eqms_menu_lk_ref_id = 99 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 754 AND fk_eqms_menu_lk_ref_id = 98 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 753 AND fk_eqms_menu_lk_ref_id = 97 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 752 AND fk_eqms_menu_lk_ref_id = 96 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 751 AND fk_eqms_menu_lk_ref_id = 95 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 750 AND fk_eqms_menu_lk_ref_id = 94 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 749 AND fk_eqms_menu_lk_ref_id = 93 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 748 AND fk_eqms_menu_lk_ref_id = 92 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 692 AND fk_eqms_menu_lk_ref_id = 36 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 691 AND fk_eqms_menu_lk_ref_id = 35 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 690 AND fk_eqms_menu_lk_ref_id = 34 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 689 AND fk_eqms_menu_lk_ref_id = 33 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 688 AND fk_eqms_menu_lk_ref_id = 32 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 687 AND fk_eqms_menu_lk_ref_id = 31 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 686 AND fk_eqms_menu_lk_ref_id = 30 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 685 AND fk_eqms_menu_lk_ref_id = 29 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 684 AND fk_eqms_menu_lk_ref_id = 28 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 683 AND fk_eqms_menu_lk_ref_id = 27 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 682 AND fk_eqms_menu_lk_ref_id = 26 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 681 AND fk_eqms_menu_lk_ref_id = 25 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 659 AND fk_eqms_menu_lk_ref_id = 3 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 593 AND fk_eqms_menu_lk_ref_id = 101 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 592 AND fk_eqms_menu_lk_ref_id = 100 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 591 AND fk_eqms_menu_lk_ref_id = 99 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 590 AND fk_eqms_menu_lk_ref_id = 98 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 589 AND fk_eqms_menu_lk_ref_id = 97 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 588 AND fk_eqms_menu_lk_ref_id = 96 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 587 AND fk_eqms_menu_lk_ref_id = 95 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 586 AND fk_eqms_menu_lk_ref_id = 94 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 585 AND fk_eqms_menu_lk_ref_id = 93 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 584 AND fk_eqms_menu_lk_ref_id = 92 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 528 AND fk_eqms_menu_lk_ref_id = 36 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 527 AND fk_eqms_menu_lk_ref_id = 35 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 526 AND fk_eqms_menu_lk_ref_id = 34 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 525 AND fk_eqms_menu_lk_ref_id = 33 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 524 AND fk_eqms_menu_lk_ref_id = 32 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 523 AND fk_eqms_menu_lk_ref_id = 31 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 522 AND fk_eqms_menu_lk_ref_id = 30 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 521 AND fk_eqms_menu_lk_ref_id = 29 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 520 AND fk_eqms_menu_lk_ref_id = 28 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 519 AND fk_eqms_menu_lk_ref_id = 27 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 518 AND fk_eqms_menu_lk_ref_id = 26 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 517 AND fk_eqms_menu_lk_ref_id = 25 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 495 AND fk_eqms_menu_lk_ref_id = 3 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 429 AND fk_eqms_menu_lk_ref_id = 101 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 428 AND fk_eqms_menu_lk_ref_id = 100 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 427 AND fk_eqms_menu_lk_ref_id = 99 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 426 AND fk_eqms_menu_lk_ref_id = 98 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 425 AND fk_eqms_menu_lk_ref_id = 97 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 424 AND fk_eqms_menu_lk_ref_id = 96 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 423 AND fk_eqms_menu_lk_ref_id = 95 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 422 AND fk_eqms_menu_lk_ref_id = 94 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 421 AND fk_eqms_menu_lk_ref_id = 93 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 420 AND fk_eqms_menu_lk_ref_id = 92 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 364 AND fk_eqms_menu_lk_ref_id = 36 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 363 AND fk_eqms_menu_lk_ref_id = 35 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 362 AND fk_eqms_menu_lk_ref_id = 34 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 361 AND fk_eqms_menu_lk_ref_id = 33 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 360 AND fk_eqms_menu_lk_ref_id = 32 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 359 AND fk_eqms_menu_lk_ref_id = 31 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 358 AND fk_eqms_menu_lk_ref_id = 30 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 357 AND fk_eqms_menu_lk_ref_id = 29 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 356 AND fk_eqms_menu_lk_ref_id = 28 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 355 AND fk_eqms_menu_lk_ref_id = 27 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 354 AND fk_eqms_menu_lk_ref_id = 26 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 353 AND fk_eqms_menu_lk_ref_id = 25 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 331 AND fk_eqms_menu_lk_ref_id = 3 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 265 AND fk_eqms_menu_lk_ref_id = 101 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 264 AND fk_eqms_menu_lk_ref_id = 100 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 263 AND fk_eqms_menu_lk_ref_id = 99 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 262 AND fk_eqms_menu_lk_ref_id = 98 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 261 AND fk_eqms_menu_lk_ref_id = 97 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 260 AND fk_eqms_menu_lk_ref_id = 96 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 259 AND fk_eqms_menu_lk_ref_id = 95 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 258 AND fk_eqms_menu_lk_ref_id = 94 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 257 AND fk_eqms_menu_lk_ref_id = 93 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 256 AND fk_eqms_menu_lk_ref_id = 92 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 200 AND fk_eqms_menu_lk_ref_id = 36 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 199 AND fk_eqms_menu_lk_ref_id = 35 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 198 AND fk_eqms_menu_lk_ref_id = 34 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 197 AND fk_eqms_menu_lk_ref_id = 33 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 196 AND fk_eqms_menu_lk_ref_id = 32 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 195 AND fk_eqms_menu_lk_ref_id = 31 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 194 AND fk_eqms_menu_lk_ref_id = 30 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 193 AND fk_eqms_menu_lk_ref_id = 29 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 192 AND fk_eqms_menu_lk_ref_id = 28 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 191 AND fk_eqms_menu_lk_ref_id = 27 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 190 AND fk_eqms_menu_lk_ref_id = 26 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 189 AND fk_eqms_menu_lk_ref_id = 25 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 167 AND fk_eqms_menu_lk_ref_id = 3 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 101 AND fk_eqms_menu_lk_ref_id = 101 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 100 AND fk_eqms_menu_lk_ref_id = 100 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 99 AND fk_eqms_menu_lk_ref_id = 99 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 98 AND fk_eqms_menu_lk_ref_id = 98 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 97 AND fk_eqms_menu_lk_ref_id = 97 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 96 AND fk_eqms_menu_lk_ref_id = 96 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 95 AND fk_eqms_menu_lk_ref_id = 95 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 94 AND fk_eqms_menu_lk_ref_id = 94 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 93 AND fk_eqms_menu_lk_ref_id = 93 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 92 AND fk_eqms_menu_lk_ref_id = 92 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND fk_eqms_menu_lk_ref_id = 36 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND fk_eqms_menu_lk_ref_id = 35 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND fk_eqms_menu_lk_ref_id = 34 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND fk_eqms_menu_lk_ref_id = 33 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND fk_eqms_menu_lk_ref_id = 32 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND fk_eqms_menu_lk_ref_id = 31 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND fk_eqms_menu_lk_ref_id = 30 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND fk_eqms_menu_lk_ref_id = 29 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND fk_eqms_menu_lk_ref_id = 28 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND fk_eqms_menu_lk_ref_id = 27 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_menu_lk_ref_id = 26 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_menu_lk_ref_id = 25 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_menu_lk_ref_id = 3 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 186 AND menu_name = 'Task Management' AND menu_slug = 'task_management' AND menu_url = 'task-management' AND order = 209 AND status = 1 AND menu_hierarchy_string = '8' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 1;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 101 AND menu_name = 'Job Description' AND menu_slug = 'job_description' AND menu_url = 'hr/record-generation/job-description' AND order = 110 AND status = 1 AND menu_hierarchy_string = '3.36.92.101' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 100 AND menu_name = 'Individual Competency' AND menu_slug = 'individual_competency' AND menu_url = 'hr/record-generation/individual-competency' AND order = 109 AND status = 1 AND menu_hierarchy_string = '3.36.92.100' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 99 AND menu_name = 'Training Need' AND menu_slug = 'training_need' AND menu_url = 'hr/record-generation/training-need' AND order = 108 AND status = 1 AND menu_hierarchy_string = '3.36.92.99' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 98 AND menu_name = 'Resource Requisition' AND menu_slug = 'hr_resource_requisition' AND menu_url = 'hr/record-generation/resource-requisition' AND order = 107 AND status = 1 AND menu_hierarchy_string = '3.36.92.98' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 97 AND menu_name = 'Candidate Evaluation' AND menu_slug = 'hr_candidate_evaluation' AND menu_url = 'hr/record-generation/candidate-evaluation' AND order = 106 AND status = 1 AND menu_hierarchy_string = '3.36.92.97' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 96 AND menu_name = 'Organization Chart' AND menu_slug = 'organization_chart' AND menu_url = 'hr/record-generation/organization-chart' AND order = 105 AND status = 1 AND menu_hierarchy_string = '3.36.92.96' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 95 AND menu_name = 'Induction' AND menu_slug = 'induction' AND menu_url = 'hr/record-generation/induction' AND order = 104 AND status = 1 AND menu_hierarchy_string = '3.36.92.95' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 94 AND menu_name = 'Training Effectiveness Evaluation' AND menu_slug = 'training_effectiveness_evaluation' AND menu_url = 'hr/record-generation/training-effectiveness-evaluation' AND order = 103 AND status = 1 AND menu_hierarchy_string = '3.36.92.94' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 93 AND menu_name = 'Employee Checklist' AND menu_slug = 'employee_checklist' AND menu_url = 'hr/record-generation/employee-checklist' AND order = 102 AND status = 1 AND menu_hierarchy_string = '3.36.92.93' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 92 AND menu_name = 'HR & Competency' AND menu_slug = 'hr_competency' AND order = 101 AND status = 1 AND menu_hierarchy_string = '3.36.92' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND menu_name = 'Record Generation' AND menu_slug = 'hr_record_generation' AND order = 100 AND status = 1 AND menu_hierarchy_string = '3.36' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND menu_name = 'Health Checkup Declaration' AND menu_slug = 'health_checkup_declaration' AND menu_url = 'hr/healthcare-checkup' AND order = 99 AND status = 1 AND menu_hierarchy_string = '3.35' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND menu_name = 'Training Evaluation' AND menu_slug = 'training_evaluation' AND menu_url = 'hr/training-evaluation' AND order = 98 AND status = 1 AND menu_hierarchy_string = '3.34' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND menu_name = 'Calendar' AND menu_slug = 'calendar' AND menu_url = 'hr/calendar' AND order = 97 AND status = 1 AND menu_hierarchy_string = '3.33' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND menu_name = 'Training Schedule' AND menu_slug = 'training_schedule' AND menu_url = 'hr/training-schedule' AND order = 96 AND status = 1 AND menu_hierarchy_string = '3.32' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND menu_name = 'Training Needs' AND menu_slug = 'training_needs' AND menu_url = 'hr/training-needs' AND order = 95 AND status = 1 AND menu_hierarchy_string = '3.31' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND menu_name = 'Induction Training' AND menu_slug = 'induction_training' AND menu_url = 'hr/induction-training' AND order = 94 AND status = 1 AND menu_hierarchy_string = '3.30' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND menu_name = 'Employee List' AND menu_slug = 'employee_list' AND menu_url = 'hr/employee' AND order = 93 AND status = 1 AND menu_hierarchy_string = '3.29' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND menu_name = 'Candidate Evaluation' AND menu_slug = 'candidate_evaluation' AND menu_url = 'hr/candidate-evaluation' AND order = 92 AND status = 1 AND menu_hierarchy_string = '3.28' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND menu_name = 'Resource Requisition' AND menu_slug = 'resource_requisition' AND menu_url = 'hr/resource-requisition' AND order = 91 AND status = 1 AND menu_hierarchy_string = '3.27' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND menu_name = 'Role Definition' AND menu_slug = 'role_definition' AND menu_url = 'hr/role-definition' AND order = 90 AND status = 1 AND menu_hierarchy_string = '3.26' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND menu_name = 'Skill Master' AND menu_slug = 'skill_master' AND menu_url = 'hr/skills' AND order = 89 AND status = 1 AND menu_hierarchy_string = '3.25' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND menu_name = 'HR - Competency Skills & Settings' AND menu_slug = 'hr' AND menu_url = 'hr/skills' AND order = 88 AND status = 1 AND menu_hierarchy_string = '3' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 1;

END $$;
