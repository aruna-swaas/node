DO $$ 
DECLARE 
    VAR_TENANT_KEY   INT     := ${TENANTKEY};
    VAR_ORG_ID      INT;
    VAR_BUCKET_NAME TEXT := '${BUCKETNAME}';;
    VAR_USER_ID      INT;
    VAR_EMPLOYEE_ID INT;
    VAR_USER_SUB UUID := '${USERSUB}';
    VAR_EMP_FIRSTNAME TEXT := '${FIRSTNAME}';
    VAR_EMP_LASTNAME TEXT := '${LASTNAME}';
    VAR_ENCRYPYED_CONTACT TEXT :='${ENCRYPTEDCONTACT}';
    VAR_ENCRYPTED_EMPLOYEE_ID TEXT := '${ENCRYPTEDEMPLOYEEID}';
    VAR_HASH_EMPLOYEE_ID TEXT := '${HASHEMPLOYEEID}';
BEGIN 
-- ============================================
-- ORGANIZATION SCHEMA LOOKUP TABLES
-- ============================================
INSERT INTO organization.eqms_organization (eqms_tenant_key, organization_name, organization_legal_name, font_style, official_address, establishment_date, tax_id, organization_size, organization_abbreviation, organization_profile_details, status, version, created_date, created_by, modified_date, modified_by) VALUES (VAR_TENANT_KEY, 'Sample_Organization', 'Sample_Organization', 'times new roman', 'chennai ', NULL, NULL, NULL, NULL, NULL, 1, 1.0, NOW(), 1, NULL, NULL) RETURNING id INTO VAR_ORG_ID;

-- eqms_user_status_lk
INSERT INTO organization.eqms_user_status_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, user_status, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'ACTIVE', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'PENDING', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'LOCK', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'UNLOCK', 1, NOW(), 1, NULL, NULL);

-- eqms_roles_lk
INSERT INTO organization.eqms_roles_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, role_name, slug, status, created_date, created_by, modified_date, modified_by, role_type
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'CEO', 'ceo', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Others', 'others', 1, NOW(), 1, NULL, NULL, 'user_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Purchase Team Member', 'purchase_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Purchase Team Reviewer', 'purchase_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Purchase Team Head', 'purchase_team_head', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Quality Management Team Member', 'quality_management_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Quality Management Team Reviewer', 'quality_management_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Quality Management Team Head', 'quality_management_team_head', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Design Team Member', 'design_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Design Team Reviewer', 'design_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Design Team Head', 'design_team_head', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Marketing Team Member', 'marketing_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Marketing Team Reviewer', 'marketing_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Marketing Team Head', 'marketing_team_head', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'Regulatory Team Member', 'regulatory_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 'Regulatory Team Reviewer', 'regulatory_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'Regulatory Team Head', 'regulatory_team_head', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 'Customer Support Team Member', 'customer_support_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 'Customer Support Team Reviewer', 'customer_support_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 'Customer Support Team Head', 'customer_support_team_head', 0, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 'Infrastructure Team Member', 'infrastructure_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 'Infrastructure Team Reviewer', 'infrastructure_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 'Infrastructure Team Head', 'infrastructure_team_head', 0, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 'HR Team Member', 'hr_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 'HR Team Reviewer', 'hr_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 'HR Team Head', 'hr_team_head', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 'Delivery Team Member', 'delivery_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, 'Delivery Team Reviewer', 'delivery_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 29, 'Delivery Team Head', 'delivery_team_head', 0, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 'Manufacture Team Member', 'manufacture_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 31, 'Manufacture Team Reviewer', 'manufacture_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 32, 'Manufacture Team Head', 'manufacture_team_head', 0, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 33, 'Sales Team Member', 'sales_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, 'Sales Team Reviewer', 'sales_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, 'Sales Team Head', 'sales_team_head', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 'Management Team Member', 'management_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 'Management Team Reviewer', 'management_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 38, 'Management Team Head', 'management_team_head', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 'QARA Head', 'qara_head', 0, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 'Risk Team Member', 'risk_team_member', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 'Risk Team Reviewer', 'risk_team_reviewer', 1, NOW(), 1, NULL, NULL, 'system_defined'),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 'Risk Team Head', 'risk_team_head', 1, NOW(), 1, NULL, NULL, 'system_defined');

