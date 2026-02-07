-- Rollback: Delete seed data from file 003_RBAC.sql
-- Original file: 003_RBAC.sql
-- Seed data file: 001_seed_data.sql
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
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 931 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 930 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 929 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 928 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 927 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 926 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 925 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 924 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 923 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 922 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 858 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 857 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 824 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 767 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 766 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 765 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 764 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 763 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 762 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 761 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 760 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 759 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 758 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 694 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 693 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 660 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 603 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 602 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 601 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 600 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 599 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 598 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 597 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 596 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 595 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 594 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 530 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 529 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 496 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 439 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 438 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 437 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 436 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 435 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 434 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 433 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 432 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 431 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 430 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 366 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 365 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 332 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 275 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 274 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 273 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 272 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 271 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 270 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 269 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 268 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 267 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 266 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 202 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 201 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 168 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 111 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 110 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 109 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 108 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 107 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 106 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 105 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 104 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 103 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 102 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 38 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 37 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 4 AND status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 39 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 13 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 12 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 931 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 930 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 929 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 928 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 927 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 926 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 925 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 924 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 923 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 922 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 824 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 530 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 529 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 496 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 275 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 274 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 273 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 272 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 271 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 270 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 269 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 268 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 267 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 266 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 202 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 201 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 168 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 111 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 110 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 109 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 108 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 107 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 106 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 105 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 104 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 103 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 102 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 38 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 37 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 931 AND fk_eqms_menu_lk_ref_id = 111 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 930 AND fk_eqms_menu_lk_ref_id = 110 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 929 AND fk_eqms_menu_lk_ref_id = 109 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 928 AND fk_eqms_menu_lk_ref_id = 108 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 927 AND fk_eqms_menu_lk_ref_id = 107 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 926 AND fk_eqms_menu_lk_ref_id = 106 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 925 AND fk_eqms_menu_lk_ref_id = 105 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 924 AND fk_eqms_menu_lk_ref_id = 104 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 923 AND fk_eqms_menu_lk_ref_id = 103 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 922 AND fk_eqms_menu_lk_ref_id = 102 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 858 AND fk_eqms_menu_lk_ref_id = 38 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 857 AND fk_eqms_menu_lk_ref_id = 37 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 824 AND fk_eqms_menu_lk_ref_id = 4 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 767 AND fk_eqms_menu_lk_ref_id = 111 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 766 AND fk_eqms_menu_lk_ref_id = 110 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 765 AND fk_eqms_menu_lk_ref_id = 109 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 764 AND fk_eqms_menu_lk_ref_id = 108 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 763 AND fk_eqms_menu_lk_ref_id = 107 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 762 AND fk_eqms_menu_lk_ref_id = 106 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 761 AND fk_eqms_menu_lk_ref_id = 105 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 760 AND fk_eqms_menu_lk_ref_id = 104 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 759 AND fk_eqms_menu_lk_ref_id = 103 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 758 AND fk_eqms_menu_lk_ref_id = 102 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 694 AND fk_eqms_menu_lk_ref_id = 38 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 693 AND fk_eqms_menu_lk_ref_id = 37 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 660 AND fk_eqms_menu_lk_ref_id = 4 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 603 AND fk_eqms_menu_lk_ref_id = 111 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 602 AND fk_eqms_menu_lk_ref_id = 110 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 601 AND fk_eqms_menu_lk_ref_id = 109 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 600 AND fk_eqms_menu_lk_ref_id = 108 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 599 AND fk_eqms_menu_lk_ref_id = 107 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 598 AND fk_eqms_menu_lk_ref_id = 106 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 597 AND fk_eqms_menu_lk_ref_id = 105 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 596 AND fk_eqms_menu_lk_ref_id = 104 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 595 AND fk_eqms_menu_lk_ref_id = 103 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 594 AND fk_eqms_menu_lk_ref_id = 102 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 530 AND fk_eqms_menu_lk_ref_id = 38 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 529 AND fk_eqms_menu_lk_ref_id = 37 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 496 AND fk_eqms_menu_lk_ref_id = 4 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 439 AND fk_eqms_menu_lk_ref_id = 111 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 438 AND fk_eqms_menu_lk_ref_id = 110 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 437 AND fk_eqms_menu_lk_ref_id = 109 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 436 AND fk_eqms_menu_lk_ref_id = 108 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 435 AND fk_eqms_menu_lk_ref_id = 107 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 434 AND fk_eqms_menu_lk_ref_id = 106 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 433 AND fk_eqms_menu_lk_ref_id = 105 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 432 AND fk_eqms_menu_lk_ref_id = 104 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 431 AND fk_eqms_menu_lk_ref_id = 103 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 430 AND fk_eqms_menu_lk_ref_id = 102 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 366 AND fk_eqms_menu_lk_ref_id = 38 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 365 AND fk_eqms_menu_lk_ref_id = 37 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 332 AND fk_eqms_menu_lk_ref_id = 4 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 275 AND fk_eqms_menu_lk_ref_id = 111 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 274 AND fk_eqms_menu_lk_ref_id = 110 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 273 AND fk_eqms_menu_lk_ref_id = 109 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 272 AND fk_eqms_menu_lk_ref_id = 108 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 271 AND fk_eqms_menu_lk_ref_id = 107 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 270 AND fk_eqms_menu_lk_ref_id = 106 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 269 AND fk_eqms_menu_lk_ref_id = 105 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 268 AND fk_eqms_menu_lk_ref_id = 104 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 267 AND fk_eqms_menu_lk_ref_id = 103 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 266 AND fk_eqms_menu_lk_ref_id = 102 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 202 AND fk_eqms_menu_lk_ref_id = 38 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 201 AND fk_eqms_menu_lk_ref_id = 37 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 168 AND fk_eqms_menu_lk_ref_id = 4 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 111 AND fk_eqms_menu_lk_ref_id = 111 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 110 AND fk_eqms_menu_lk_ref_id = 110 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 109 AND fk_eqms_menu_lk_ref_id = 109 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 108 AND fk_eqms_menu_lk_ref_id = 108 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 107 AND fk_eqms_menu_lk_ref_id = 107 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 106 AND fk_eqms_menu_lk_ref_id = 106 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 105 AND fk_eqms_menu_lk_ref_id = 105 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 104 AND fk_eqms_menu_lk_ref_id = 104 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 103 AND fk_eqms_menu_lk_ref_id = 103 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 102 AND fk_eqms_menu_lk_ref_id = 102 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND fk_eqms_menu_lk_ref_id = 38 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND fk_eqms_menu_lk_ref_id = 37 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_menu_lk_ref_id = 4 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 111 AND menu_name = 'Marketing' AND menu_slug = 'brochure_marketing' AND menu_url = 'dnd/brochure-content/marketing' AND order = 123 AND status = 1 AND menu_hierarchy_string = '4.37.111' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 110 AND menu_name = 'Legal' AND menu_slug = 'brochure_legal' AND menu_url = 'dnd/brochure-content/legal' AND order = 122 AND status = 1 AND menu_hierarchy_string = '4.37.110' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 109 AND menu_name = 'Regulatory' AND menu_slug = 'brochure_regulatory' AND menu_url = 'dnd/brochure-content/regulatory' AND order = 121 AND status = 1 AND menu_hierarchy_string = '4.37.109' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 108 AND menu_name = 'Product Manager' AND menu_slug = 'brochure_product_manager' AND menu_url = 'dnd/brochure-content/product-manager' AND order = 120 AND status = 1 AND menu_hierarchy_string = '4.37.108' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 107 AND menu_name = 'Sales' AND menu_slug = 'brochure_sales' AND menu_url = 'dnd/brochure-content/sales' AND order = 119 AND status = 1 AND menu_hierarchy_string = '4.37.107' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 106 AND menu_name = 'Marketing' AND menu_slug = 'website_marketing' AND menu_url = 'dnd/website-content/marketing' AND order = 118 AND status = 1 AND menu_hierarchy_string = '4.37.106' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 105 AND menu_name = 'Legal' AND menu_slug = 'website_legal' AND menu_url = 'dnd/website-content/legal' AND order = 117 AND status = 1 AND menu_hierarchy_string = '4.37.105' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 104 AND menu_name = 'Regulatory' AND menu_slug = 'website_regulatory' AND menu_url = 'dnd/website-content/regulatory' AND order = 116 AND status = 1 AND menu_hierarchy_string = '4.37.104' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 103 AND menu_name = 'Product Manager' AND menu_slug = 'website_product_manager' AND menu_url = 'dnd/website-content/product-manager' AND order = 115 AND status = 1 AND menu_hierarchy_string = '4.37.103' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 102 AND menu_name = 'Sales' AND menu_slug = 'website_sales' AND menu_url = 'dnd/website-content/sales' AND order = 114 AND status = 1 AND menu_hierarchy_string = '4.37.102' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND menu_name = 'Brochure Content Approval' AND menu_slug = 'brochure_content_approval' AND menu_url = 'dnd/brochure-content' AND order = 113 AND status = 1 AND menu_hierarchy_string = '4.38' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND menu_name = 'Website Content Approval' AND menu_slug = 'website_content_approval' AND menu_url = 'dnd/website-content' AND order = 112 AND status = 1 AND menu_hierarchy_string = '4.37' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND menu_name = 'Marketing' AND menu_slug = 'marketing' AND order = 111 AND status = 1 AND menu_hierarchy_string = '4' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 1;

END $$;
