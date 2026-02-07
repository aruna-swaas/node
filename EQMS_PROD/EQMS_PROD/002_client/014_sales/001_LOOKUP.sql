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

-- eqms_cus_feedback_criteria_lk
INSERT INTO organization.eqms_cus_feedback_criteria_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, criteria, feedback_group_criteria_type, status, created_by, created_date, modified_by, modified_date, fk_eqms_cus_feedback_group_lk_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'How was your overall purchasing experience with the Sales Team', 'system_defined', 1, 1, NOW(), 52, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'How was the knowledge, skill, communication of the sales team', 'system_defined', 1, 1, NOW(), 52, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Have all your queries were answered', 'system_defined', 1, 1, NOW(), 52, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'How is the quality of the product promotion materials', 'system_defined', 1, 1, NOW(), 52, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'How was the overall delivery of the product', 'system_defined', 1, 1, NOW(), 52, NOW(), 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'How was the packing of the product', 'system_defined', 1, 1, NOW(), 52, NOW(), 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'How well the product is received', 'system_defined', 1, 1, NOW(), 52, NOW(), 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'How was the timeliness of product delivery', 'system_defined', 1, 1, NOW(), 52, NOW(), 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'How was the overall quality of the product', 'system_defined', 1, 1, NOW(), 52, NOW(), 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Was our staff helpfusdfl33sff?', 'user_defined', 1, 181, NOW(), 181, NOW(), 6),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Was our staff helpng you?', 'user_defined', 1, 181, NOW(), 181, NOW(), 7),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Was our staff helpfusdfl33sff?6', 'user_defined', 1, 181, NOW(), 181, NOW(), 8),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Was our staff helpng you? 6', 'user_defined', 1, 181, NOW(), 52, NOW(), 9),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'How satisfied were you with our service?', 'user_defined', 1, 19, NOW(), 220, NOW(), 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'Would you recommend us to others?', 'user_defined', 1, 19, NOW(), NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 'Rate the product quality', 'user_defined', 1, 19, NOW(), 220, NOW(), 11),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'How would you rate our customer support? - Updated', 'user_defined', 1, 19, NOW(), 19, NOW(), 12),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 'Did our team resolve your issue promptly?', 'user_defined', 1, 19, NOW(), 19, NOW(), 12),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 'How would you rate the overall product quality?', 'user_defined', 1, 19, NOW(), 19, NOW(), 13),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 'Was the product delivered as expected?', 'user_defined', 1, 19, NOW(), 19, NOW(), 13),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 'New criteria for updated group', 'user_defined', 1, 19, NOW(), NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 'How was the delivery experience?', 'user_defined', 1, 19, NOW(), NULL, NULL, 14),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 'Was the package in good condition?', 'user_defined', 1, 19, NOW(), NULL, NULL, 14),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 'New criteria for updated group', 'user_defined', 1, 19, NOW(), NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 'How was the delivery experience?', 'user_defined', 1, 19, NOW(), NULL, NULL, 15),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 'Was the package in good condition?', 'user_defined', 1, 19, NOW(), NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 'Was it in goodfasaas condition? fircopyxt copy', 'user_defined', 1, 52, NOW(), 181, NOW(), 27),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, '28', 'user_defined', 1, 19, NOW(), 52, NOW(), 16),
(VAR_TENANT_KEY, VAR_ORG_ID, 29, 'Was the package in good condition?', 'user_defined', 1, 19, NOW(), NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 'New criteria for updated group', 'user_defined', 1, 19, NOW(), NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 31, 'Did our product resolve your issue promptly?', 'user_defined', 1, 19, NOW(), NULL, NULL, 17),
(VAR_TENANT_KEY, VAR_ORG_ID, 33, 'How would you rate our product support?', 'user_defined', 1, 19, NOW(), 181, NOW(), 17),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, 'Did our product resolve your issue promptly?', 'user_defined', 1, 19, NOW(), 19, NOW(), 19),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, 'How would you rate the overall customer quality? - updates', 'user_defined', 1, 19, NOW(), 52, NOW(), 19),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 'Was the customer delivered as expected? - updated', 'user_defined', 1, 19, NOW(), 52, NOW(), 20),
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 'Was the customer delivered as expected? Duplicate', 'user_defined', 1, 19, NOW(), NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 38, 'Was the package in good condition? Copy', 'user_defined', 1, 19, NOW(), 181, NOW(), 21),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 'Was the package in good condition? Coqpy', 'user_defined', 1, 19, NOW(), 181, NOW(), 22),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 'Was the package in good condition? Coq2py', 'user_defined', 1, 19, NOW(), 181, NOW(), 23),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 'Was the package in good condition? firxt copy', 'user_defined', 1, 19, NOW(), 52, NOW(), 24),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 'Was it in good condition? firxt copy', 'user_defined', 1, 19, NOW(), 52, NOW(), 25),
(VAR_TENANT_KEY, VAR_ORG_ID, 43, 'Was it in goodfasaas condition? firxt copy', 'user_defined', 1, 52, NOW(), 52, NOW(), 26),
(VAR_TENANT_KEY, VAR_ORG_ID, 44, 'Was the package in good condition? firxt copy', 'user_defined', 1, 19, NOW(), 52, NOW(), 24),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 'Was it in good condition? firxt copy', 'user_defined', 1, 19, NOW(), 52, NOW(), 25),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 'Was it in godasdaskjbjldfasaas condition? fircopyxt copy', 'user_defined', 1, 52, NOW(), 52, NOW(), 27),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 'Was it in godasdaskjbjldfasaas condition? fircopyxt copy', 'user_defined', 1, 52, NOW(), 181, NOW(), 31),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 'Was it in godasdaskjbjldfasaas condition? kllklfircljllopyxt copy', 'user_defined', 1, 52, NOW(), 181, NOW(), 32),
(VAR_TENANT_KEY, VAR_ORG_ID, 49, 'Was it in godasdaskjbjldfasaas condit;ll;ion? kllklfircljllopyxt copy', 'user_defined', 1, 52, NOW(), 181, NOW(), 32),
(VAR_TENANT_KEY, VAR_ORG_ID, 50, 'Was it in godasddasdasaskjbjldfasaas condit;ll;ion? kllklfircljllopyxt copy', 'user_defined', 1, 52, NOW(), 52, NOW(), 33),
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 'Was it in godasddasdasddasasaskjbjldfasaas condit;ll;ion? kllklfircljllopyxt copy', 'user_defined', 1, 52, NOW(), 52, NOW(), 34),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, '52', 'user_defined', 1, 52, NOW(), 220, NOW(), 35),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'new_cr_008', 'user_defined', 1, 52, NOW(), 181, NOW(), 36),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'new criteria', 'user_defined', 1, 220, NOW(), NULL, NULL, 35),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 'tttt', 'user_defined', 1, 220, NOW(), 220, NOW(), 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 56, 'nn\', 'user_defined', 1, 220, NOW(), NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 57, 'qq', 'user_defined', 1, 220, NOW(), 220, NOW(), 25),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, 'g54', 'user_defined', 1, 220, NOW(), 220, NOW(), 36),
(VAR_TENANT_KEY, VAR_ORG_ID, 59, 'newCriteria', 'user_defined', 1, 220, NOW(), NULL, NULL, 36),
(VAR_TENANT_KEY, VAR_ORG_ID, 60, 'criteriaNEW001', 'user_defined', 1, 220, NOW(), 220, NOW(), 36),
(VAR_TENANT_KEY, VAR_ORG_ID, 61, 'newR', 'user_defined', 1, 220, NOW(), 220, NOW(), 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 62, 'exp001', 'user_defined', 1, 220, NOW(), 220, NOW(), 11),
(VAR_TENANT_KEY, VAR_ORG_ID, 63, 'www', 'user_defined', 1, 220, NOW(), 220, NOW(), 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 64, 'r', 'user_defined', 1, 220, NOW(), 220, NOW(), 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 65, 'ddd', 'user_defined', 1, 220, NOW(), NULL, NULL, 24),
(VAR_TENANT_KEY, VAR_ORG_ID, 66, '67', 'user_defined', 1, 220, NOW(), 52, NOW(), 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 67, 'new app', 'user_defined', 1, 220, NOW(), NULL, NULL, 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 68, 'hhh', 'user_defined', 1, 220, NOW(), 220, NOW(), 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 69, 'newAPP', 'user_defined', 1, 220, NOW(), 220, NOW(), 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 70, 'gg', 'user_defined', 1, 220, NOW(), 220, NOW(), 11),
(VAR_TENANT_KEY, VAR_ORG_ID, 71, 'rrrrr', 'user_defined', 1, 220, NOW(), NULL, NULL, 11),
(VAR_TENANT_KEY, VAR_ORG_ID, 72, 'extempp', 'user_defined', 1, 220, NOW(), NULL, NULL, 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 73, 'dd', 'user_defined', 1, 220, NOW(), NULL, NULL, 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 74, 'Was it in a condit;ll;ion? kllklfircljllopyxt copy', 'user_defined', 1, 52, NOW(), NULL, NULL, 37),
(VAR_TENANT_KEY, VAR_ORG_ID, 75, 'Was it in a condkjkjit;ll;ion? kllklfircljllopyxt copy', 'user_defined', 1, 52, NOW(), NULL, NULL, 38),
(VAR_TENANT_KEY, VAR_ORG_ID, 76, 'Was it in a ? kllklfidarcljllopyxt copy', 'user_defined', 1, 52, NOW(), NULL, NULL, 40),
(VAR_TENANT_KEY, VAR_ORG_ID, 77, 'Was it in a condkjkjit;ll;ion? kllklfidarcljllopyxt copy', 'user_defined', 1, 52, NOW(), NULL, NULL, 38),
(VAR_TENANT_KEY, VAR_ORG_ID, 78, 'Was it in a condkjkjit;ll;ion? kllklfidarcljll;ll;opyxt copy', 'user_defined', 1, 52, NOW(), NULL, NULL, 39),
(VAR_TENANT_KEY, VAR_ORG_ID, 79, 'Was it in a ? kllklfidarcljllopyxt copy', 'user_defined', 1, 52, NOW(), NULL, NULL, 40),
(VAR_TENANT_KEY, VAR_ORG_ID, 80, 'Was it in a ? kllklfidarcljllkllopyxt copy', 'user_defined', 1, 52, NOW(), 52, NOW(), 41),
(VAR_TENANT_KEY, VAR_ORG_ID, 81, 'new', 'user_defined', 1, 220, NOW(), 52, NOW(), 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 82, 'gggg', 'user_defined', 1, 220, NOW(), 52, NOW(), 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 83, 'new', 'user_defined', 1, 220, NOW(), NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 84, 'Was it in a ? kllklfidadarcljllkllopyxt copy', 'user_defined', 1, 52, NOW(), 181, NOW(), 42),
(VAR_TENANT_KEY, VAR_ORG_ID, 85, 'application_001', 'user_defined', 1, 220, NOW(), 52, NOW(), 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 86, 'newApplication', 'user_defined', 1, 220, NOW(), 52, NOW(), 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 87, 'ggt', 'user_defined', 1, 220, NOW(), NULL, NULL, 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 88, 'delivery', 'user_defined', 1, 181, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 89, 'newwww', 'user_defined', 1, 220, NOW(), 52, NOW(), 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 90, 'newCriteria', 'user_defined', 1, 220, NOW(), 52, NOW(), 9),
(VAR_TENANT_KEY, VAR_ORG_ID, 91, 'Demo test', 'user_defined', 1, 181, NOW(), NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 92, 'application', 'user_defined', 1, 220, NOW(), 52, NOW(), 9),
(VAR_TENANT_KEY, VAR_ORG_ID, 93, 'Customer Quality Assessment criteria', 'user_defined', 1, 52, NOW(), NULL, NULL, 20),
(VAR_TENANT_KEY, VAR_ORG_ID, 94, 'Sales experience criteria 1', 'user_defined', 1, 52, NOW(), 52, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 95, 'Criteria - Sales Experience', 'user_defined', 1, 52, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 96, 'How would you rate this product?', 'user_defined', 1, 52, NOW(), 52, NOW(), 44),
(VAR_TENANT_KEY, VAR_ORG_ID, 97, 'CQA-criteria', 'user_defined', 1, 52, NOW(), 52, NOW(), 18),
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 'Customer-for-rollback', 'user_defined', 1, 52, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 99, 'Installation criteria 1', 'user_defined', 1, 52, NOW(), NULL, NULL, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 'How would you rate our product support?', 'user_defined', 1, 19, NOW(), 181, NOW(), 17);

END $$;