-- eqms_organization_department

INSERT INTO organization.eqms_organization_department (
  eqms_tenant_key, fk_eqms_organization_id, department_name, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Purchase', 1, NOW(), 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Quality Management', 1, NOW(), 1, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Design', 1, NOW(), 1, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Marketing', 1, NOW(), 1, 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Regulatory', 1, NOW(), 1, 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Customer Support', 1, NOW(), 1, 6),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Infrastructure', 1, NOW(), 1, 7),
(VAR_TENANT_KEY, VAR_ORG_ID, 'HR', 1, NOW(), 1, 8),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Delivery', 1, NOW(), 1, 9),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Manufacture', 1, NOW(), 1, 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Sales', 1, NOW(), 1, 11),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Management', 1, NOW(), 1, 12),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Risk', 1, NOW(), 1, 13);

-- eqms_service_group_lk
INSERT INTO organization.eqms_service_group_lk (
  eqms_tenant_key, fk_eqms_organization_id, group_name, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'group 1', 1, NOW(), 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'group 2', 1, NOW(), 1, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'group 3', 1, NOW(), 1, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'group 4', 1, NOW(), 1, 4);

-- eqms_designation_lk
INSERT INTO organization.eqms_designation_lk (
  eqms_tenant_key, fk_eqms_organization_id, designation, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Design Engineer', 1, NOW(), 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Service Engineer', 1, NOW(), 1, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'CEO', 1, NOW(), 1, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'CFO', 1, NOW(), 1, 4);

-- eqms_responsibility_lk
INSERT INTO organization.eqms_responsibility_lk (
  eqms_tenant_key, fk_eqms_organization_id, responsibility, status, created_date, created_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'Creation', 1, NOW(), 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Review', 1, NOW(), 1, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Approval', 1, NOW(), 1, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Owner', 1, NOW(), 1, 4);


-- eqms_employee_status_lk
INSERT INTO organization.eqms_employee_status_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  employee_status,
  slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'APPROVED', 'approved', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'REJECTED', 'rejected', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'IN PROGRESS', 'in_progress', 1, NOW(), 1, NULL, NULL);


-- USER TABLE WITH TENANT, ORG VARIABLE
-- INSERT USERS TABLE
INSERT INTO hrcs.eqms_organization_employee(
 eqms_tenant_key, fk_eqms_organization_id, encrypted_employee_id, encrypted_employee_first_name, encrypted_employee_last_name, status, created_date, created_by,
 fk_eqms_organization_department_id, joining_date,fk_eqms_employee_status_lk_id, hash_employee_number_token, fk_eqms_designation_lk_id)
VALUES (VAR_TENANT_KEY, VAR_ORG_ID, VAR_ENCRYPTED_EMPLOYEE_ID, VAR_EMP_FIRSTNAME, VAR_EMP_LASTNAME, 1, NOW(), 1, 1,
	NOW(), 1, VAR_HASH_EMPLOYEE_ID, 3) RETURNING id INTO VAR_EMPLOYEE_ID;
INSERT INTO organization.eqms_users (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_user_status_lk_id, external_user_id, status, version, created_date, created_by, fk_eqms_employee_id) VALUES (VAR_TENANT_KEY, VAR_ORG_ID, 1, VAR_USER_SUB,1,'1.0',NOW(),1, VAR_EMPLOYEE_ID) RETURNING id INTO VAR_USER_ID;
INSERT INTO organization.eqms_user_contact (eqms_tenant_key, fk_eqms_user_id, contact_type, encrypted_contact, status, created_date, created_by, fk_eqms_organization_id) VALUES (VAR_TENANT_KEY, VAR_USER_ID, 'email', VAR_ENCRYPYED_CONTACT, 1, NOW(), 1,VAR_ORG_ID);
INSERT INTO organization.eqms_user_service_group (eqms_tenant_key, fk_eqms_service_group_lk_id, status, created_date, created_by,fk_eqms_organization_id, fk_eqms_user_id)VALUES (VAR_TENANT_KEY, 1, 1, NOW(),1,VAR_ORG_ID,VAR_USER_ID);
INSERT INTO organization.eqms_user_responsibility (eqms_tenant_key, fk_eqms_user_id, fk_eqms_responsibility_lk_id, status, created_date, created_by, fk_eqms_organization_id) VALUES (VAR_TENANT_KEY, VAR_USER_ID, 4, 1,NOW(),1,VAR_ORG_ID);
INSERT INTO organization.eqms_user_roles (eqms_tenant_key, fk_eqms_user_id, fk_eqms_role_lk_ref_id, status, created_date, created_by, fk_eqms_organization_id) VALUES (VAR_TENANT_KEY, VAR_USER_ID, 1, 1,NOW(),1, VAR_ORG_ID);

