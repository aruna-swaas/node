DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

INSERT INTO organization.eqms_cus_feedback_group_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, group_name, feedback_group_type, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Sales Experience', 'system_defined', 1, 1, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Installation', 'system_defined', 1, 1, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Application Training', 'system_defined', 1, 1, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'custom grouup', 'user_defined', 1, 181, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'custom grouupsss', 'user_defined', 1, 181, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'custom grouup 3', 'user_defined', 1, 181, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'custom grouupsss  4', 'user_defined', 1, 181, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Service Quality', 'user_defined', 1, 19, NOW(), 220, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Product Experience', 'user_defined', 1, 19, NOW(), 220, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Customer Service Excellence', 'user_defined', 1, 19, NOW(), 19, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Product Quality Assessment', 'user_defined', 1, 19, NOW(), 19, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Delivery Experience', 'user_defined', 1, 19, NOW(), 220, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'Delivery Experience 1', 'user_defined', 1, 19, NOW(), 220, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 'Delivery Experience 2', 'user_defined', 1, 19, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'Product Service Excellence- Updated', 'user_defined', 1, 19, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 'Customer Quality Assessment - updated', 'user_defined', 1, 19, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 'Product Service Excellence Duplicate', 'user_defined', 1, 19, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 'Customer Quality Assessment Duplicate', 'user_defined', 1, 19, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 'Delivery Expserience 22', 'user_defined', 1, 19, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 'Delivery Expserience 22q', 'user_defined', 1, 19, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 'Delivery Expserience 222q', 'user_defined', 1, 19, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 'Delivery Expserience another copy', 'user_defined', 1, 19, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 'Delivery Expience another copy', 'user_defined', 1, 19, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 'Delivery Expience asfafanother copy', 'user_defined', 1, 52, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 'Delivery Expience asfafanother copy copy copt', 'user_defined', 1, 52, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, 'Delivery Expasdadsience asfafanother copy copy copt', 'user_defined', 1, 52, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 29, 'Delivery Expasdadsienbjb,bjce asfafanother copy copy copt', 'user_defined', 1, 52, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 'Delivery Expasdadsienbjb,bjce asfafanotherkjkjk copy copy copt', 'user_defined', 1, 52, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 31, 'Delivery Expasdadsienbjb,bjce asfafanotherkjkjk copy klllkcopy copt', 'user_defined', 1, 52, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 32, 'Delivery Expasdadsienbjb,bjce asfafanothklklerkjkjk copy klllkcopy copt', 'user_defined', 1, 52, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 33, 'Delivery Expasdadsieadsdsadsdsnbjb,bjce asfafanothklklerkjkjk copy klllkcopy copt', 'user_defined', 1, 52, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, 'Delivery Expasdadsieadasddassdsadsdsnbjb,bjce asfafanothklklerkjkjk copy klllkcopy copt', 'user_defined', 1, 52, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, 'new_grp_007', 'user_defined', 1, 52, NOW(), 220, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 'new_grp_008', 'user_defined', 1, 52, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 'Delivery ,bjce asfafanothklklerkjkjk copy klllkcopy copt', 'user_defined', 1, 52, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 38, 'Delivery ,bjce asfafanothklklerkjkjkkjjk copy klllkcopy copt', 'user_defined', 1, 52, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 'Delivery ,bjce asfafanothklklerkjkjkkjjk cdaopy klllkcopy copt', 'user_defined', 1, 52, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 'Delivery ,bjce  cdaopy klllkcopy copt', 'user_defined', 1, 52, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 'Delivery ,bjce  cdaopy klllkcolkpy copt', 'user_defined', 1, 52, NOW(), 52, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 'Delivery ,bjce  cdaopy klllkdacolkpy copt', 'user_defined', 1, 52, NOW(), 181, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 44, 'End-client-feedback', 'user_defined', 1, 52, NOW(), 52, NOW());

END $$;
