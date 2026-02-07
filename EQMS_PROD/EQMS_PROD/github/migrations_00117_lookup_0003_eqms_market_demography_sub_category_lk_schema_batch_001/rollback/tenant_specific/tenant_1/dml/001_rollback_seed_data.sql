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
    VAR_BUCKET_NAME TEXT := '${BUCKETNAME}';
	  VAR_USER_ID INT;
    VAR_USER_SUB UUID := '${USERSUB}';
    VAR_FILE_ID_8 INT;
    VAR_FILE_ID_9 INT;
    VAR_FILE_ID_10 INT;
    VAR_FILE_ID_11 INT;
    VAR_FILE_ID_12 INT;
    VAR_FILE_ID_13 INT;
    VAR_FILE_ID_14 INT;
    VAR_FILE_ID_15 INT;
    VAR_FILE_ID_16 INT;
    VAR_FILE_ID_17 INT;
    VAR_FILE_ID_18 INT;
    VAR_FILE_ID_19 INT;
    VAR_FILE_ID_20 INT;
    VAR_FILE_ID_21 INT;
    VAR_FILE_ID_22 INT;
    VAR_FILE_ID_23 INT;
    VAR_FILE_ID_24 INT;
    VAR_FILE_ID_25 INT;
    VAR_FILE_ID_26 INT;
    VAR_FILE_ID_27 INT;
    VAR_FILE_ID_28 INT;
    VAR_FILE_ID_29 INT;
    VAR_FILE_ID_30 INT;
    VAR_FILE_ID_31 INT;
    VAR_FILE_ID_32 INT;
    VAR_FILE_ID_33 INT;
    VAR_FILE_ID_34 INT;
    VAR_FILE_ID_35 INT;
    VAR_FILE_ID_36 INT;
    VAR_FILE_ID_37 INT;
    VAR_FILE_ID_38 INT;
    VAR_FILE_ID_39 INT;
    VAR_FILE_ID_40 INT;
    VAR_FILE_ID_41 INT;
    VAR_FILE_ID_42 INT;
    VAR_FILE_ID_43 INT;
    VAR_FILE_ID_44 INT;
    VAR_FILE_ID_45 INT;
    VAR_FILE_ID_46 INT;
    VAR_FILE_ID_47 INT;
    VAR_FILE_ID_48 INT;
    VAR_FILE_ID_49 INT;
    VAR_FILE_ID_50 INT;
    VAR_FILE_ID_51 INT;
    VAR_FILE_ID_52 INT;
    VAR_FILE_ID_53 INT;
    VAR_FILE_ID_54 INT;
    VAR_FILE_ID_55 INT;
    VAR_FILE_ID_56 INT;
    VAR_FILE_ID_57 INT;
    VAR_FILE_ID_58 INT;
    VAR_FILE_ID_59 INT;
    VAR_FILE_ID_60 INT;
    VAR_FILE_ID_61 INT;
    VAR_FILE_ID_62 INT;
    VAR_FILE_ID_63 INT;
    VAR_FILE_ID_64 INT;
    VAR_FILE_ID_65 INT;
    VAR_FILE_ID_66 INT;
    VAR_FILE_ID_67 INT;
    VAR_FILE_ID_68 INT;
    VAR_FILE_ID_69 INT;
    VAR_FILE_ID_70 INT;
    VAR_FILE_ID_71 INT;
    VAR_FILE_ID_72 INT;
    VAR_FILE_ID_73 INT;
    VAR_FILE_ID_74 INT;
    VAR_FILE_ID_75 INT;
    VAR_FILE_ID_76 INT;
    VAR_FILE_ID_77 INT;
    VAR_FILE_ID_78 INT;
    VAR_FILE_ID_79 INT;
    VAR_FILE_ID_80 INT;
    VAR_FILE_ID_81 INT;
    VAR_FILE_ID_82 INT;
    VAR_FILE_ID_83 INT;
    VAR_FILE_ID_84 INT;
    VAR_FILE_ID_85 INT;
    VAR_FILE_ID_86 INT;
    VAR_FILE_ID_90 INT;
    VAR_FILE_ID_91 INT;
    VAR_FILE_ID_92 INT;
    VAR_FILE_ID_93 INT;
BEGIN

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND fk_eqms_market_demography_category_lk_id = 6 AND market_demography_sub_category = 'Eskimos' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND fk_eqms_market_demography_category_lk_id = 6 AND market_demography_sub_category = 'Amerindians' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND fk_eqms_market_demography_category_lk_id = 6 AND market_demography_sub_category = 'Australian' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND fk_eqms_market_demography_category_lk_id = 6 AND market_demography_sub_category = 'Pacific Island' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND fk_eqms_market_demography_category_lk_id = 6 AND market_demography_sub_category = 'Asiatic sub group' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND fk_eqms_market_demography_category_lk_id = 6 AND market_demography_sub_category = 'Mongoloid' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND fk_eqms_market_demography_category_lk_id = 6 AND market_demography_sub_category = 'Negroid' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND fk_eqms_market_demography_category_lk_id = 6 AND market_demography_sub_category = 'Caucasoid' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_market_demography_category_lk_id = 5 AND market_demography_sub_category = 'Young Parents' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_market_demography_category_lk_id = 7 AND market_demography_sub_category = 'High Income Groups' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_market_demography_category_lk_id = 7 AND market_demography_sub_category = 'Mid Income Groups' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_market_demography_category_lk_id = 7 AND market_demography_sub_category = 'Low Income Groups' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_market_demography_category_lk_id = 7 AND market_demography_sub_category = 'Metropolitan' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_market_demography_category_lk_id = 7 AND market_demography_sub_category = 'Citizen' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_market_demography_category_lk_id = 7 AND market_demography_sub_category = 'Urban' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_market_demography_category_lk_id = 7 AND market_demography_sub_category = 'Rural' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_market_demography_category_lk_id = 8 AND market_demography_sub_category = 'Others' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_market_demography_category_lk_id = 5 AND market_demography_sub_category = 'Adult Parents' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_market_demography_category_lk_id = 4 AND market_demography_sub_category = 'Female' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_market_demography_category_lk_id = 4 AND market_demography_sub_category = 'Male' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_market_demography_category_lk_id = 3 AND market_demography_sub_category = 'Female' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_market_demography_category_lk_id = 3 AND market_demography_sub_category = 'Male' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_market_demography_category_lk_id = 2 AND market_demography_sub_category = 'Girl' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_market_demography_category_lk_id = 2 AND market_demography_sub_category = 'Boy' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_market_demography_category_lk_id = 1 AND market_demography_sub_category = 'Girl' AND status = 1;

-- Delete from organization.eqms_market_demography_sub_category_lk
DELETE FROM organization.eqms_market_demography_sub_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_market_demography_category_lk_id = 1 AND market_demography_sub_category = 'Boy' AND status = 1;

END $$;