-- eqms_status_lk
INSERT INTO organization.eqms_status_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, status_name, status, created_date, created_by, modified_date, modified_by, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Active', 1, NOW(), 1, NULL, NULL, 'active'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Inactive', 1, NOW(), 1, NULL, NULL, 'inactive');

-- eqms_schedule_status_lk
INSERT INTO organization.eqms_schedule_status_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, schedule_status, slug, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Completed', 'completed', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Not completed', 'not_completed', 1, 1, NOW(), NULL, NULL);

-- eqms_bom_publish_status_lk
INSERT INTO organization.eqms_bom_publish_status_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, publish_status, slug, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Publish', 'published', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Draft', 'draft', 1, NOW(), 1, NULL, NULL);

-- eqms_gender_lk
INSERT INTO organization.eqms_gender_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, gender, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Male', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Female', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Third Gender', 1, NOW(), 1, NULL, NULL);

-- eqms_product_category_lk
INSERT INTO organization.eqms_product_category_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, product_category, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Critical care', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Neurology', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Cardiology', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Medical Imaging', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Pulmonology', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Audiology', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Psychiatry', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Surgery', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'IVD', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'TeleHealth Solution', 1, NOW(), 1, NULL, NULL);

-- eqms_product_group_lk
INSERT INTO organization.eqms_product_group_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, product_group, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Critical Care', 1, NOW(), 1, NULL, NULL);

-- eqms_product_type_lk
INSERT INTO organization.eqms_product_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, product_type, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Non Active Medical Device', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Active Medical Device', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'SaMD', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Active IVD', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Non Active IVD', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'House Use', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Provisional Use', 1, NOW(), 1, NULL, NULL);

-- eqms_product_subtype_lk
INSERT INTO organization.eqms_product_subtype_lk (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_product_type_lk_id, ref_id, product_subtype, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 1, 'Sterile', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2, 'Non-Sterile', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 3, 'Implantable', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 4, 'Non-Sterile', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 5, 'Sterile', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 6, 'Implantable', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 7, 'Software', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 8, 'General', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 9, 'Software', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 10, 'General', 1, NOW(), 1, NULL, NULL);

