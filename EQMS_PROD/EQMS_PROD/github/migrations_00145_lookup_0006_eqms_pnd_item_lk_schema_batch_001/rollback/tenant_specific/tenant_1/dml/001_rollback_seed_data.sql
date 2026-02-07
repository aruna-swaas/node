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

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND pnd_item = 'Product Category' AND status = 1 AND pnd_item_category = 'product_category_chosen' AND pnd_item_identifier = 'product_category';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND pnd_item = 'Application of the product' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'application_of_product';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND pnd_item = 'Intented Use of Product' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'intended_use_of_product';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND pnd_item = 'Generic Name of Product' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'product_generic_name';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND pnd_item = 'EMDN Code' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'emdn_code';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND pnd_item = 'Post Delivery Requirements' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'post_delivery_requirements';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND pnd_item = 'Target Timeline for Product Launch' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'target_timeline_for_product_launch';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND pnd_item = 'Quantity Forecast (3 Years)' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'quantity_forecast_3_years';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND pnd_item = 'Target Selling Price' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'target_selling_price';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND pnd_item = 'Documentation Requirements' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'documentation_requirements';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND pnd_item = 'Environmental Requirements' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'environmental_requirements';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND pnd_item = 'Delivery Requirements' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'delivery_requirements';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND pnd_item = 'Packaging Requirements' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'packaging_requirements';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND pnd_item = 'Service Requirements' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'service_requirements';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND pnd_item = 'Product Features' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'product_features';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND pnd_item = 'Competitor Information' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'competitor_information';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND pnd_item = 'End User' AND status = 1 AND pnd_item_category = 'end_user_chosen' AND pnd_item_identifier = 'end_user';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND pnd_item = 'Buyer' AND status = 1 AND pnd_item_category = 'buyer_chosen' AND pnd_item_identifier = 'buyer';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND pnd_item = 'Development Cost' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'development_cost';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND pnd_item = 'Abbreviation' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'abbreviation';

-- Delete from organization.eqms_pnd_item_lk
DELETE FROM organization.eqms_pnd_item_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND pnd_item = 'GMDN Code' AND status = 1 AND pnd_item_category = 'text' AND pnd_item_identifier = 'gmdn_code';

END $$;
