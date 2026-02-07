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

INSERT INTO organization.eqms_pnd_item_lk (
  eqms_tenant_key, fk_eqms_organization_id, pnd_item, status, created_date, created_by, modified_date, modified_by, pnd_item_category, pnd_item_identifier, ref_id
) VALUES
(VAR_TENANT_KEY, VAR_ORG_ID, 'GMDN Code', 1, NOW(), 1, NULL, NULL, 'text', 'gmdn_code', 1),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Abbreviation', 1, NOW(), 1, NULL, NULL, 'text', 'abbreviation', 2),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Development Cost', 1, NOW(), 1, NULL, NULL, 'text', 'development_cost', 3),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Buyer', 1, NOW(), 1, NULL, NULL, 'buyer_chosen', 'buyer', 4),
(VAR_TENANT_KEY, VAR_ORG_ID, 'End User', 1, NOW(), 1, NULL, NULL, 'end_user_chosen', 'end_user', 5),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Competitor Information', 1, NOW(), 1, NULL, NULL, 'text', 'competitor_information', 6),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Product Features', 1, NOW(), 1, NULL, NULL, 'text', 'product_features', 7),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Service Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'service_requirements', 8),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Packaging Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'packaging_requirements', 9),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Delivery Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'delivery_requirements', 10),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Environmental Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'environmental_requirements', 11),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Documentation Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'documentation_requirements', 12),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Target Selling Price', 1, NOW(), 1, NULL, NULL, 'text', 'target_selling_price', 13),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Quantity Forecast (3 Years)', 1, NOW(), 1, NULL, NULL, 'text', 'quantity_forecast_3_years', 14),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Target Timeline for Product Launch', 1, NOW(), 1, NULL, NULL, 'text', 'target_timeline_for_product_launch', 15),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Post Delivery Requirements', 1, NOW(), 1, NULL, NULL, 'text', 'post_delivery_requirements', 16),
(VAR_TENANT_KEY, VAR_ORG_ID, 'EMDN Code', 1, NOW(), 1, NULL, NULL, 'text', 'emdn_code', 17),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Generic Name of Product', 1, NOW(), 1, NULL, NULL, 'text', 'product_generic_name', 18),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Intented Use of Product', 1, NOW(), 1, NULL, NULL, 'text', 'intended_use_of_product', 19),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Application of the product', 1, NOW(), 1, NULL, NULL, 'text', 'application_of_product', 20),
(VAR_TENANT_KEY, VAR_ORG_ID, 'Product Category', 1, NOW(), 1, NULL, NULL, 'product_category_chosen', 'product_category', 21);

END $$;