-- eqms_reg_country_lk
INSERT INTO organization.eqms_reg_country_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, country_name, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Afghanistan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Albania', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Algeria', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Andorra', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Angola', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Antigua and Barbuda', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Argentina', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Armenia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Australia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'Austria', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Azerbaijan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Bahamas', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'Bahrain', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'Bangladesh', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'Barbados', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 'Belarus', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'Belgium', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 'Belize', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 'Benin', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 'Bhutan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 'Bolivia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 'Bosnia and Herzegovina', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 'Botswana', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 24, 'Brazil', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 25, 'Brunei', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 26, 'Bulgaria', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 27, 'Burkina Faso', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 28, 'Burundi', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 29, 'Cabo Verde', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 30, 'Cambodia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 31, 'Cameroon', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 32, 'Canada', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 33, 'Central African Republic', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 34, 'Chad', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 35, 'Chile', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 36, 'China', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 37, 'Colombia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 38, 'Comoros', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 39, 'Congo (Congo-Brazzaville)', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 40, 'Costa Rica', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 41, 'Croatia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 42, 'Cuba', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 43, 'Cyprus', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 44, 'Czech Republic', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 45, 'Democratic Republic of the Congo', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 46, 'Denmark', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 47, 'Djibouti', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 48, 'Dominica', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 49, 'Dominican Republic', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 50, 'Ecuador', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 51, 'Egypt', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 52, 'El Salvador', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 53, 'Equatorial Guinea', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 54, 'Eritrea', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 55, 'Estonia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 56, 'Eswatini', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 57, 'Ethiopia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 58, 'Fiji', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 59, 'Finland', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 60, 'France', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 61, 'Gabon', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 62, 'Gambia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 63, 'Georgia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 64, 'Germany', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 65, 'Ghana', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 66, 'Greece', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 67, 'Grenada', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 68, 'Guatemala', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 69, 'Guinea', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 70, 'Guinea-Bissau', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 71, 'Guyana', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 72, 'Haiti', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 73, 'Honduras', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 74, 'Hungary', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 75, 'Iceland', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 76, 'India', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 77, 'Indonesia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 78, 'Iran', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 79, 'Iraq', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 80, 'Ireland', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 81, 'Israel', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 82, 'Italy', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 83, 'Jamaica', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 84, 'Japan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 85, 'Jordan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 86, 'Kazakhstan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 87, 'Kenya', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 88, 'Kiribati', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 89, 'Kuwait', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 90, 'Kyrgyzstan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 91, 'Laos', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 92, 'Latvia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 93, 'Lebanon', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 94, 'Lesotho', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 95, 'Liberia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 96, 'Libya', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 97, 'Liechtenstein', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 98, 'Lithuania', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 99, 'Luxembourg', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 100, 'Madagascar', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 101, 'Malawi', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 102, 'Malaysia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 103, 'Maldives', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 104, 'Mali', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 105, 'Malta', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 106, 'Marshall Islands', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 107, 'Mauritania', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 108, 'Mauritius', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 109, 'Mexico', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 110, 'Micronesia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 111, 'Moldova', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 112, 'Monaco', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 113, 'Mongolia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 114, 'Montenegro', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 115, 'Morocco', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 116, 'Mozambique', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 117, 'Myanmar (Burma)', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 118, 'Namibia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 119, 'Nauru', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 120, 'Nepal', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 121, 'Netherlands', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 122, 'New Zealand', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 123, 'Nicaragua', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 124, 'Niger', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 125, 'Nigeria', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 126, 'North Korea', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 127, 'North Macedonia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 128, 'Norway', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 129, 'Oman', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 130, 'Pakistan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 131, 'Palau', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 132, 'Palestine State', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 133, 'Panama', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 134, 'Papua New Guinea', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 135, 'Paraguay', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 136, 'Peru', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 137, 'Philippines', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 138, 'Poland', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 139, 'Portugal', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 140, 'Qatar', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 141, 'Romania', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 142, 'Russia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 143, 'Rwanda', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 144, 'Saint Kitts and Nevis', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 145, 'Saint Lucia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 146, 'Saint Vincent and the Grenadines', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 147, 'Samoa', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 148, 'San Marino', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 149, 'Sao Tome and Principe', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 150, 'Saudi Arabia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 151, 'Senegal', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 152, 'Serbia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 153, 'Seychelles', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 154, 'Sierra Leone', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 155, 'Singapore', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 156, 'Slovakia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 157, 'Slovenia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 158, 'Solomon Islands', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 159, 'Somalia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 160, 'South Africa', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 161, 'South Korea', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 162, 'South Sudan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 163, 'Spain', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 164, 'Sri Lanka', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 165, 'Sudan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 166, 'Suriname', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 167, 'Sweden', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 168, 'Switzerland', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 169, 'Syria', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 170, 'Taiwan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 171, 'Tajikistan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 172, 'Tanzania', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 173, 'Thailand', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 174, 'Timor-Leste', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 175, 'Togo', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 176, 'Tonga', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 177, 'Trinidad and Tobago', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 178, 'Tunisia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 179, 'Turkey', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 180, 'Turkmenistan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 181, 'Tuvalu', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 182, 'Uganda', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 183, 'Ukraine', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 184, 'United Arab Emirates', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 185, 'United Kingdom', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 186, 'United States of America', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 187, 'Uruguay', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 188, 'Uzbekistan', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 189, 'Vanuatu', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 190, 'Vatican City', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 191, 'Venezuela', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 192, 'Vietnam', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 193, 'Yemen', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 194, 'Zambia', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 195, 'Zimbabwe', 1, NOW(), 1, NULL, NULL);
-- eqms_theme
INSERT INTO organization.eqms_theme (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, theme_name, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Light', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Dark', 1, NOW(), 1, NULL, NULL);

