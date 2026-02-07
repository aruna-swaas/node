-- Rollback: Delete seed data from file split_001_LOOKUP.sql
-- Original file: split_001_LOOKUP.sql
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

-- Delete from workflow.eqms_commenter_type_lk
DELETE FROM workflow.eqms_commenter_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND commenter_type = 'APPROVER' AND slug = 'approver' AND status = 1;

-- Delete from workflow.eqms_commenter_type_lk
DELETE FROM workflow.eqms_commenter_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND commenter_type = 'OWNER' AND slug = 'owner' AND status = 1;

-- Delete from workflow.eqms_transition_owner_type_lk
DELETE FROM workflow.eqms_transition_owner_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND transition_owner_type = 'Approver' AND slug = 'approver' AND status = 1;

-- Delete from workflow.eqms_transition_owner_type_lk
DELETE FROM workflow.eqms_transition_owner_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND transition_owner_type = 'Reviewer' AND slug = 'reviewer' AND status = 1;

-- Delete from workflow.eqms_transition_owner_type_lk
DELETE FROM workflow.eqms_transition_owner_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND transition_owner_type = 'Creator' AND slug = 'creator' AND status = 1;

-- Delete from workflow.eqms_comments_type_lk
DELETE FROM workflow.eqms_comments_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND comment_type = 'APPROVER' AND slug = 'approver' AND status = 1;

-- Delete from workflow.eqms_comments_type_lk
DELETE FROM workflow.eqms_comments_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND comment_type = 'OWNER' AND slug = 'owner' AND status = 1;

-- Delete from workflow.eqms_workflow_status_lk
DELETE FROM workflow.eqms_workflow_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND status_name = 'Completed' AND slug = 'completed';

-- Delete from workflow.eqms_workflow_status_lk
DELETE FROM workflow.eqms_workflow_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND status_name = 'In progress' AND slug = 'in_progress';

-- Delete from workflow.eqms_workflow_status_lk
DELETE FROM workflow.eqms_workflow_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND status_name = 'Yet to start' AND slug = 'yet_to_start';

END $$;
