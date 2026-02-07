-- Rollback: Delete seed data from file lookup_only_001_LOOKUP.sql
-- Original file: lookup_only_001_LOOKUP.sql
-- Seed data file: 001_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND criteria = 'Paper of PDF' AND vendor_group_criteria_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND criteria = 'Gerber Software' AND vendor_group_criteria_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND criteria = 'No of Layers of PCB' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 4;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND criteria = 'Size of Components (12x10)' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 4;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND criteria = 'Assembly Testing' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 3;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND criteria = 'Ultrasonic Cleaning' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 3;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND criteria = 'Through Hole Soldering' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 3;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND criteria = 'ROHS line' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 3;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND criteria = 'Stencil Making' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 3;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND criteria = 'BGA Workstation' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 2;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND criteria = 'ICT' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 2;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND criteria = 'Fluxer' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 2;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND criteria = 'Stencil Developer' AND vendor_group_criteria_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND criteria = 'Pick & Place Machine' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 2;

-- Delete from organization.eqms_vendor_selection_group_criteria_lk
DELETE FROM organization.eqms_vendor_selection_group_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND criteria = 'Is the company ISO 9001:2015' AND vendor_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_vendor_selection_group_lk_id = 1;

END $$;