-- eqms_organization_site
INSERT INTO organization.eqms_organization_site (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, site, site_address, slug, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Site A', 'Site A some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Site B', 'Site B some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Site C', 'Site C some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Site D', 'Site D some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Site E', 'Site E some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Site F', 'Site F some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'Site G', 'Site G some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'Site H', 'Site H some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'Site I', 'Site I some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'SITE J', 'Site J some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'Site K', 'Site K some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'Site L', 'Site L some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 13, 'SITE M', 'Site M some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 14, 'SITE N', 'Site N some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 15, 'SITE O', 'Site O some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 16, 'SITE P', 'Site P some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 17, 'SITE Q', 'Site Q some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 18, 'SITE R', 'Site R some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 19, 'SITE S', 'Site S some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 20, 'SITE T', 'Site T some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 21, 'SITE U', 'Site U some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 22, 'SITE V', 'Site V some address', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 23, 'Mumbai', NULL, NULL, 1, NOW(), 52, NULL, NULL);

-- eqms_timezones
INSERT INTO organization.eqms_timezones (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, timezone_name, timezone_code, utc_offset_in_minutes, has_dst, dst_start, dst_end, date_format, time_format, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'India Standard Time', 'IST', 330, 'NO', NULL, NULL, 'dd-MM-yyyy', 'HH:mm:ss', 1, NOW(), 1, NULL, NULL);


-- eqms_tool_category_lk
INSERT INTO organization.eqms_tool_category_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  tool_category_name,
  status,
  created_by,
  created_date,
  modified_by,
  modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Measuring Tools', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Hand Tools', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Power Tools', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Cutting Tools', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Testing Equipment', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Others', 1, NULL, NULL, NULL, NULL);
-- eqms_tools
INSERT INTO organization.eqms_tools (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, tool_name, fk_eqms_tool_category_lk_id, status, created_date, created_by, modified_date, modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'tool1', 1, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Measuring Tools', 1, 1, NOW(), 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Hand Tools', 1, 1, NOW(), 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Power Tools', 2, 1, NOW(), 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Cutting Tools', 3, 1, NOW(), 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Testing Equipment', 4, 1, NOW(), 1, NOW(), 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'one', 6, 1, NOW(), 33, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, '1765279556923', 6, 1, NOW(), 33, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'three', 6, 1, NOW(), 33, NULL, NULL);

-- eqms_part_purchase_type_lk
INSERT INTO organization.eqms_part_purchase_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, purchase_type, status, created_by, created_date, modified_by, modified_date, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'product', 1, NULL, NULL, NULL, NULL, 'product'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'equipment', 1, NULL, NULL, NULL, NULL, 'equipment'),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'services', 1, NULL, NULL, NULL, NULL, 'services'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Make', 1, NULL, NULL, NULL, NULL, 'make');
-- eqms_tool_item
INSERT INTO organization.eqms_tool_item (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tools_id, tool_item, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'tool item', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'tool item 2', 1, 1, NOW(), NULL, NULL);

-- eqms_activity_lk
INSERT INTO organization.eqms_activity_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  name,
  label,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'List', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'View', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Insert', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Update', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'Delete', NULL, 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'Upsert', NULL, 1, NOW(), 1, NULL, NULL);

-- eqms_assembly_type_lk
INSERT INTO organization.eqms_assembly_type_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  assembly_type,
  slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Major Assembly', 'major_assembly', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Packaging', 'packaging', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Product Assembly', 'product_assembly', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Major Assembly', 'major-assembly', 1, NOW(), 52, NULL, NULL);

