-- Rollback: Delete seed data from file 005_DRAFT_SAVE.sql
-- Original file: 005_DRAFT_SAVE.sql
-- Seed data file: 004_seed_data.sql
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

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 100 AND context_name = 'review_requirement_id' AND status = 1 AND context_slug = 'review_requirement_id';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 99 AND context_name = 'risk_review_report_summary' AND status = 1 AND context_slug = 'risk_review_report_summary';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 98 AND context_name = 'hazard_identification_used' AND status = 1 AND context_slug = 'hazard_identification_used';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 97 AND context_name = 'individual_risk_analysis' AND status = 1 AND context_slug = 'individual_risk_analysis';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 96 AND context_name = 'hazard_identification_tool' AND status = 1 AND context_slug = 'hazard_identification_tool';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND context_name = 'rcm' AND status = 1 AND context_slug = 'rorganization';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND context_name = 'rcm_risk' AND status = 1 AND context_slug = 'rcm_risk';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND context_name = 'risk' AND status = 1 AND context_slug = 'risk';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND context_name = 'sub_category_applicability' AND status = 1 AND context_slug = 'sub_category_applicability';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND context_name = 'risk_hazard' AND status = 1 AND context_slug = 'risk_hazard';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND context_name = 'hazard' AND status = 1 AND context_slug = 'hazard';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND context_name = 'category_applicability' AND status = 1 AND context_slug = 'category_applicability';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND context_name = 'severity_template' AND status = 1 AND context_slug = 'severity_template';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND context_name = 'probability_template' AND status = 1 AND context_slug = 'probability_template';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND context_name = 'committee' AND status = 1 AND context_slug = 'committee';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND context_name = 'risk_team' AND status = 1 AND context_slug = 'risk_team';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND context_name = 'sub_category' AND status = 1 AND context_slug = 'sub_category';

END $$;
