-- Rollback: Delete seed data from file 014_DMS_LOOKUP_MAPPING.sql
-- Original file: 014_DMS_LOOKUP_MAPPING.sql
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

-- Delete from organization.eqms_design_transfer_checklist_template_mapper_lk
DELETE FROM organization.eqms_design_transfer_checklist_template_mapper_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_design_transfer_checklist_lk_id = 1 AND fk_eqms_document_template_id = 18 AND status = 1;

END $$;