-- eqms_bom_type_lk
INSERT INTO organization.eqms_bom_type_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  bom_type,
  slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Manufacture', 'manufacture', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Purchase', 'purchase', 1, NOW(), 1, NULL, NULL);

-- eqms_infrastructure_category_lk
INSERT INTO organization.eqms_infrastructure_category_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  infrastructure_category_name,
  status,
  created_by,
  created_date,
  modified_by,
  modified_date,
  slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Infrastructure', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Equipment', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Tool', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Jig', 1, 1, NOW(), 1, NOW(), NULL);

-- eqms_infrastructure_type_lk
INSERT INTO organization.eqms_infrastructure_type_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  fk_eqms_infrastructure_category_lk_id,
  ref_id,
  infrastructure_type_name,
  status,
  created_by,
  created_date,
  modified_by,
  modified_date,
  slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 1, 'HPLC', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 2, 'UV Spectrophotometer', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 3, 'Karl Fischer Titrator', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 4, 'Dissolution Apparatus', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 5, 'Analytical Balance', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 6, 'Air Handling Unit', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 7, 'Chiller', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 8, 'Air Conditioning Unit', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 9, 'Exhaust System', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 10, 'Exhaust System_2', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 11, 'Water Purification System', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 12, 'Compressed Air System', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 13, 'Vacuum System', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 14, 'Steam Generator', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 15, 'Server', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 16, 'Network Switch', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 17, 'Firewall', 1, 1, NOW(), 1, NOW(), NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 18, 'UPS System', 1, 1, NOW(), 1, NOW(), NULL);

-- eqms_login_result_lk
INSERT INTO organization.eqms_login_result_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  login_result,
  login_result_slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Login success', 'login_success', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Login failed', 'login_failed', 1, NOW(), 1, NULL, NULL);

-- eqms_menu_type_lk
INSERT INTO organization.eqms_menu_type_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  menu_position,
  menu_type,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Left', 'Side Bar', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Left', 'Horizontal Stepper', 1, NOW(), 1, NULL, NULL);

-- eqms_month_lk
INSERT INTO organization.eqms_month_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  month_code,
  month_name,
  month_number,
  status,
  created_by,
  created_date,
  modified_by,
  modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'JAN', 'January', 1, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'FEB', 'February', 2, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'MAR', 'March', 3, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'APR', 'April', 4, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'MAY', 'May', 5, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 'JUN', 'June', 6, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'JUL', 'July', 7, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 8, 'AUG', 'August', 8, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 9, 'SEP', 'September', 9, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 10, 'OCT', 'October', 10, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 11, 'NOV', 'November', 11, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 12, 'DEC', 'December', 12, 1, 1, NOW(), NULL, NULL);

-- eqms_part_component_type_lk
INSERT INTO organization.eqms_part_component_type_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  part_component_type,
  slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Both', 'both', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Software', 'software', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Hardware', 'hardware', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Manufacture', 'manufacture', 1, NOW(), 52, NULL, NULL);

-- eqms_part_quantity_type_lk
INSERT INTO organization.eqms_part_quantity_type_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  part_quantity_type,
  slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Unit', 'unit', 1, NULL, NULL, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Batch', 'batch', 1, NULL, NULL, NULL, NULL);

-- eqms_part_type_lk
INSERT INTO organization.eqms_part_type_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  part_type,
  slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Safety', 'safety', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Critical', 'critical', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Appearance', 'appearance', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Others', 'others', 1, NOW(), 1, NULL, NULL);

-- eqms_selection_lk
INSERT INTO organization.eqms_selection_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  selection_type,
  status,
  created_by,
  created_date,
  modified_by,
  modified_date,
  slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'No', 1, NULL, NULL, NULL, NULL, 'no'),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Yes', 1, NULL, NULL, NULL, NULL, 'yes');

