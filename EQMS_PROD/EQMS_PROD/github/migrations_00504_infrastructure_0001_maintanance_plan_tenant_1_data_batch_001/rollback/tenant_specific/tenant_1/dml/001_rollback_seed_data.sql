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
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 38 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 32 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 29 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 20 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 8 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 23 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1902 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1901 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1900 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1899 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1898 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1897 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1896 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1895 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1894 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1893 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1892 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1891 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1890 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1889 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1888 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1887 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1886 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1885 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1884 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1883 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1882 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1881 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1880 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1879 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1878 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1877 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1876 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1875 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1874 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1873 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1872 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1871 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1870 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1869 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1868 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1867 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1866 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1865 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1864 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1863 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1862 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1861 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1860 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1859 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1858 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1857 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1856 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1855 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 4 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 3 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 42 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 35 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 26 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 22 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 21 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 17 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 14 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 11 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1452 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1451 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1450 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1449 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1448 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1447 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1446 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1445 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1444 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1443 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1442 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1441 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1440 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1439 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1438 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1437 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1436 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1435 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1434 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1433 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1432 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1431 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1430 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1429 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1428 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1427 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1426 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1425 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1424 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1423 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1422 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1421 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1420 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1419 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1418 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1417 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1416 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1415 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1414 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1413 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1412 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1411 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1410 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1409 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1408 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1407 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1406 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1405 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1404 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1403 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1402 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1401 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1400 AND access_status = 1;

