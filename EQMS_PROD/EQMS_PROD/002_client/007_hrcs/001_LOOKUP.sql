DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID     INT := ${ORGID};
BEGIN

-- eqms_hr_employment_type_lk
INSERT INTO organization.eqms_hr_employment_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, employment_type, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Contract', 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Part time', 1, 1, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Full time', 1, 1, NOW(), NULL, NULL, 3);

INSERT INTO organization.eqms_hr_evalution_status_lk (
  eqms_tenant_key, fk_eqms_organization_id, evalution_status, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Rejected', 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Onhold', 1, 1, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Selected', 1, 1, NOW(), NULL, NULL, 3);

-- eqms_hr_skill_level_lk
INSERT INTO organization.eqms_hr_skill_level_lk (
  eqms_tenant_key, fk_eqms_organization_id, skill_level, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 1, 1, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 1, 1, NOW(), NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 1, 1, NOW(), NULL, NULL, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 1, 1, NOW(), NULL, NULL, 5);

-- eqms_hr_induction_training_topic_lk
INSERT INTO organization.eqms_hr_induction_training_topic_lk (
  eqms_tenant_key, fk_eqms_organization_id, topic, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Overview of the Company', 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Roles and Responsibilities', 1, 1, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Quality Objectives', 1, 1, NOW(), NULL, NULL, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Quality Policy', 1, 1, NOW(), NULL, NULL, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Relevance and Importance of their activities to achieve Quality Objectives', 1, 1, NOW(), NULL, NULL, 5);

-- eqms_hr_resource_required_type_lk
INSERT INTO organization.eqms_hr_resource_required_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, resource_required_type, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Replacement', 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'New Requirment', 1, 1, NOW(), NULL, NULL, 2);

-- eqms_hr_recruitment_type_lk
INSERT INTO organization.eqms_hr_recruitment_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, recruitment_type, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Part time', 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Full time', 1, 1, NOW(), NULL, NULL, 2);

-- eqms_hr_employee_source_lk
INSERT INTO organization.eqms_hr_employee_source_lk (
  eqms_tenant_key, fk_eqms_organization_id, source, status, created_by, created_date, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Appraisal', 1, 1, NOW(), NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Project', 1, 1, NOW(), NULL, NULL, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Recruit', 1, 1, NOW(), NULL, NULL, 3);

END $$;
