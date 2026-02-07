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
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1770 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1769 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1768 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1747 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1398 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1397 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1396 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1395 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1394 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1393 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1392 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1391 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1390 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1389 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1388 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1387 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1386 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1385 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1384 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1383 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1382 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1381 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1380 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1379 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1378 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1377 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1376 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1375 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1374 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1373 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1372 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1371 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1370 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1369 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1368 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1367 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1352 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1351 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1350 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1349 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1348 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1347 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1346 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1345 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1344 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1343 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1342 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1341 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1340 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1339 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1338 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1337 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1336 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1335 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1334 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1333 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1330 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1329 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1328 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1327 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1770 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1769 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1768 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1767 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1766 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1765 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1764 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1763 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1762 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1761 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1760 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1759 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1758 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1757 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1756 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1755 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1754 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1753 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1752 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1751 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1750 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1749 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1748 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1747 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1398 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1397 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1396 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1395 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1394 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1393 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1392 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1391 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1390 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1389 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1388 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1387 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1386 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1385 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1384 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1383 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1382 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1381 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1380 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1379 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1378 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1377 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1376 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1375 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1374 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1373 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1372 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1371 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1370 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1369 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1368 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1367 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1352 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1351 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1350 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1349 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1348 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1347 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1346 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1345 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1344 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1343 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1342 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1341 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1340 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1339 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1338 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1337 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1336 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1335 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1334 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1333 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1330 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1329 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1328 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 6 AND fk_eqms_menu_activity_access_id = 1327 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1398 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1397 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1396 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1395 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1394 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1393 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1392 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1391 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1390 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1389 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1388 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1387 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1386 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1385 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1384 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1383 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1382 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1381 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1380 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1379 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1378 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1377 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1376 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1375 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1374 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1373 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1372 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1371 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1370 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1369 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1368 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1367 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1352 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1351 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1350 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1349 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1348 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1347 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1346 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1345 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1344 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1343 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1342 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1341 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1340 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1339 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1338 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1337 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1336 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1335 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1334 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1333 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1330 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1329 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1328 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1327 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1398 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1397 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1396 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1395 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1394 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1393 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1392 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1391 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1390 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1389 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1388 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1387 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1386 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1385 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1384 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1383 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1382 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1381 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1380 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1379 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1378 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1377 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1376 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1375 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1374 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1373 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1372 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1371 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1370 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1369 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1368 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1367 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1352 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1351 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1350 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1349 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1348 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1347 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1346 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1345 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1344 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1343 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1342 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1341 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1340 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1339 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1338 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1337 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1336 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1335 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1334 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1333 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1330 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1329 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1328 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1327 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1398 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1397 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1396 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1395 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1394 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1393 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1392 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1391 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1390 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1389 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1388 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1387 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1386 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1385 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1384 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1383 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1382 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1381 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1380 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1379 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1378 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1377 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1376 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1375 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1374 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1373 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1372 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1371 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1370 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1369 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1368 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1367 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1352 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1351 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1350 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1349 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1348 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1347 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1346 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1345 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1344 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1343 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1342 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1341 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1340 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1339 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1338 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1337 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1336 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1335 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1334 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1333 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1330 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1329 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1328 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1327 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1398 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1397 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1396 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1395 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1394 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1393 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1392 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1391 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1390 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1389 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1388 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1387 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1386 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1385 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1384 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1383 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1382 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1381 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1380 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1379 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1378 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1377 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1376 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1375 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1374 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1373 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1372 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1371 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1370 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1369 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1368 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1367 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1352 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1351 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1350 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1349 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1348 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1347 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1346 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1345 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1344 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1343 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1342 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1341 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1340 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1339 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1338 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1337 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1336 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1335 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1334 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1333 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1330 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1329 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1328 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1327 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1398 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1397 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1396 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1395 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1394 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1393 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1392 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1391 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1390 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1389 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1388 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1387 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1386 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1385 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1384 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1383 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1382 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1381 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1380 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1379 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1378 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1377 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1376 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1375 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1374 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1373 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1372 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1371 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1370 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1369 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1368 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1367 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1352 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1351 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1350 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1349 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1348 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1347 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1346 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1345 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1344 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1343 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1342 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1341 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1340 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1339 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1338 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1337 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1336 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1335 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1334 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1333 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1330 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1329 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1328 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1327 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1398 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1397 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1396 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1395 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1394 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1393 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1392 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1391 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1390 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1389 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1388 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1387 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1386 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1385 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1384 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1383 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1382 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1381 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1380 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1379 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1378 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1377 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1376 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1375 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1374 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1373 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1372 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1371 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1370 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1369 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1368 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1367 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1352 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1351 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1350 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1349 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1348 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1347 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1346 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1345 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1344 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1343 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1342 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1341 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1340 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1339 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1338 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1337 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1336 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1335 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1334 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1333 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1330 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1329 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1328 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1327 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1398 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1397 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1396 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1395 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1394 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1393 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1392 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1391 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1390 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1389 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1388 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1387 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1386 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1385 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1384 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1383 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1382 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1381 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1380 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1379 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1378 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1377 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1376 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1375 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1374 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1373 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1372 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1371 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1370 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1369 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1368 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1367 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1366 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1365 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1364 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1363 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1362 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1361 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1360 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1359 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1358 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1357 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1356 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1355 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1354 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1353 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1352 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1351 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1350 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1349 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1348 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1347 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1346 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1345 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1344 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1343 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1342 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1341 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1340 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1339 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1338 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1337 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1336 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1335 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1334 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1333 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1332 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1331 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1330 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1329 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1328 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1327 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1770 AND fk_eqms_menu_lk_ref_id = 298 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1769 AND fk_eqms_menu_lk_ref_id = 298 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1768 AND fk_eqms_menu_lk_ref_id = 298 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1767 AND fk_eqms_menu_lk_ref_id = 298 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1766 AND fk_eqms_menu_lk_ref_id = 298 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1765 AND fk_eqms_menu_lk_ref_id = 298 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1764 AND fk_eqms_menu_lk_ref_id = 297 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1763 AND fk_eqms_menu_lk_ref_id = 297 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1762 AND fk_eqms_menu_lk_ref_id = 297 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1761 AND fk_eqms_menu_lk_ref_id = 297 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1760 AND fk_eqms_menu_lk_ref_id = 297 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1759 AND fk_eqms_menu_lk_ref_id = 297 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1758 AND fk_eqms_menu_lk_ref_id = 296 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1757 AND fk_eqms_menu_lk_ref_id = 296 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1756 AND fk_eqms_menu_lk_ref_id = 296 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1755 AND fk_eqms_menu_lk_ref_id = 296 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1754 AND fk_eqms_menu_lk_ref_id = 296 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1753 AND fk_eqms_menu_lk_ref_id = 296 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1752 AND fk_eqms_menu_lk_ref_id = 295 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1751 AND fk_eqms_menu_lk_ref_id = 295 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1750 AND fk_eqms_menu_lk_ref_id = 295 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1749 AND fk_eqms_menu_lk_ref_id = 295 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1748 AND fk_eqms_menu_lk_ref_id = 295 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1747 AND fk_eqms_menu_lk_ref_id = 295 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1398 AND fk_eqms_menu_lk_ref_id = 236 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1397 AND fk_eqms_menu_lk_ref_id = 235 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1396 AND fk_eqms_menu_lk_ref_id = 234 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1395 AND fk_eqms_menu_lk_ref_id = 233 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1394 AND fk_eqms_menu_lk_ref_id = 232 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1393 AND fk_eqms_menu_lk_ref_id = 231 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1392 AND fk_eqms_menu_lk_ref_id = 230 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1391 AND fk_eqms_menu_lk_ref_id = 229 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1390 AND fk_eqms_menu_lk_ref_id = 228 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1389 AND fk_eqms_menu_lk_ref_id = 227 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1388 AND fk_eqms_menu_lk_ref_id = 226 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1387 AND fk_eqms_menu_lk_ref_id = 225 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1386 AND fk_eqms_menu_lk_ref_id = 236 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1385 AND fk_eqms_menu_lk_ref_id = 235 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1384 AND fk_eqms_menu_lk_ref_id = 234 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1383 AND fk_eqms_menu_lk_ref_id = 233 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1382 AND fk_eqms_menu_lk_ref_id = 232 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1381 AND fk_eqms_menu_lk_ref_id = 231 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1380 AND fk_eqms_menu_lk_ref_id = 230 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1379 AND fk_eqms_menu_lk_ref_id = 229 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1378 AND fk_eqms_menu_lk_ref_id = 228 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1377 AND fk_eqms_menu_lk_ref_id = 227 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1376 AND fk_eqms_menu_lk_ref_id = 226 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1375 AND fk_eqms_menu_lk_ref_id = 225 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1374 AND fk_eqms_menu_lk_ref_id = 236 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1373 AND fk_eqms_menu_lk_ref_id = 235 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1372 AND fk_eqms_menu_lk_ref_id = 234 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1371 AND fk_eqms_menu_lk_ref_id = 233 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1370 AND fk_eqms_menu_lk_ref_id = 232 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1369 AND fk_eqms_menu_lk_ref_id = 231 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1368 AND fk_eqms_menu_lk_ref_id = 230 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1367 AND fk_eqms_menu_lk_ref_id = 229 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1366 AND fk_eqms_menu_lk_ref_id = 228 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1365 AND fk_eqms_menu_lk_ref_id = 227 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1364 AND fk_eqms_menu_lk_ref_id = 226 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1363 AND fk_eqms_menu_lk_ref_id = 225 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1362 AND fk_eqms_menu_lk_ref_id = 236 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1361 AND fk_eqms_menu_lk_ref_id = 235 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1360 AND fk_eqms_menu_lk_ref_id = 234 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1359 AND fk_eqms_menu_lk_ref_id = 233 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1358 AND fk_eqms_menu_lk_ref_id = 232 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1357 AND fk_eqms_menu_lk_ref_id = 231 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1356 AND fk_eqms_menu_lk_ref_id = 230 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1355 AND fk_eqms_menu_lk_ref_id = 229 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1354 AND fk_eqms_menu_lk_ref_id = 228 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1353 AND fk_eqms_menu_lk_ref_id = 227 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1352 AND fk_eqms_menu_lk_ref_id = 226 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1351 AND fk_eqms_menu_lk_ref_id = 225 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1350 AND fk_eqms_menu_lk_ref_id = 236 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1349 AND fk_eqms_menu_lk_ref_id = 235 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1348 AND fk_eqms_menu_lk_ref_id = 234 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1347 AND fk_eqms_menu_lk_ref_id = 233 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1346 AND fk_eqms_menu_lk_ref_id = 232 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1345 AND fk_eqms_menu_lk_ref_id = 231 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1344 AND fk_eqms_menu_lk_ref_id = 230 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1343 AND fk_eqms_menu_lk_ref_id = 229 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1342 AND fk_eqms_menu_lk_ref_id = 228 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1341 AND fk_eqms_menu_lk_ref_id = 227 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1340 AND fk_eqms_menu_lk_ref_id = 226 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1339 AND fk_eqms_menu_lk_ref_id = 225 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1338 AND fk_eqms_menu_lk_ref_id = 236 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1337 AND fk_eqms_menu_lk_ref_id = 235 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1336 AND fk_eqms_menu_lk_ref_id = 234 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1335 AND fk_eqms_menu_lk_ref_id = 233 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1334 AND fk_eqms_menu_lk_ref_id = 232 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1333 AND fk_eqms_menu_lk_ref_id = 231 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1332 AND fk_eqms_menu_lk_ref_id = 230 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1331 AND fk_eqms_menu_lk_ref_id = 229 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1330 AND fk_eqms_menu_lk_ref_id = 228 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1329 AND fk_eqms_menu_lk_ref_id = 227 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1328 AND fk_eqms_menu_lk_ref_id = 226 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1327 AND fk_eqms_menu_lk_ref_id = 225 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 298 AND menu_name = 'Deviation Note' AND menu_slug = 'deviation_note' AND menu_url = 'quality-control-management/record-generation/deviation-note' AND order = 313 AND status = 1 AND menu_hierarchy_string = '225.295.298' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 297 AND menu_name = 'Incoming Inspection' AND menu_slug = 'incoming_inspection' AND menu_url = 'quality-control-management/record-generation/incoming-inspection' AND order = 312 AND status = 1 AND menu_hierarchy_string = '225.295.297' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 296 AND menu_name = 'Goods inward' AND menu_slug = 'record_generation_goods_inward' AND menu_url = 'quality-control-management/record-generation/goods-inward' AND order = 311 AND status = 1 AND menu_hierarchy_string = '225.295.296' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 295 AND menu_name = 'Record Generation' AND menu_slug = 'record_generation' AND order = 310 AND status = 1 AND menu_hierarchy_string = '225.295' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 236 AND menu_name = 'Non-Conformance Details' AND menu_slug = 'non_conformance_details' AND menu_url = 'quality-control-management/non-conformance-details' AND order = 259 AND status = 1 AND menu_hierarchy_string = '225.234.236' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 235 AND menu_name = 'Incoming Inspection Details' AND menu_slug = 'incoming_inspection_details' AND menu_url = 'quality-control-management/incoming-inspection' AND order = 258 AND status = 1 AND menu_hierarchy_string = '225.234.235' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 234 AND menu_name = 'Incoming Inspection' AND menu_slug = 'incoming_inspection' AND order = 257 AND status = 1 AND menu_hierarchy_string = '225.234' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 233 AND menu_name = 'Form a Team' AND menu_slug = 'qc_form_a_team' AND menu_url = 'quality-control-management/form-team' AND order = 256 AND status = 1 AND menu_hierarchy_string = '225.232.232' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 232 AND menu_name = 'Team Formation' AND menu_slug = 'team_formation' AND order = 255 AND status = 1 AND menu_hierarchy_string = '225.232' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 231 AND menu_name = 'Goods Inward' AND menu_slug = 'goods_inward' AND menu_url = 'quality-control-management/goods-inward' AND order = 254 AND status = 1 AND menu_hierarchy_string = '225.229.231' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 230 AND menu_name = 'Sanity Check Inspection' AND menu_slug = 'sanity_check_inspection' AND menu_url = 'quality-control-management/sanity-check-inspection' AND order = 253 AND status = 1 AND menu_hierarchy_string = '225.229.230' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 229 AND menu_name = 'Sanity Inspection' AND menu_slug = 'sanity_inspection' AND order = 252 AND status = 1 AND menu_hierarchy_string = '225.229' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 228 AND menu_name = 'Sanity Specification Checklist' AND menu_slug = 'sanity_specification_checklist' AND menu_url = 'quality-control-management/sanity-specification-checklist' AND order = 251 AND status = 1 AND menu_hierarchy_string = '225.227.228' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 227 AND menu_name = 'Purchase - QC Checklist' AND menu_slug = 'purchase_qc_checklist' AND order = 250 AND status = 1 AND menu_hierarchy_string = '225.227' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 226 AND menu_name = 'QC Department' AND menu_slug = 'qc_department' AND order = 249 AND status = 0 AND menu_hierarchy_string = '225.226' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 225 AND menu_name = 'Quality Control Management' AND menu_slug = 'quality-control-management' AND menu_url = 'quality-control-management/sanity-specification-checklist' AND order = 248 AND status = 1 AND menu_hierarchy_string = '225' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 1;

END $$;
