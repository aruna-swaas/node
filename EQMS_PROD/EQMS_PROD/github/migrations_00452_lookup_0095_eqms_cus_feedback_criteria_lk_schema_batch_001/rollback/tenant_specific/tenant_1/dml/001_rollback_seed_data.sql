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

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND criteria = 'tttt' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 3;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND criteria = 'new criteria' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 35;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND criteria = 'new_cr_008' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 36;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND criteria = '52' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 35;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND criteria = 'Was it in godasddasdasddasasaskjbjldfasaas condit;ll;ion? kllklfircljllopyxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 34;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND criteria = 'Was it in godasddasdasaskjbjldfasaas condit;ll;ion? kllklfircljllopyxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 33;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND criteria = 'Was it in godasdaskjbjldfasaas condit;ll;ion? kllklfircljllopyxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 32;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND criteria = 'Was it in godasdaskjbjldfasaas condition? kllklfircljllopyxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 32;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND criteria = 'Was it in godasdaskjbjldfasaas condition? fircopyxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 31;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND criteria = 'Was it in godasdaskjbjldfasaas condition? fircopyxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 27;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND criteria = 'Was it in good condition? firxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 25;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND criteria = 'Was the package in good condition? firxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 24;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND criteria = 'Was it in goodfasaas condition? firxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 26;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND criteria = 'Was it in good condition? firxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 25;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND criteria = 'Was the package in good condition? firxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 24;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND criteria = 'Was the package in good condition? Coq2py' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 23;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND criteria = 'Was the package in good condition? Coqpy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 22;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND criteria = 'Was the package in good condition? Copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 21;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND criteria = 'Was the customer delivered as expected? Duplicate' AND feedback_group_criteria_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND criteria = 'Was the customer delivered as expected? - updated' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 20;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND criteria = 'How would you rate the overall customer quality? - updates' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 19;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND criteria = 'Did our product resolve your issue promptly?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 19;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND criteria = 'How would you rate our product support?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 17;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND criteria = 'Did our product resolve your issue promptly?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 17;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND criteria = 'New criteria for updated group' AND feedback_group_criteria_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND criteria = 'Was the package in good condition?' AND feedback_group_criteria_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND criteria = '28' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 16;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND criteria = 'Was it in goodfasaas condition? fircopyxt copy' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 27;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND criteria = 'Was the package in good condition?' AND feedback_group_criteria_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND criteria = 'How was the delivery experience?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 15;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND criteria = 'New criteria for updated group' AND feedback_group_criteria_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND criteria = 'Was the package in good condition?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 14;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND criteria = 'How was the delivery experience?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 14;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND criteria = 'New criteria for updated group' AND feedback_group_criteria_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND criteria = 'Was the product delivered as expected?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 13;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND criteria = 'How would you rate the overall product quality?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 13;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND criteria = 'Did our team resolve your issue promptly?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 12;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND criteria = 'How would you rate our customer support? - Updated' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 12;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND criteria = 'Rate the product quality' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 11;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND criteria = 'Would you recommend us to others?' AND feedback_group_criteria_type = 'user_defined' AND status = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND criteria = 'How satisfied were you with our service?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 10;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND criteria = 'Was our staff helpng you? 6' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 9;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND criteria = 'Was our staff helpfusdfl33sff?6' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 8;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND criteria = 'Was our staff helpng you?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 7;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND criteria = 'Was our staff helpfusdfl33sff?' AND feedback_group_criteria_type = 'user_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 6;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND criteria = 'How was the overall quality of the product' AND feedback_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 3;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND criteria = 'How was the timeliness of product delivery' AND feedback_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 2;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND criteria = 'How well the product is received' AND feedback_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 2;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND criteria = 'How was the packing of the product' AND feedback_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 2;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND criteria = 'How was the overall delivery of the product' AND feedback_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 2;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND criteria = 'How is the quality of the product promotion materials' AND feedback_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND criteria = 'Have all your queries were answered' AND feedback_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND criteria = 'How was the knowledge, skill, communication of the sales team' AND feedback_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 1;

-- Delete from organization.eqms_cus_feedback_criteria_lk
DELETE FROM organization.eqms_cus_feedback_criteria_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND criteria = 'How was your overall purchasing experience with the Sales Team' AND feedback_group_criteria_type = 'system_defined' AND status = 1 AND fk_eqms_cus_feedback_group_lk_id = 1;

END $$;
