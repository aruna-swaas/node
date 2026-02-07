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

-- Delete from organization.eqms_hazard_identification_tool_lk
DELETE FROM organization.eqms_hazard_identification_tool_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND hazard_identification_tool = 'Hazard and operability Study' AND slug = 'hazard_operability_study' AND status = 1;

-- Delete from organization.eqms_hazard_identification_tool_lk
DELETE FROM organization.eqms_hazard_identification_tool_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND hazard_identification_tool = 'HACCP' AND slug = 'haccp' AND status = 1;

-- Delete from organization.eqms_hazard_identification_tool_lk
DELETE FROM organization.eqms_hazard_identification_tool_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND hazard_identification_tool = 'Event Tree Analysis' AND slug = 'event_tree_analysis' AND status = 1;

-- Delete from organization.eqms_hazard_identification_tool_lk
DELETE FROM organization.eqms_hazard_identification_tool_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND hazard_identification_tool = '5 why Analysis' AND slug = '5_why_analysis' AND status = 1;

-- Delete from organization.eqms_hazard_identification_tool_lk
DELETE FROM organization.eqms_hazard_identification_tool_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND hazard_identification_tool = 'Fault Tree Analysis' AND slug = 'fault_tree_analysis' AND status = 1;

-- Delete from organization.eqms_hazard_identification_tool_lk
DELETE FROM organization.eqms_hazard_identification_tool_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND hazard_identification_tool = 'Process FMEA' AND slug = 'process_fmea' AND status = 1;

-- Delete from organization.eqms_hazard_identification_tool_lk
DELETE FROM organization.eqms_hazard_identification_tool_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND hazard_identification_tool = 'Design FMEA' AND slug = 'design_fmea' AND status = 1;

END $$;
