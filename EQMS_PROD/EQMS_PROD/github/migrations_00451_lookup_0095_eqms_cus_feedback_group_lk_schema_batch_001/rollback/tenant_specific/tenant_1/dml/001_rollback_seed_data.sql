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

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND group_name = 'End-client-feedback' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND group_name = 'Delivery ,bjce  cdaopy klllkdacolkpy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND group_name = 'Delivery ,bjce  cdaopy klllkcolkpy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND group_name = 'Delivery ,bjce  cdaopy klllkcopy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND group_name = 'Delivery ,bjce asfafanothklklerkjkjkkjjk cdaopy klllkcopy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND group_name = 'Delivery ,bjce asfafanothklklerkjkjkkjjk copy klllkcopy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND group_name = 'Delivery ,bjce asfafanothklklerkjkjk copy klllkcopy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND group_name = 'new_grp_008' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND group_name = 'new_grp_007' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND group_name = 'Delivery Expasdadsieadasddassdsadsdsnbjb,bjce asfafanothklklerkjkjk copy klllkcopy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND group_name = 'Delivery Expasdadsieadsdsadsdsnbjb,bjce asfafanothklklerkjkjk copy klllkcopy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND group_name = 'Delivery Expasdadsienbjb,bjce asfafanothklklerkjkjk copy klllkcopy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND group_name = 'Delivery Expasdadsienbjb,bjce asfafanotherkjkjk copy klllkcopy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND group_name = 'Delivery Expasdadsienbjb,bjce asfafanotherkjkjk copy copy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND group_name = 'Delivery Expasdadsienbjb,bjce asfafanother copy copy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND group_name = 'Delivery Expasdadsience asfafanother copy copy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND group_name = 'Delivery Expience asfafanother copy copy copt' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND group_name = 'Delivery Expience asfafanother copy' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND group_name = 'Delivery Expience another copy' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND group_name = 'Delivery Expserience another copy' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND group_name = 'Delivery Expserience 222q' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND group_name = 'Delivery Expserience 22q' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND group_name = 'Delivery Expserience 22' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND group_name = 'Customer Quality Assessment Duplicate' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND group_name = 'Product Service Excellence Duplicate' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND group_name = 'Customer Quality Assessment - updated' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND group_name = 'Product Service Excellence- Updated' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND group_name = 'Delivery Experience 2' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND group_name = 'Delivery Experience 1' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND group_name = 'Delivery Experience' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND group_name = 'Product Quality Assessment' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND group_name = 'Customer Service Excellence' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND group_name = 'Product Experience' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND group_name = 'Service Quality' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND group_name = 'custom grouupsss  4' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND group_name = 'custom grouup 3' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND group_name = 'custom grouupsss' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND group_name = 'custom grouup' AND feedback_group_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND group_name = 'Application Training' AND feedback_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND group_name = 'Installation' AND feedback_group_type = 'system_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_group_lk
DELETE FROM organization.eqms_cus_feedback_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND group_name = 'Sales Experience' AND feedback_group_type = 'system_defined' AND status = 1;

END $$;