-- eqms_unit_lk
INSERT INTO organization.eqms_unit_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  unit,
  slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'kg', 'kg', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'liter', 'liter', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'mt', 'mt', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'new unit', 'new-unit', 1, NOW(), 52, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 'new units', 'new-units', 1, NOW(), 52, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 1, 1, 1, NOW(), 52, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 7, 'gram', 'gram', 1, NOW(), 52, NULL, NULL);

-- eqms_value_acceptability_lk
INSERT INTO organization.eqms_value_acceptability_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  value_acceptability,
  slug,
  status,
  created_date,
  created_by,
  modified_date,
  modified_by
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Acceptable', 'acceptable', 1, NOW(), 1, NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Not acceptable', 'not_acceptable', 1, NOW(), 1, NULL, NULL);

-- eqms_year_lk
INSERT INTO organization.eqms_year_lk (
  eqms_tenant_key,
  fk_eqms_organization_id,
  ref_id,
  year_value,
  year_description,
  status,
  created_by,
  created_date,
  modified_by,
  modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 2025, 'Year 2025', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 2026, 'Year 2026', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 2027, 'Year 2027', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 2028, 'Year 2028', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 5, 2029, 'Year 2029', 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 6, 2030, 'Year 2030', 1, 1, NOW(), NULL, NULL);

-- eqms_verification_result_lk
INSERT INTO organization.eqms_verification_result_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, verification_result, status, created_date, created_by, modified_date, modified_by, slug
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Pass', 1, NOW(), 1, NULL, NULL, 'pass'),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Fail', 1, NOW(), 1, NULL, NULL, 'fail');


-- eqms_equipment_category_lk
INSERT INTO organization.eqms_equipment_category_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, category_name, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Equipment category 1', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Equipment category 2', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Equipment category 3', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'Others', 1, 1, NOW(), 1, NOW());
-- eqms_jig_lk
INSERT INTO organization.eqms_jig_lk (
  eqms_tenant_key, fk_eqms_organization_id, jig_name, status, created_date, created_by, modified_date, modified_by, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'jig1', 1, NOW(), 1, NULL, NULL, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'jig2', 1, NOW(), 1, NULL, NULL, 2);


INSERT INTO organization.eqms_equipment_lk (
  eqms_tenant_key, fk_eqms_organization_id, equipment_name, status, created_date, created_by, modified_date, modified_by, ref_id, fk_eqms_equipment_category_lk_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'equipment1', 1, NOW(), 1, NULL, NULL, 1, 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'equipment2', 1, NOW(), 1, NULL, NULL, 2, 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'equipment3', 1, NOW(), 1, NULL, NULL, 3, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'equipment4', 1, NOW(), 1, NULL, NULL, 4, 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'one', 1, NOW(), 33, NULL, NULL, 5, 4);
-- eqms_jig_item
INSERT INTO organization.eqms_jig_item (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_jig_lk_id, jig_item, jig_number, procedure_of_validation, jig_scope, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Jig Item 1', 'Jig Number 1', NULL, NULL, 1, 1, NOW(), NULL, NULL),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Jig Item 2', 'Jig Number 2', NULL, NULL, 1, 1, NOW(), NULL, NULL);

-- eqms_equipment_item
INSERT INTO organization.eqms_equipment_item (
  eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_lk_id, equipment_item, status, created_by, created_date, modified_by, modified_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Digital Multimeter DMM-001', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'Digital Multimeter DMM-002', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Vernier Caliper VC-001', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'Vernier Caliper VC-002', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Micrometer MC-001', 1, 1, NOW(), 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'Micrometer MC-002', 1, 1, NOW(), 1, NOW());


INSERT INTO organization.eqms_rcm_type_lk (
  eqms_tenant_key, fk_eqms_organization_id, ref_id, type_code, type_name, description, status, created_by, created_date
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 1, 'D', 'Design Control', 'Control measures implemented during the design phase', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 2, 'P', 'Process Control', 'Control measures implemented during the manufacturing or operational process', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 3, 'PR', 'Protection Control', 'Control measures implemented as protective measures for safety', 1, 1, NOW()),
(VAR_TENANT_KEY, VAR_ORG_ID, 4, 'I', 'Information Control', 'Control measures implemented through information and documentation', 1, 1, NOW());

END $$;
