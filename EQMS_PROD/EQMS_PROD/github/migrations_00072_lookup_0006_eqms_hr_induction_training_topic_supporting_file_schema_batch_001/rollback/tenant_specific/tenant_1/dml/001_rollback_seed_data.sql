-- Rollback: Delete seed data from file lookup_only_002_PREDEFINED.sql
-- Original file: lookup_only_002_PREDEFINED.sql
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
    VAR_BUCKET_NAME TEXT := '${BUCKETNAME}';
	  VAR_USER_ID INT;
    VAR_FILE_ID_1 INT;
    VAR_FILE_ID_2 INT;
    VAR_FILE_ID_3 INT;
    VAR_FILE_ID_4 INT;
    VAR_FILE_ID_5 INT;
    VAR_FILE_ID_6 INT;
    VAR_FILE_ID_7 INT;
    VAR_FILE_ID_8 INT;
    VAR_USER_SUB UUID := '${USERSUB}';
BEGIN

-- Delete from organization.eqms_hr_induction_training_topic_supporting_file
DELETE FROM organization.eqms_hr_induction_training_topic_supporting_file WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_hr_induction_training_topic_lk_id = 4 AND fk_eqms_supporting_file_id = VAR_FILE_ID_8 AND status = 1;

-- Delete from organization.eqms_hr_induction_training_topic_supporting_file
DELETE FROM organization.eqms_hr_induction_training_topic_supporting_file WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_hr_induction_training_topic_lk_id = 5 AND fk_eqms_supporting_file_id = VAR_FILE_ID_8 AND status = 1;

-- Delete from organization.eqms_hr_induction_training_topic_supporting_file
DELETE FROM organization.eqms_hr_induction_training_topic_supporting_file WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_hr_induction_training_topic_lk_id = 1 AND fk_eqms_supporting_file_id = VAR_FILE_ID_7 AND status = 1;

-- Delete from organization.eqms_hr_induction_training_topic_supporting_file
DELETE FROM organization.eqms_hr_induction_training_topic_supporting_file WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_hr_induction_training_topic_lk_id = 1 AND fk_eqms_supporting_file_id = VAR_FILE_ID_6 AND status = 1;

-- Delete from organization.eqms_hr_induction_training_topic_supporting_file
DELETE FROM organization.eqms_hr_induction_training_topic_supporting_file WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_hr_induction_training_topic_lk_id = 2 AND fk_eqms_supporting_file_id = VAR_FILE_ID_5 AND status = 1;

-- Delete from organization.eqms_hr_induction_training_topic_supporting_file
DELETE FROM organization.eqms_hr_induction_training_topic_supporting_file WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_hr_induction_training_topic_lk_id = 2 AND fk_eqms_supporting_file_id = VAR_FILE_ID_4 AND status = 1;

-- Delete from organization.eqms_hr_induction_training_topic_supporting_file
DELETE FROM organization.eqms_hr_induction_training_topic_supporting_file WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_hr_induction_training_topic_lk_id = 3 AND fk_eqms_supporting_file_id = VAR_FILE_ID_3 AND status = 1;

END $$;
