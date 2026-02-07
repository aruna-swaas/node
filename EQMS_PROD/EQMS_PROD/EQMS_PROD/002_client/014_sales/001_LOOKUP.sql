DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- eqms_priority_lk
INSERT INTO organization.eqms_priority_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, priority_code, priority_name, priority_description, priority_order, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'P1', 'Priority 1', NULL, NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'P2', 'Priority 2', NULL, NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'P3', 'Priority 3', NULL, NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'P4', 'Priority 4', NULL, NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'P5', 'Priority 5', NULL, NULL, 1, 1, NOW(), NULL, NULL);

-- eqms_order_approval_mode_lk
INSERT INTO organization.eqms_order_approval_mode_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, approval_mode_code, approval_mode_name, approval_mode_description, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, NULL, 'Email', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, NULL, 'FAX', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, NULL, 'Others', NULL, 1, NOW(), 1, NULL, NULL);

-- eqms_feedback_source_lk
INSERT INTO organization.eqms_feedback_source_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, source_code, source_name, source_description, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, NULL, 'Email', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, NULL, 'FAX', NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, NULL, 'Others', NULL, 1, 1, NOW(), NULL, NULL);

-- eqms_feedback_rating_lk
INSERT INTO organization.eqms_feedback_rating_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, rating_name, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Excellent', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Satisfied', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Poor', 1, 1, NOW(), 1, NOW());

-- eqms_cus_feedback_group_lk
INSERT INTO organization.eqms_cus_feedback_group_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, group_name, feedback_group_type, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Sales Experience', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Installation', 'system_defined', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Application Training', 'system_defined', 1, 1, NOW(), 1, NOW());
-- eqms_cus_feedback_criteria_lk
INSERT INTO organization.eqms_cus_feedback_criteria_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, criteria, feedback_group_criteria_type, status, created_by, created_date, modified_by, modified_date, fk_eqms_cus_feedback_group_lk_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'How was your overall purchasing experience with the Sales Team', 'system_defined', 1, 1, NOW(), 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'How was the knowledge, skill, communication of the sales team', 'system_defined', 1, 1, NOW(), 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Have all your queries were answered', 'system_defined', 1, 1, NOW(), 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'How is the quality of the product promotion materials', 'system_defined', 1, 1, NOW(), 52, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'How was the overall delivery of the product', 'system_defined', 1, 1, NOW(), 52, NOW(), 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'How was the packing of the product', 'system_defined', 1, 1, NOW(), 52, NOW(), 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'How well the product is received', 'system_defined', 1, 1, NOW(), 52, NOW(), 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'How was the timeliness of product delivery', 'system_defined', 1, 1, NOW(), 52, NOW(), 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'How was the overall quality of the product', 'system_defined', 1, 1, NOW(), 52, NOW(), 3);
END $$;