-- Delete from organization.eqms_role_menu_activity_access
DELETE FROM organization.eqms_role_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_role_lk_ref_id = 1 AND fk_eqms_menu_activity_access_id = 1399 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1902 AND fk_eqms_menu_lk_ref_id = 319 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1901 AND fk_eqms_menu_lk_ref_id = 319 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1900 AND fk_eqms_menu_lk_ref_id = 319 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1899 AND fk_eqms_menu_lk_ref_id = 319 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1898 AND fk_eqms_menu_lk_ref_id = 319 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1897 AND fk_eqms_menu_lk_ref_id = 319 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1896 AND fk_eqms_menu_lk_ref_id = 318 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1895 AND fk_eqms_menu_lk_ref_id = 318 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1894 AND fk_eqms_menu_lk_ref_id = 318 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1893 AND fk_eqms_menu_lk_ref_id = 318 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1892 AND fk_eqms_menu_lk_ref_id = 318 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1891 AND fk_eqms_menu_lk_ref_id = 318 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1890 AND fk_eqms_menu_lk_ref_id = 317 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1889 AND fk_eqms_menu_lk_ref_id = 317 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1888 AND fk_eqms_menu_lk_ref_id = 317 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1887 AND fk_eqms_menu_lk_ref_id = 317 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1886 AND fk_eqms_menu_lk_ref_id = 317 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1885 AND fk_eqms_menu_lk_ref_id = 317 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1884 AND fk_eqms_menu_lk_ref_id = 316 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1883 AND fk_eqms_menu_lk_ref_id = 316 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1882 AND fk_eqms_menu_lk_ref_id = 316 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1881 AND fk_eqms_menu_lk_ref_id = 316 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1880 AND fk_eqms_menu_lk_ref_id = 316 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1879 AND fk_eqms_menu_lk_ref_id = 316 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1878 AND fk_eqms_menu_lk_ref_id = 315 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1877 AND fk_eqms_menu_lk_ref_id = 315 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1876 AND fk_eqms_menu_lk_ref_id = 315 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1875 AND fk_eqms_menu_lk_ref_id = 315 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1874 AND fk_eqms_menu_lk_ref_id = 315 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1873 AND fk_eqms_menu_lk_ref_id = 315 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1872 AND fk_eqms_menu_lk_ref_id = 314 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1871 AND fk_eqms_menu_lk_ref_id = 314 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1870 AND fk_eqms_menu_lk_ref_id = 314 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1869 AND fk_eqms_menu_lk_ref_id = 314 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1868 AND fk_eqms_menu_lk_ref_id = 314 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1867 AND fk_eqms_menu_lk_ref_id = 314 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1866 AND fk_eqms_menu_lk_ref_id = 313 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1865 AND fk_eqms_menu_lk_ref_id = 313 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1864 AND fk_eqms_menu_lk_ref_id = 313 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1863 AND fk_eqms_menu_lk_ref_id = 313 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1862 AND fk_eqms_menu_lk_ref_id = 313 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1861 AND fk_eqms_menu_lk_ref_id = 313 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1860 AND fk_eqms_menu_lk_ref_id = 312 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1859 AND fk_eqms_menu_lk_ref_id = 312 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1858 AND fk_eqms_menu_lk_ref_id = 312 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1857 AND fk_eqms_menu_lk_ref_id = 312 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1856 AND fk_eqms_menu_lk_ref_id = 312 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1855 AND fk_eqms_menu_lk_ref_id = 312 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1452 AND fk_eqms_menu_lk_ref_id = 245 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1451 AND fk_eqms_menu_lk_ref_id = 244 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1450 AND fk_eqms_menu_lk_ref_id = 243 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1449 AND fk_eqms_menu_lk_ref_id = 242 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1448 AND fk_eqms_menu_lk_ref_id = 241 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1447 AND fk_eqms_menu_lk_ref_id = 240 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1446 AND fk_eqms_menu_lk_ref_id = 239 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1445 AND fk_eqms_menu_lk_ref_id = 238 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1444 AND fk_eqms_menu_lk_ref_id = 237 AND fk_eqms_activity_lk_ref_id = 6 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1443 AND fk_eqms_menu_lk_ref_id = 245 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1442 AND fk_eqms_menu_lk_ref_id = 244 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1441 AND fk_eqms_menu_lk_ref_id = 243 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1440 AND fk_eqms_menu_lk_ref_id = 242 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1439 AND fk_eqms_menu_lk_ref_id = 241 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1438 AND fk_eqms_menu_lk_ref_id = 240 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1437 AND fk_eqms_menu_lk_ref_id = 239 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1436 AND fk_eqms_menu_lk_ref_id = 238 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1435 AND fk_eqms_menu_lk_ref_id = 237 AND fk_eqms_activity_lk_ref_id = 5 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1434 AND fk_eqms_menu_lk_ref_id = 245 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1433 AND fk_eqms_menu_lk_ref_id = 244 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1432 AND fk_eqms_menu_lk_ref_id = 243 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1431 AND fk_eqms_menu_lk_ref_id = 242 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1430 AND fk_eqms_menu_lk_ref_id = 241 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1429 AND fk_eqms_menu_lk_ref_id = 240 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1428 AND fk_eqms_menu_lk_ref_id = 239 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1427 AND fk_eqms_menu_lk_ref_id = 238 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1426 AND fk_eqms_menu_lk_ref_id = 237 AND fk_eqms_activity_lk_ref_id = 4 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1425 AND fk_eqms_menu_lk_ref_id = 245 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1424 AND fk_eqms_menu_lk_ref_id = 244 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1423 AND fk_eqms_menu_lk_ref_id = 243 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1422 AND fk_eqms_menu_lk_ref_id = 242 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1421 AND fk_eqms_menu_lk_ref_id = 241 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1420 AND fk_eqms_menu_lk_ref_id = 240 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1419 AND fk_eqms_menu_lk_ref_id = 239 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1418 AND fk_eqms_menu_lk_ref_id = 238 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1417 AND fk_eqms_menu_lk_ref_id = 237 AND fk_eqms_activity_lk_ref_id = 3 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1416 AND fk_eqms_menu_lk_ref_id = 245 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1415 AND fk_eqms_menu_lk_ref_id = 244 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1414 AND fk_eqms_menu_lk_ref_id = 243 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1413 AND fk_eqms_menu_lk_ref_id = 242 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1412 AND fk_eqms_menu_lk_ref_id = 241 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1411 AND fk_eqms_menu_lk_ref_id = 240 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1410 AND fk_eqms_menu_lk_ref_id = 239 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1409 AND fk_eqms_menu_lk_ref_id = 238 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1408 AND fk_eqms_menu_lk_ref_id = 237 AND fk_eqms_activity_lk_ref_id = 2 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1407 AND fk_eqms_menu_lk_ref_id = 245 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1406 AND fk_eqms_menu_lk_ref_id = 244 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1405 AND fk_eqms_menu_lk_ref_id = 243 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1404 AND fk_eqms_menu_lk_ref_id = 242 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1403 AND fk_eqms_menu_lk_ref_id = 241 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1402 AND fk_eqms_menu_lk_ref_id = 240 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1401 AND fk_eqms_menu_lk_ref_id = 239 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1400 AND fk_eqms_menu_lk_ref_id = 238 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_activity_access
DELETE FROM organization.eqms_menu_activity_access WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1399 AND fk_eqms_menu_lk_ref_id = 237 AND fk_eqms_activity_lk_ref_id = 1 AND access_status = 1;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 319 AND menu_name = 'Infrastructure Qualification' AND menu_slug = 'record_generation_infrastructure_qualification' AND menu_url = 'infrastructure-management/record-generation/infrastructure-qualification' AND order = 241 AND status = 1 AND menu_hierarchy_string = '237.312.319' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 318 AND menu_name = 'Maintenance Plan' AND menu_slug = 'record_generation_maintenance_plan' AND menu_url = 'infrastructure-management/record-generation/maintenance-plan' AND order = 240 AND status = 1 AND menu_hierarchy_string = '237.312.318' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 317 AND menu_name = 'List of Infrastructure' AND menu_slug = 'record_generation_list_of_infrastructure' AND menu_url = 'infrastructure-management/record-generation/list-of-infrastructure' AND order = 239 AND status = 1 AND menu_hierarchy_string = '237.312.317' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 316 AND menu_name = 'Infrastructure Label' AND menu_slug = 'record_generation_infrastructure_label' AND menu_url = 'infrastructure-management/record-generation/infrastructure-label' AND order = 238 AND status = 1 AND menu_hierarchy_string = '237.312.316' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 315 AND menu_name = 'Maintenance Report' AND menu_slug = 'record_generation_maintenance_report' AND menu_url = 'infrastructure-management/record-generation/maintenance-report' AND order = 237 AND status = 1 AND menu_hierarchy_string = '237.312.315' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 314 AND menu_name = 'Installation Report' AND menu_slug = 'record_generation_installation_report' AND menu_url = 'infrastructure-management/record-generation/installation-report' AND order = 236 AND status = 1 AND menu_hierarchy_string = '237.312.314' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 313 AND menu_name = 'Infrastructure Request Form' AND menu_slug = 'record_generation_infrastructure_request_form' AND menu_url = 'infrastructure-management/record-generation/infrastructure-request-form' AND order = 235 AND status = 1 AND menu_hierarchy_string = '237.312.313' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 312 AND menu_name = 'Record Generation' AND menu_slug = 'record_generation_infrastructure_record_generation' AND menu_url = 'infrastructure-management/record-generation' AND order = 234 AND status = 1 AND menu_hierarchy_string = '237.312' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 245 AND menu_name = 'Raise a Complaint' AND menu_slug = 'raise_a_complaint' AND menu_url = 'infrastructure-management/raise-complaint' AND order = 268 AND status = 1 AND menu_hierarchy_string = '237.238.245' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 244 AND menu_name = 'Maintenance Report' AND menu_slug = 'maintenance_report' AND menu_url = 'infrastructure-management/maintenance-report' AND order = 267 AND status = 1 AND menu_hierarchy_string = '237.238.244' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 243 AND menu_name = 'Process Validation' AND menu_slug = 'process_validation' AND menu_url = 'infrastructure-management/process-validation' AND order = 266 AND status = 1 AND menu_hierarchy_string = '237.238.243' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 242 AND menu_name = 'Infrastructure Qualifications' AND menu_slug = 'infrastructure_qualifications' AND menu_url = 'infrastructure-management/infrastructure-qualification' AND order = 265 AND status = 1 AND menu_hierarchy_string = '237.238.242' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 241 AND menu_name = 'Infrastructure Onboarding' AND menu_slug = 'infrastructure_onboarding' AND menu_url = 'infrastructure-management/infrastructure-onboarding' AND order = 264 AND status = 1 AND menu_hierarchy_string = '237.238.241' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 240 AND menu_name = 'Infrastructure Request' AND menu_slug = 'infrastructure_request' AND menu_url = 'infrastructure-management/infrastructure-request' AND order = 263 AND status = 1 AND menu_hierarchy_string = '237.238.240' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 239 AND menu_name = 'Maintenance Plan' AND menu_slug = 'maintenance_plan' AND menu_url = 'infrastructure-management/maintenance-plan' AND order = 262 AND status = 1 AND menu_hierarchy_string = '237.238.239' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 238 AND menu_name = 'Infrastructure' AND menu_slug = 'infrastructure' AND order = 261 AND status = 1 AND menu_hierarchy_string = '237.238' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 2;

-- Delete from organization.eqms_menu_lk
DELETE FROM organization.eqms_menu_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 237 AND menu_name = 'Infrastructure Management' AND menu_slug = 'infrastructure_management' AND menu_url = 'infrastructure-management/maintenance-plan' AND order = 260 AND status = 1 AND menu_hierarchy_string = '237' AND is_context_driven = 0 AND fk_eqms_menu_type_lk_ref_id = 1;

END $$;
