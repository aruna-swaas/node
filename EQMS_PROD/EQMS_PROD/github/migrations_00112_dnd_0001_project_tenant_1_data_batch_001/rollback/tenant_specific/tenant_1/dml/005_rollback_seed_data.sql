-- Rollback: Delete seed data from file 005_DRAFT_SAVE.sql
-- Original file: 005_DRAFT_SAVE.sql
-- Seed data file: 005_seed_data.sql
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
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND context_name = 'final_pilot_validation_plan' AND status = 1 AND context_slug = 'final_pilot_validation_plan';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND context_name = 'design_output_document' AND status = 1 AND context_slug = 'design_output_document';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND context_name = 'final_pilot_validation_report' AND status = 1 AND context_slug = 'final_pilot_validation_report';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND context_name = 'final_pilot_validation_plan' AND status = 1 AND context_slug = 'final_pilot_validation_plan';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND context_name = 'pre_transfer_design_output_document' AND status = 1 AND context_slug = 'pre_transfer_design_output_document';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND context_name = 'stage_order' AND status = 1 AND context_slug = 'stage_order';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND context_name = 'design_input_requirements' AND status = 1 AND context_slug = 'design_input_requirements';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND context_name = 'functional_blocks' AND status = 1 AND context_slug = 'functional_blocks';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND context_name = 'market_research_study' AND status = 1 AND context_slug = 'market_research_study';

-- Delete from organization.eqms_context_types
DELETE FROM organization.eqms_context_types WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND context_name = 'project_build_stage_order' AND status = 1 AND context_slug = 'project_build_stage_order';

END $$;
