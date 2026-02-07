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
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1776 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1775 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1774 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1773 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1772 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1771 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 5 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1698 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1697 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1696 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1695 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1694 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1693 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1692 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1691 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1690 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1689 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1688 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1687 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1686 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1685 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1684 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1683 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1682 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1681 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1680 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1679 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1678 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1677 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1676 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1675 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1674 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1673 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1672 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1671 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1670 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1669 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1668 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1667 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1666 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1665 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1664 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1663 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1662 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1661 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1660 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1659 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1658 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1657 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1656 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1655 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1654 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1653 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1652 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1651 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1650 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1649 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1648 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1647 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1646 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1645 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1644 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1643 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1642 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1641 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1640 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1639 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1638 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1637 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1636 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1635 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1634 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1633 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1632 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1631 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1630 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1629 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1628 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1627 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1626 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1625 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1624 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1623 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1622 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1621 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1620 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1619 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1618 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1617 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1616 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1615 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1614 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1613 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1612 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1611 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1610 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1609 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1608 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1607 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1606 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1605 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1604 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1603 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1602 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1601 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1600 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1599 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1598 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1597 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1596 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1595 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1594 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1593 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1592 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1591 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1590 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1589 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1588 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1587 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1586 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1585 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1776 AND fk_eqms_menu_lk_ref_id = 286 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1775 AND fk_eqms_menu_lk_ref_id = 286 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1774 AND fk_eqms_menu_lk_ref_id = 286 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1773 AND fk_eqms_menu_lk_ref_id = 286 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1772 AND fk_eqms_menu_lk_ref_id = 286 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1771 AND fk_eqms_menu_lk_ref_id = 286 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1698 AND fk_eqms_menu_lk_ref_id = 285 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1697 AND fk_eqms_menu_lk_ref_id = 285 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1696 AND fk_eqms_menu_lk_ref_id = 285 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1695 AND fk_eqms_menu_lk_ref_id = 285 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1694 AND fk_eqms_menu_lk_ref_id = 285 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1693 AND fk_eqms_menu_lk_ref_id = 285 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1692 AND fk_eqms_menu_lk_ref_id = 284 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1691 AND fk_eqms_menu_lk_ref_id = 284 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1690 AND fk_eqms_menu_lk_ref_id = 284 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1689 AND fk_eqms_menu_lk_ref_id = 284 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1688 AND fk_eqms_menu_lk_ref_id = 284 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1687 AND fk_eqms_menu_lk_ref_id = 284 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1686 AND fk_eqms_menu_lk_ref_id = 283 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1685 AND fk_eqms_menu_lk_ref_id = 283 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1684 AND fk_eqms_menu_lk_ref_id = 283 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1683 AND fk_eqms_menu_lk_ref_id = 283 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1682 AND fk_eqms_menu_lk_ref_id = 283 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1681 AND fk_eqms_menu_lk_ref_id = 283 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1680 AND fk_eqms_menu_lk_ref_id = 282 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1679 AND fk_eqms_menu_lk_ref_id = 282 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1678 AND fk_eqms_menu_lk_ref_id = 282 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1677 AND fk_eqms_menu_lk_ref_id = 282 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1676 AND fk_eqms_menu_lk_ref_id = 282 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1675 AND fk_eqms_menu_lk_ref_id = 282 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1674 AND fk_eqms_menu_lk_ref_id = 281 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1673 AND fk_eqms_menu_lk_ref_id = 281 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1672 AND fk_eqms_menu_lk_ref_id = 281 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1671 AND fk_eqms_menu_lk_ref_id = 281 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1670 AND fk_eqms_menu_lk_ref_id = 281 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1669 AND fk_eqms_menu_lk_ref_id = 281 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1668 AND fk_eqms_menu_lk_ref_id = 280 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1667 AND fk_eqms_menu_lk_ref_id = 280 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1666 AND fk_eqms_menu_lk_ref_id = 280 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1665 AND fk_eqms_menu_lk_ref_id = 280 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1664 AND fk_eqms_menu_lk_ref_id = 280 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1663 AND fk_eqms_menu_lk_ref_id = 280 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1662 AND fk_eqms_menu_lk_ref_id = 279 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1661 AND fk_eqms_menu_lk_ref_id = 279 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1660 AND fk_eqms_menu_lk_ref_id = 279 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1659 AND fk_eqms_menu_lk_ref_id = 279 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1658 AND fk_eqms_menu_lk_ref_id = 279 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1657 AND fk_eqms_menu_lk_ref_id = 279 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1656 AND fk_eqms_menu_lk_ref_id = 278 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1655 AND fk_eqms_menu_lk_ref_id = 278 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1654 AND fk_eqms_menu_lk_ref_id = 278 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1653 AND fk_eqms_menu_lk_ref_id = 278 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1652 AND fk_eqms_menu_lk_ref_id = 278 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1651 AND fk_eqms_menu_lk_ref_id = 278 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1650 AND fk_eqms_menu_lk_ref_id = 277 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1649 AND fk_eqms_menu_lk_ref_id = 277 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1648 AND fk_eqms_menu_lk_ref_id = 277 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1647 AND fk_eqms_menu_lk_ref_id = 277 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1646 AND fk_eqms_menu_lk_ref_id = 277 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1645 AND fk_eqms_menu_lk_ref_id = 277 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1644 AND fk_eqms_menu_lk_ref_id = 276 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1643 AND fk_eqms_menu_lk_ref_id = 276 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1642 AND fk_eqms_menu_lk_ref_id = 276 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1641 AND fk_eqms_menu_lk_ref_id = 276 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1640 AND fk_eqms_menu_lk_ref_id = 276 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1639 AND fk_eqms_menu_lk_ref_id = 276 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1638 AND fk_eqms_menu_lk_ref_id = 275 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1637 AND fk_eqms_menu_lk_ref_id = 275 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1636 AND fk_eqms_menu_lk_ref_id = 275 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1635 AND fk_eqms_menu_lk_ref_id = 275 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1634 AND fk_eqms_menu_lk_ref_id = 275 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1633 AND fk_eqms_menu_lk_ref_id = 275 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1632 AND fk_eqms_menu_lk_ref_id = 274 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1631 AND fk_eqms_menu_lk_ref_id = 274 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1630 AND fk_eqms_menu_lk_ref_id = 274 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1629 AND fk_eqms_menu_lk_ref_id = 274 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1628 AND fk_eqms_menu_lk_ref_id = 274 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1627 AND fk_eqms_menu_lk_ref_id = 274 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1626 AND fk_eqms_menu_lk_ref_id = 273 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1625 AND fk_eqms_menu_lk_ref_id = 273 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1624 AND fk_eqms_menu_lk_ref_id = 273 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1623 AND fk_eqms_menu_lk_ref_id = 273 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1622 AND fk_eqms_menu_lk_ref_id = 273 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1621 AND fk_eqms_menu_lk_ref_id = 273 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1620 AND fk_eqms_menu_lk_ref_id = 272 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1619 AND fk_eqms_menu_lk_ref_id = 272 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1618 AND fk_eqms_menu_lk_ref_id = 272 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1617 AND fk_eqms_menu_lk_ref_id = 272 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1616 AND fk_eqms_menu_lk_ref_id = 272 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1615 AND fk_eqms_menu_lk_ref_id = 272 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1614 AND fk_eqms_menu_lk_ref_id = 271 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1613 AND fk_eqms_menu_lk_ref_id = 271 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1612 AND fk_eqms_menu_lk_ref_id = 271 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1611 AND fk_eqms_menu_lk_ref_id = 271 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1610 AND fk_eqms_menu_lk_ref_id = 271 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1609 AND fk_eqms_menu_lk_ref_id = 271 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1608 AND fk_eqms_menu_lk_ref_id = 270 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1607 AND fk_eqms_menu_lk_ref_id = 270 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1606 AND fk_eqms_menu_lk_ref_id = 270 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1605 AND fk_eqms_menu_lk_ref_id = 270 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1604 AND fk_eqms_menu_lk_ref_id = 270 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1603 AND fk_eqms_menu_lk_ref_id = 270 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1602 AND fk_eqms_menu_lk_ref_id = 269 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1601 AND fk_eqms_menu_lk_ref_id = 269 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1600 AND fk_eqms_menu_lk_ref_id = 269 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1599 AND fk_eqms_menu_lk_ref_id = 269 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1598 AND fk_eqms_menu_lk_ref_id = 269 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1597 AND fk_eqms_menu_lk_ref_id = 269 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1596 AND fk_eqms_menu_lk_ref_id = 268 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1595 AND fk_eqms_menu_lk_ref_id = 268 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1594 AND fk_eqms_menu_lk_ref_id = 268 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1593 AND fk_eqms_menu_lk_ref_id = 268 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1592 AND fk_eqms_menu_lk_ref_id = 268 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1591 AND fk_eqms_menu_lk_ref_id = 268 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1590 AND fk_eqms_menu_lk_ref_id = 267 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1589 AND fk_eqms_menu_lk_ref_id = 267 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1588 AND fk_eqms_menu_lk_ref_id = 267 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1587 AND fk_eqms_menu_lk_ref_id = 267 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1586 AND fk_eqms_menu_lk_ref_id = 267 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1585 AND fk_eqms_menu_lk_ref_id = 267 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 286 AND menu_name = 'Process Validation' AND menu_slug = 'process_validation' AND menu_url = 'production/process-validation' AND order = 309 AND status = 1 AND menu_hierarchy_string = '267.270.286' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 285 AND menu_name = 'Quality Check Report' AND menu_slug = 'quality_check_report' AND menu_url = 'production/quality-check-report' AND order = 308 AND status = 0 AND menu_hierarchy_string = '267.270.285' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 284 AND menu_name = 'Product Traceability Card' AND menu_slug = 'product_traceability_card' AND menu_url = 'production/product-traceability-card' AND order = 307 AND status = 1 AND menu_hierarchy_string = '267.270.284' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 283 AND menu_name = 'Set Burn In' AND menu_slug = 'set_burn_in' AND menu_url = 'production/burn-in' AND order = 306 AND status = 1 AND menu_hierarchy_string = '267.270.283' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 282 AND menu_name = 'Packaging and Storage Instructions' AND menu_slug = 'packaging_and_storage_instructions' AND menu_url = 'production/package-storage-instructions' AND order = 305 AND status = 1 AND menu_hierarchy_string = '267.270.282' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 281 AND menu_name = 'Packaging Protocol' AND menu_slug = 'packaging_protocol' AND menu_url = 'production/final-oqc-procedure/packaging-protocol' AND order = 304 AND status = 1 AND menu_hierarchy_string = '267.270.278.281' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 280 AND menu_name = 'Inspection Protocol' AND menu_slug = 'inspection_protocol' AND menu_url = 'production/final-oqc-procedure/inspection-protocol' AND order = 303 AND status = 1 AND menu_hierarchy_string = '267.270.278.280' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 279 AND menu_name = 'Test Protocol' AND menu_slug = 'test_protocol' AND menu_url = 'production/final-oqc-procedure/test-protocol' AND order = 302 AND status = 1 AND menu_hierarchy_string = '267.270.278.279' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 278 AND menu_name = 'Final OQC Procedure' AND menu_slug = 'final_oqc_procedure' AND order = 301 AND status = 1 AND menu_hierarchy_string = '267.270.278' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 277 AND menu_name = 'Part / Assembly Settings' AND menu_slug = 'part_assembly_settings' AND menu_url = 'production/part-assembly-settings' AND order = 300 AND status = 1 AND menu_hierarchy_string = '267.270.277' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 276 AND menu_name = 'Bill of Material' AND menu_slug = 'bill_of_material' AND menu_url = 'production/bill-of-material' AND order = 299 AND status = 1 AND menu_hierarchy_string = '267.270.276' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 275 AND menu_name = 'Jigs and Fixture Validation Acceptance Criteria' AND menu_slug = 'jigs_and_fixture_validation_acceptance_criteria' AND menu_url = 'production/jigs-and-fixture-validation-acceptance-criteria' AND order = 297 AND status = 1 AND menu_hierarchy_string = '267.270.275' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 274 AND menu_name = 'Jigs and Fixture Validation Report' AND menu_slug = 'jig_fixtures_validation_report' AND menu_url = 'production/jigs-and-fixture-validation-report' AND order = 298 AND status = 1 AND menu_hierarchy_string = '267.270.274' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 273 AND menu_name = 'Vendor Selection Criteria' AND menu_slug = 'vendor_selection_criteria' AND menu_url = 'production/vendor-selection-criteria' AND order = 296 AND status = 1 AND menu_hierarchy_string = '267.270.273' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 272 AND menu_name = 'Product Features' AND menu_slug = 'product_features' AND menu_url = 'production/product-features' AND order = 295 AND status = 0 AND menu_hierarchy_string = '267.270.272' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 271 AND menu_name = 'Form a Team' AND menu_slug = 'form_a_team' AND menu_url = 'production/form-team' AND order = 294 AND status = 1 AND menu_hierarchy_string = '267.270.271' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 270 AND menu_name = 'Pre Production' AND menu_slug = 'pre_production' AND menu_url = 'production/pre-production' AND order = 293 AND status = 1 AND menu_hierarchy_string = '267.270' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 269 AND menu_name = 'Project Info' AND menu_slug = 'project_info' AND menu_url = 'production/project-info' AND order = 292 AND status = 1 AND menu_hierarchy_string = '267.268.269' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 268 AND menu_name = 'Project Details' AND menu_slug = 'project_details' AND menu_url = 'production/project-details' AND order = 291 AND status = 1 AND menu_hierarchy_string = '267.268' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 267 AND menu_name = 'Production' AND menu_slug = 'production' AND menu_url = 'production/list' AND order = 290 AND status = 1 AND menu_hierarchy_string = '267' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 1;

END $$;
