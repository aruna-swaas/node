-- Rollback: Delete seed data from file split_001_LOOKUP.sql
-- Original file: split_001_LOOKUP.sql
-- Seed data file: 001_seed_data.sql
--
-- Note: DELETE statements are in REVERSE order of INSERT statements
-- (Last inserted first) to maintain referential integrity during rollback
-- Each DELETE includes WHERE conditions matching the inserted data
--

DO $$
DECLARE
    VAR_TENANT_KEY INT := ${TENANTKEY};
    VAR_ORG_ID INT;
    VAR_USER_ID INT;
    VAR_EMPLOYEE_ID INT;
    VAR_USER_SUB UUID := '${USERSUB}';
    VAR_EMP_FIRSTNAME TEXT := '${FIRSTNAME}';
    VAR_EMP_LASTNAME TEXT := '${LASTNAME}';
    VAR_ENCRYPYED_CONTACT TEXT := '${ENCRYPTEDCONTACT}';
    VAR_ENCRYPTED_EMPLOYEE_ID TEXT := '${ENCRYPTEDEMPLOYEEID}';
    VAR_HASH_EMPLOYEE_ID TEXT := '${HASHEMPLOYEEID}';
BEGIN

-- Delete from organization.eqms_equipment_item
DELETE FROM organization.eqms_equipment_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_equipment_lk_id = 3 AND equipment_item = 'Micrometer MC-002' AND status = 1;

-- Delete from organization.eqms_equipment_item
DELETE FROM organization.eqms_equipment_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_equipment_lk_id = 3 AND equipment_item = 'Micrometer MC-001' AND status = 1;

-- Delete from organization.eqms_equipment_item
DELETE FROM organization.eqms_equipment_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_equipment_lk_id = 2 AND equipment_item = 'Vernier Caliper VC-002' AND status = 1;

-- Delete from organization.eqms_equipment_item
DELETE FROM organization.eqms_equipment_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_equipment_lk_id = 2 AND equipment_item = 'Vernier Caliper VC-001' AND status = 1;

-- Delete from organization.eqms_equipment_item
DELETE FROM organization.eqms_equipment_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_equipment_lk_id = 1 AND equipment_item = 'Digital Multimeter DMM-002' AND status = 1;

-- Delete from organization.eqms_equipment_item
DELETE FROM organization.eqms_equipment_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_equipment_lk_id = 1 AND equipment_item = 'Digital Multimeter DMM-001' AND status = 1;

-- Delete from organization.eqms_jig_item
DELETE FROM organization.eqms_jig_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_jig_lk_id = 2 AND jig_item = 'Jig Item 2' AND jig_number = 'Jig Number 2' AND status = 1;

-- Delete from organization.eqms_jig_item
DELETE FROM organization.eqms_jig_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_jig_lk_id = 1 AND jig_item = 'Jig Item 1' AND jig_number = 'Jig Number 1' AND status = 1;

-- Delete from organization.eqms_equipment_lk
DELETE FROM organization.eqms_equipment_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND equipment_name = 'one' AND status = 1 AND fk_eqms_equipment_category_lk_id = 4;

-- Delete from organization.eqms_equipment_lk
DELETE FROM organization.eqms_equipment_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND equipment_name = 'equipment4' AND status = 1 AND fk_eqms_equipment_category_lk_id = 3;

-- Delete from organization.eqms_equipment_lk
DELETE FROM organization.eqms_equipment_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND equipment_name = 'equipment3' AND status = 1 AND fk_eqms_equipment_category_lk_id = 3;

-- Delete from organization.eqms_equipment_lk
DELETE FROM organization.eqms_equipment_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND equipment_name = 'equipment2' AND status = 1 AND fk_eqms_equipment_category_lk_id = 2;

-- Delete from organization.eqms_equipment_lk
DELETE FROM organization.eqms_equipment_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND equipment_name = 'equipment1' AND status = 1 AND fk_eqms_equipment_category_lk_id = 1;

-- Delete from organization.eqms_jig_lk
DELETE FROM organization.eqms_jig_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND jig_name = 'jig2' AND status = 1;

-- Delete from organization.eqms_jig_lk
DELETE FROM organization.eqms_jig_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND jig_name = 'jig1' AND status = 1;

-- Delete from organization.eqms_equipment_category_lk
DELETE FROM organization.eqms_equipment_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND category_name = 'Others' AND status = 1;

-- Delete from organization.eqms_equipment_category_lk
DELETE FROM organization.eqms_equipment_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND category_name = 'Equipment category 3' AND status = 1;

-- Delete from organization.eqms_equipment_category_lk
DELETE FROM organization.eqms_equipment_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND category_name = 'Equipment category 2' AND status = 1;

-- Delete from organization.eqms_equipment_category_lk
DELETE FROM organization.eqms_equipment_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND category_name = 'Equipment category 1' AND status = 1;

-- Delete from organization.eqms_year_lk
DELETE FROM organization.eqms_year_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND year_value = 2030 AND year_description = 'Year 2030' AND status = 1;

-- Delete from organization.eqms_year_lk
DELETE FROM organization.eqms_year_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND year_value = 2029 AND year_description = 'Year 2029' AND status = 1;

-- Delete from organization.eqms_year_lk
DELETE FROM organization.eqms_year_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND year_value = 2028 AND year_description = 'Year 2028' AND status = 1;

-- Delete from organization.eqms_year_lk
DELETE FROM organization.eqms_year_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND year_value = 2027 AND year_description = 'Year 2027' AND status = 1;

-- Delete from organization.eqms_year_lk
DELETE FROM organization.eqms_year_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND year_value = 2026 AND year_description = 'Year 2026' AND status = 1;

-- Delete from organization.eqms_year_lk
DELETE FROM organization.eqms_year_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND year_value = 2025 AND year_description = 'Year 2025' AND status = 1;

-- Delete from organization.eqms_value_acceptability_lk
DELETE FROM organization.eqms_value_acceptability_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND value_acceptability = 'Not acceptable' AND slug = 'not_acceptable' AND status = 1;

-- Delete from organization.eqms_value_acceptability_lk
DELETE FROM organization.eqms_value_acceptability_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND value_acceptability = 'Acceptable' AND slug = 'acceptable' AND status = 1;

-- Delete from organization.eqms_unit_lk
DELETE FROM organization.eqms_unit_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND unit = 'gram' AND slug = 'gram' AND status = 1;

-- Delete from organization.eqms_unit_lk
DELETE FROM organization.eqms_unit_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND unit = 1 AND slug = 1 AND status = 1;

-- Delete from organization.eqms_unit_lk
DELETE FROM organization.eqms_unit_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND unit = 'new units' AND slug = 'new-units' AND status = 1;

-- Delete from organization.eqms_unit_lk
DELETE FROM organization.eqms_unit_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND unit = 'new unit' AND slug = 'new-unit' AND status = 1;

-- Delete from organization.eqms_unit_lk
DELETE FROM organization.eqms_unit_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND unit = 'mt' AND slug = 'mt' AND status = 1;

-- Delete from organization.eqms_unit_lk
DELETE FROM organization.eqms_unit_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND unit = 'liter' AND slug = 'liter' AND status = 1;

-- Delete from organization.eqms_unit_lk
DELETE FROM organization.eqms_unit_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND unit = 'kg' AND slug = 'kg' AND status = 1;

-- Delete from organization.eqms_selection_lk
DELETE FROM organization.eqms_selection_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND selection_type = 'Yes' AND status = 1 AND slug = 'yes';

-- Delete from organization.eqms_selection_lk
DELETE FROM organization.eqms_selection_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND selection_type = 'No' AND status = 1 AND slug = 'no';

-- Delete from organization.eqms_part_type_lk
DELETE FROM organization.eqms_part_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND part_type = 'Others' AND slug = 'others' AND status = 1;

-- Delete from organization.eqms_part_type_lk
DELETE FROM organization.eqms_part_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND part_type = 'Appearance' AND slug = 'appearance' AND status = 1;

-- Delete from organization.eqms_part_type_lk
DELETE FROM organization.eqms_part_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND part_type = 'Critical' AND slug = 'critical' AND status = 1;

-- Delete from organization.eqms_part_type_lk
DELETE FROM organization.eqms_part_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND part_type = 'Safety' AND slug = 'safety' AND status = 1;

-- Delete from organization.eqms_part_quantity_type_lk
DELETE FROM organization.eqms_part_quantity_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND part_quantity_type = 'Batch' AND slug = 'batch' AND status = 1;

-- Delete from organization.eqms_part_quantity_type_lk
DELETE FROM organization.eqms_part_quantity_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND part_quantity_type = 'Unit' AND slug = 'unit' AND status = 1;

-- Delete from organization.eqms_part_component_type_lk
DELETE FROM organization.eqms_part_component_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND part_component_type = 'Manufacture' AND slug = 'manufacture' AND status = 1;

-- Delete from organization.eqms_part_component_type_lk
DELETE FROM organization.eqms_part_component_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND part_component_type = 'Hardware' AND slug = 'hardware' AND status = 1;

-- Delete from organization.eqms_part_component_type_lk
DELETE FROM organization.eqms_part_component_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND part_component_type = 'Software' AND slug = 'software' AND status = 1;

-- Delete from organization.eqms_part_component_type_lk
DELETE FROM organization.eqms_part_component_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND part_component_type = 'Both' AND slug = 'both' AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND month_code = 'DEC' AND month_name = 'December' AND month_number = 12 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND month_code = 'NOV' AND month_name = 'November' AND month_number = 11 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND month_code = 'OCT' AND month_name = 'October' AND month_number = 10 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND month_code = 'SEP' AND month_name = 'September' AND month_number = 9 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND month_code = 'AUG' AND month_name = 'August' AND month_number = 8 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND month_code = 'JUL' AND month_name = 'July' AND month_number = 7 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND month_code = 'JUN' AND month_name = 'June' AND month_number = 6 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND month_code = 'MAY' AND month_name = 'May' AND month_number = 5 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND month_code = 'APR' AND month_name = 'April' AND month_number = 4 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND month_code = 'MAR' AND month_name = 'March' AND month_number = 3 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND month_code = 'FEB' AND month_name = 'February' AND month_number = 2 AND status = 1;

-- Delete from organization.eqms_month_lk
DELETE FROM organization.eqms_month_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND month_code = 'JAN' AND month_name = 'January' AND month_number = 1 AND status = 1;

-- Delete from organization.eqms_menu_type_lk
DELETE FROM organization.eqms_menu_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND menu_position = 'Left' AND menu_type = 'Horizontal Stepper' AND status = 1;

-- Delete from organization.eqms_menu_type_lk
DELETE FROM organization.eqms_menu_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND menu_position = 'Left' AND menu_type = 'Side Bar' AND status = 1;

-- Delete from organization.eqms_login_result_lk
DELETE FROM organization.eqms_login_result_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND login_result = 'Login failed' AND login_result_slug = 'login_failed' AND status = 1;

-- Delete from organization.eqms_login_result_lk
DELETE FROM organization.eqms_login_result_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND login_result = 'Login success' AND login_result_slug = 'login_success' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND fk_eqms_infrastructure_category_lk_id = 1 AND infrastructure_type_name = 'UPS System' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND fk_eqms_infrastructure_category_lk_id = 1 AND infrastructure_type_name = 'Firewall' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND fk_eqms_infrastructure_category_lk_id = 1 AND infrastructure_type_name = 'Network Switch' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND fk_eqms_infrastructure_category_lk_id = 1 AND infrastructure_type_name = 'Server' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND fk_eqms_infrastructure_category_lk_id = 2 AND infrastructure_type_name = 'Steam Generator' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND fk_eqms_infrastructure_category_lk_id = 2 AND infrastructure_type_name = 'Vacuum System' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND fk_eqms_infrastructure_category_lk_id = 2 AND infrastructure_type_name = 'Compressed Air System' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND fk_eqms_infrastructure_category_lk_id = 2 AND infrastructure_type_name = 'Water Purification System' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_infrastructure_category_lk_id = 3 AND infrastructure_type_name = 'Exhaust System_2' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_infrastructure_category_lk_id = 3 AND infrastructure_type_name = 'Exhaust System' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_infrastructure_category_lk_id = 3 AND infrastructure_type_name = 'Air Conditioning Unit' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_infrastructure_category_lk_id = 3 AND infrastructure_type_name = 'Chiller' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_infrastructure_category_lk_id = 3 AND infrastructure_type_name = 'Air Handling Unit' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_infrastructure_category_lk_id = 4 AND infrastructure_type_name = 'Analytical Balance' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_infrastructure_category_lk_id = 4 AND infrastructure_type_name = 'Dissolution Apparatus' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_infrastructure_category_lk_id = 4 AND infrastructure_type_name = 'Karl Fischer Titrator' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_infrastructure_category_lk_id = 4 AND infrastructure_type_name = 'UV Spectrophotometer' AND status = 1;

-- Delete from organization.eqms_infrastructure_type_lk
DELETE FROM organization.eqms_infrastructure_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_infrastructure_category_lk_id = 4 AND infrastructure_type_name = 'HPLC' AND status = 1;

-- Delete from organization.eqms_infrastructure_category_lk
DELETE FROM organization.eqms_infrastructure_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND infrastructure_category_name = 'Jig' AND status = 1;

-- Delete from organization.eqms_infrastructure_category_lk
DELETE FROM organization.eqms_infrastructure_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND infrastructure_category_name = 'Tool' AND status = 1;

-- Delete from organization.eqms_infrastructure_category_lk
DELETE FROM organization.eqms_infrastructure_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND infrastructure_category_name = 'Equipment' AND status = 1;

-- Delete from organization.eqms_infrastructure_category_lk
DELETE FROM organization.eqms_infrastructure_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND infrastructure_category_name = 'Infrastructure' AND status = 1;

-- Delete from organization.eqms_bom_type_lk
DELETE FROM organization.eqms_bom_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND bom_type = 'Purchase' AND slug = 'purchase' AND status = 1;

-- Delete from organization.eqms_bom_type_lk
DELETE FROM organization.eqms_bom_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND bom_type = 'Manufacture' AND slug = 'manufacture' AND status = 1;

-- Delete from organization.eqms_assembly_type_lk
DELETE FROM organization.eqms_assembly_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND assembly_type = 'Major Assembly' AND slug = 'major-assembly' AND status = 1;

-- Delete from organization.eqms_assembly_type_lk
DELETE FROM organization.eqms_assembly_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND assembly_type = 'Product Assembly' AND slug = 'product_assembly' AND status = 1;

-- Delete from organization.eqms_assembly_type_lk
DELETE FROM organization.eqms_assembly_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND assembly_type = 'Packaging' AND slug = 'packaging' AND status = 1;

-- Delete from organization.eqms_assembly_type_lk
DELETE FROM organization.eqms_assembly_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND assembly_type = 'Major Assembly' AND slug = 'major_assembly' AND status = 1;

-- Delete from organization.eqms_activity_lk
DELETE FROM organization.eqms_activity_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND name = 'Upsert' AND status = 1;

-- Delete from organization.eqms_activity_lk
DELETE FROM organization.eqms_activity_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND name = 'Delete' AND status = 1;

-- Delete from organization.eqms_activity_lk
DELETE FROM organization.eqms_activity_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND name = 'Update' AND status = 1;

-- Delete from organization.eqms_activity_lk
DELETE FROM organization.eqms_activity_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND name = 'Insert' AND status = 1;

-- Delete from organization.eqms_activity_lk
DELETE FROM organization.eqms_activity_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND name = 'View' AND status = 1;

-- Delete from organization.eqms_activity_lk
DELETE FROM organization.eqms_activity_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND name = 'List' AND status = 1;

-- Delete from organization.eqms_tool_item
DELETE FROM organization.eqms_tool_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_tools_id = 1 AND tool_item = 'tool item 2' AND status = 1;

-- Delete from organization.eqms_tool_item
DELETE FROM organization.eqms_tool_item WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_tools_id = 1 AND tool_item = 'tool item' AND status = 1;

-- Delete from organization.eqms_tools
DELETE FROM organization.eqms_tools WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND tool_name = 'three' AND fk_eqms_tool_category_lk_id = 6 AND status = 1;

-- Delete from organization.eqms_tools
DELETE FROM organization.eqms_tools WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND tool_name = '1765279556923' AND fk_eqms_tool_category_lk_id = 6 AND status = 1;

-- Delete from organization.eqms_tools
DELETE FROM organization.eqms_tools WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND tool_name = 'one' AND fk_eqms_tool_category_lk_id = 6 AND status = 1;

-- Delete from organization.eqms_tools
DELETE FROM organization.eqms_tools WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND tool_name = 'Testing Equipment' AND fk_eqms_tool_category_lk_id = 4 AND status = 1;

-- Delete from organization.eqms_tools
DELETE FROM organization.eqms_tools WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND tool_name = 'Cutting Tools' AND fk_eqms_tool_category_lk_id = 3 AND status = 1;

-- Delete from organization.eqms_tools
DELETE FROM organization.eqms_tools WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND tool_name = 'Power Tools' AND fk_eqms_tool_category_lk_id = 2 AND status = 1;

-- Delete from organization.eqms_tools
DELETE FROM organization.eqms_tools WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND tool_name = 'Hand Tools' AND fk_eqms_tool_category_lk_id = 1 AND status = 1;

-- Delete from organization.eqms_tools
DELETE FROM organization.eqms_tools WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND tool_name = 'Measuring Tools' AND fk_eqms_tool_category_lk_id = 1 AND status = 1;

-- Delete from organization.eqms_tools
DELETE FROM organization.eqms_tools WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND tool_name = 'tool1' AND fk_eqms_tool_category_lk_id = 1 AND status = 1;

-- Delete from organization.eqms_tool_category_lk
DELETE FROM organization.eqms_tool_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND tool_category_name = 'Others' AND status = 1;

-- Delete from organization.eqms_tool_category_lk
DELETE FROM organization.eqms_tool_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND tool_category_name = 'Testing Equipment' AND status = 1;

-- Delete from organization.eqms_tool_category_lk
DELETE FROM organization.eqms_tool_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND tool_category_name = 'Cutting Tools' AND status = 1;

-- Delete from organization.eqms_tool_category_lk
DELETE FROM organization.eqms_tool_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND tool_category_name = 'Power Tools' AND status = 1;

-- Delete from organization.eqms_tool_category_lk
DELETE FROM organization.eqms_tool_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND tool_category_name = 'Hand Tools' AND status = 1;

-- Delete from organization.eqms_tool_category_lk
DELETE FROM organization.eqms_tool_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND tool_category_name = 'Measuring Tools' AND status = 1;

-- Delete from organization.eqms_timezones
DELETE FROM organization.eqms_timezones WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND timezone_name = 'India Standard Time' AND timezone_code = 'IST' AND utc_offset_in_minutes = 330 AND has_dst = 'NO' AND date_format = 'dd-MM-yyyy' AND time_format = 'HH:mm:ss' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND site = 'Mumbai' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND site = 'SITE V' AND site_address = 'Site V some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND site = 'SITE U' AND site_address = 'Site U some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND site = 'SITE T' AND site_address = 'Site T some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND site = 'SITE S' AND site_address = 'Site S some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND site = 'SITE R' AND site_address = 'Site R some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND site = 'SITE Q' AND site_address = 'Site Q some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND site = 'SITE P' AND site_address = 'Site P some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND site = 'SITE O' AND site_address = 'Site O some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND site = 'SITE N' AND site_address = 'Site N some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND site = 'SITE M' AND site_address = 'Site M some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND site = 'Site L' AND site_address = 'Site L some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND site = 'Site K' AND site_address = 'Site K some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND site = 'SITE J' AND site_address = 'Site J some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND site = 'Site I' AND site_address = 'Site I some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND site = 'Site H' AND site_address = 'Site H some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND site = 'Site G' AND site_address = 'Site G some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND site = 'Site F' AND site_address = 'Site F some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND site = 'Site E' AND site_address = 'Site E some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND site = 'Site D' AND site_address = 'Site D some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND site = 'Site C' AND site_address = 'Site C some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND site = 'Site B' AND site_address = 'Site B some address' AND status = 1;

-- Delete from organization.eqms_organization_site
DELETE FROM organization.eqms_organization_site WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND site = 'Site A' AND site_address = 'Site A some address' AND status = 1;

-- Delete from organization.eqms_theme
DELETE FROM organization.eqms_theme WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND theme_name = 'Dark' AND status = 1;

-- Delete from organization.eqms_theme
DELETE FROM organization.eqms_theme WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND theme_name = 'Light' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 195 AND country_name = 'Zimbabwe' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 194 AND country_name = 'Zambia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 193 AND country_name = 'Yemen' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 192 AND country_name = 'Vietnam' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 191 AND country_name = 'Venezuela' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 190 AND country_name = 'Vatican City' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 189 AND country_name = 'Vanuatu' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 188 AND country_name = 'Uzbekistan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 187 AND country_name = 'Uruguay' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 186 AND country_name = 'United States of America' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 185 AND country_name = 'United Kingdom' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 184 AND country_name = 'United Arab Emirates' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 183 AND country_name = 'Ukraine' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 182 AND country_name = 'Uganda' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 181 AND country_name = 'Tuvalu' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 180 AND country_name = 'Turkmenistan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 179 AND country_name = 'Turkey' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 178 AND country_name = 'Tunisia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 177 AND country_name = 'Trinidad and Tobago' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 176 AND country_name = 'Tonga' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 175 AND country_name = 'Togo' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 174 AND country_name = 'Timor-Leste' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 173 AND country_name = 'Thailand' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 172 AND country_name = 'Tanzania' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 171 AND country_name = 'Tajikistan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 170 AND country_name = 'Taiwan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 169 AND country_name = 'Syria' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 168 AND country_name = 'Switzerland' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 167 AND country_name = 'Sweden' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 166 AND country_name = 'Suriname' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 165 AND country_name = 'Sudan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 164 AND country_name = 'Sri Lanka' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 163 AND country_name = 'Spain' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 162 AND country_name = 'South Sudan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 161 AND country_name = 'South Korea' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 160 AND country_name = 'South Africa' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 159 AND country_name = 'Somalia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 158 AND country_name = 'Solomon Islands' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 157 AND country_name = 'Slovenia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 156 AND country_name = 'Slovakia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 155 AND country_name = 'Singapore' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 154 AND country_name = 'Sierra Leone' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 153 AND country_name = 'Seychelles' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 152 AND country_name = 'Serbia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 151 AND country_name = 'Senegal' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 150 AND country_name = 'Saudi Arabia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 149 AND country_name = 'Sao Tome and Principe' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 148 AND country_name = 'San Marino' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 147 AND country_name = 'Samoa' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 146 AND country_name = 'Saint Vincent and the Grenadines' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 145 AND country_name = 'Saint Lucia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 144 AND country_name = 'Saint Kitts and Nevis' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 143 AND country_name = 'Rwanda' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 142 AND country_name = 'Russia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 141 AND country_name = 'Romania' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 140 AND country_name = 'Qatar' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 139 AND country_name = 'Portugal' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 138 AND country_name = 'Poland' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 137 AND country_name = 'Philippines' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 136 AND country_name = 'Peru' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 135 AND country_name = 'Paraguay' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 134 AND country_name = 'Papua New Guinea' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 133 AND country_name = 'Panama' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 132 AND country_name = 'Palestine State' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 131 AND country_name = 'Palau' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 130 AND country_name = 'Pakistan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 129 AND country_name = 'Oman' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 128 AND country_name = 'Norway' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 127 AND country_name = 'North Macedonia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 126 AND country_name = 'North Korea' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 125 AND country_name = 'Nigeria' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 124 AND country_name = 'Niger' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 123 AND country_name = 'Nicaragua' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 122 AND country_name = 'New Zealand' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 121 AND country_name = 'Netherlands' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 120 AND country_name = 'Nepal' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 119 AND country_name = 'Nauru' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 118 AND country_name = 'Namibia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 117 AND country_name = 'Myanmar (Burma)' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 116 AND country_name = 'Mozambique' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 115 AND country_name = 'Morocco' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 114 AND country_name = 'Montenegro' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 113 AND country_name = 'Mongolia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 112 AND country_name = 'Monaco' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 111 AND country_name = 'Moldova' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 110 AND country_name = 'Micronesia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 109 AND country_name = 'Mexico' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 108 AND country_name = 'Mauritius' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 107 AND country_name = 'Mauritania' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 106 AND country_name = 'Marshall Islands' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 105 AND country_name = 'Malta' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 104 AND country_name = 'Mali' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 103 AND country_name = 'Maldives' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 102 AND country_name = 'Malaysia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 101 AND country_name = 'Malawi' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 100 AND country_name = 'Madagascar' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 99 AND country_name = 'Luxembourg' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 98 AND country_name = 'Lithuania' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 97 AND country_name = 'Liechtenstein' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 96 AND country_name = 'Libya' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 95 AND country_name = 'Liberia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 94 AND country_name = 'Lesotho' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 93 AND country_name = 'Lebanon' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 92 AND country_name = 'Latvia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 91 AND country_name = 'Laos' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 90 AND country_name = 'Kyrgyzstan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 89 AND country_name = 'Kuwait' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 88 AND country_name = 'Kiribati' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 87 AND country_name = 'Kenya' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 86 AND country_name = 'Kazakhstan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 85 AND country_name = 'Jordan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 84 AND country_name = 'Japan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 83 AND country_name = 'Jamaica' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 82 AND country_name = 'Italy' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 81 AND country_name = 'Israel' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 80 AND country_name = 'Ireland' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 79 AND country_name = 'Iraq' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 78 AND country_name = 'Iran' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 77 AND country_name = 'Indonesia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 76 AND country_name = 'India' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 75 AND country_name = 'Iceland' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 74 AND country_name = 'Hungary' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 73 AND country_name = 'Honduras' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 72 AND country_name = 'Haiti' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 71 AND country_name = 'Guyana' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 70 AND country_name = 'Guinea-Bissau' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 69 AND country_name = 'Guinea' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 68 AND country_name = 'Guatemala' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 67 AND country_name = 'Grenada' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 66 AND country_name = 'Greece' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 65 AND country_name = 'Ghana' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 64 AND country_name = 'Germany' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 63 AND country_name = 'Georgia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 62 AND country_name = 'Gambia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 61 AND country_name = 'Gabon' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 60 AND country_name = 'France' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 59 AND country_name = 'Finland' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 58 AND country_name = 'Fiji' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 57 AND country_name = 'Ethiopia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 56 AND country_name = 'Eswatini' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 55 AND country_name = 'Estonia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 54 AND country_name = 'Eritrea' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 53 AND country_name = 'Equatorial Guinea' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 52 AND country_name = 'El Salvador' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 51 AND country_name = 'Egypt' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 50 AND country_name = 'Ecuador' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 49 AND country_name = 'Dominican Republic' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 48 AND country_name = 'Dominica' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 47 AND country_name = 'Djibouti' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 46 AND country_name = 'Denmark' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 45 AND country_name = 'Democratic Republic of the Congo' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 44 AND country_name = 'Czech Republic' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 43 AND country_name = 'Cyprus' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND country_name = 'Cuba' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND country_name = 'Croatia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND country_name = 'Costa Rica' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND country_name = 'Congo (Congo-Brazzaville)' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND country_name = 'Comoros' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND country_name = 'Colombia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND country_name = 'China' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND country_name = 'Chile' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND country_name = 'Chad' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND country_name = 'Central African Republic' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND country_name = 'Canada' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND country_name = 'Cameroon' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND country_name = 'Cambodia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND country_name = 'Cabo Verde' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND country_name = 'Burundi' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND country_name = 'Burkina Faso' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND country_name = 'Bulgaria' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND country_name = 'Brunei' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND country_name = 'Brazil' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND country_name = 'Botswana' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND country_name = 'Bosnia and Herzegovina' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND country_name = 'Bolivia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND country_name = 'Bhutan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND country_name = 'Benin' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND country_name = 'Belize' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND country_name = 'Belgium' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND country_name = 'Belarus' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND country_name = 'Barbados' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND country_name = 'Bangladesh' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND country_name = 'Bahrain' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND country_name = 'Bahamas' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND country_name = 'Azerbaijan' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND country_name = 'Austria' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND country_name = 'Australia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND country_name = 'Armenia' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND country_name = 'Argentina' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND country_name = 'Antigua and Barbuda' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND country_name = 'Angola' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND country_name = 'Andorra' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND country_name = 'Algeria' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND country_name = 'Albania' AND status = 1;

-- Delete from organization.eqms_reg_country_lk
DELETE FROM organization.eqms_reg_country_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND country_name = 'Afghanistan' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND fk_eqms_product_type_lk_id = 5 AND product_subtype = 'General' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND fk_eqms_product_type_lk_id = 4 AND product_subtype = 'Software' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND fk_eqms_product_type_lk_id = 4 AND product_subtype = 'General' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND fk_eqms_product_type_lk_id = 2 AND product_subtype = 'Software' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND fk_eqms_product_type_lk_id = 2 AND product_subtype = 'Implantable' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND fk_eqms_product_type_lk_id = 2 AND product_subtype = 'Sterile' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND fk_eqms_product_type_lk_id = 2 AND product_subtype = 'Non-Sterile' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND fk_eqms_product_type_lk_id = 1 AND product_subtype = 'Implantable' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND fk_eqms_product_type_lk_id = 1 AND product_subtype = 'Non-Sterile' AND status = 1;

-- Delete from organization.eqms_product_subtype_lk
DELETE FROM organization.eqms_product_subtype_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND fk_eqms_product_type_lk_id = 1 AND product_subtype = 'Sterile' AND status = 1;

-- Delete from organization.eqms_product_type_lk
DELETE FROM organization.eqms_product_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND product_type = 'Provisional Use' AND status = 1;

-- Delete from organization.eqms_product_type_lk
DELETE FROM organization.eqms_product_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND product_type = 'House Use' AND status = 1;

-- Delete from organization.eqms_product_type_lk
DELETE FROM organization.eqms_product_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND product_type = 'Non Active IVD' AND status = 1;

-- Delete from organization.eqms_product_type_lk
DELETE FROM organization.eqms_product_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND product_type = 'Active IVD' AND status = 1;

-- Delete from organization.eqms_product_type_lk
DELETE FROM organization.eqms_product_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND product_type = 'SaMD' AND status = 1;

-- Delete from organization.eqms_product_type_lk
DELETE FROM organization.eqms_product_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND product_type = 'Active Medical Device' AND status = 1;

-- Delete from organization.eqms_product_type_lk
DELETE FROM organization.eqms_product_type_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND product_type = 'Non Active Medical Device' AND status = 1;

-- Delete from organization.eqms_product_group_lk
DELETE FROM organization.eqms_product_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND product_group = 'Critical Care' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND product_category = 'TeleHealth Solution' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND product_category = 'IVD' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND product_category = 'Surgery' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND product_category = 'Psychiatry' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND product_category = 'Audiology' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND product_category = 'Pulmonology' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND product_category = 'Medical Imaging' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND product_category = 'Cardiology' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND product_category = 'Neurology' AND status = 1;

-- Delete from organization.eqms_product_category_lk
DELETE FROM organization.eqms_product_category_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND product_category = 'Critical care' AND status = 1;

-- Delete from organization.eqms_gender_lk
DELETE FROM organization.eqms_gender_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND gender = 'Third Gender' AND status = 1;

-- Delete from organization.eqms_gender_lk
DELETE FROM organization.eqms_gender_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND gender = 'Female' AND status = 1;

-- Delete from organization.eqms_gender_lk
DELETE FROM organization.eqms_gender_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND gender = 'Male' AND status = 1;

-- Delete from organization.eqms_bom_publish_status_lk
DELETE FROM organization.eqms_bom_publish_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND publish_status = 'Draft' AND slug = 'draft';

-- Delete from organization.eqms_bom_publish_status_lk
DELETE FROM organization.eqms_bom_publish_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND publish_status = 'Publish' AND slug = 'published';

-- Delete from organization.eqms_schedule_status_lk
DELETE FROM organization.eqms_schedule_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND schedule_status = 'Not completed' AND slug = 'not_completed';

-- Delete from organization.eqms_schedule_status_lk
DELETE FROM organization.eqms_schedule_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND schedule_status = 'Completed' AND slug = 'completed';

-- Delete from organization.eqms_status_lk
DELETE FROM organization.eqms_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND status_name = 'Inactive' AND slug = 'inactive';

-- Delete from organization.eqms_status_lk
DELETE FROM organization.eqms_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND status_name = 'Active' AND slug = 'active';

-- Delete from organization.eqms_user_roles
DELETE FROM organization.eqms_user_roles WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_user_id = VAR_USER_ID AND fk_eqms_role_lk_ref_id = 1 AND status = 1;

-- Delete from organization.eqms_user_responsibility
DELETE FROM organization.eqms_user_responsibility WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_user_id = VAR_USER_ID AND fk_eqms_responsibility_lk_id = 4 AND status = 1;

-- Delete from organization.eqms_user_service_group
DELETE FROM organization.eqms_user_service_group WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_service_group_lk_id = 1 AND status = 1 AND fk_eqms_user_id = VAR_USER_ID;

-- Delete from organization.eqms_user_contact
DELETE FROM organization.eqms_user_contact WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_user_id = VAR_USER_ID AND contact_type = 'email' AND encrypted_contact = VAR_ENCRYPYED_CONTACT AND status = 1;

-- Delete from organization.eqms_users
DELETE FROM organization.eqms_users WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND fk_eqms_user_status_lk_id = 1 AND external_user_id = VAR_USER_SUB AND version = '1.0' AND fk_eqms_employee_id = VAR_EMPLOYEE_ID;

-- Delete from hrcs.eqms_organization_employee
DELETE FROM hrcs.eqms_organization_employee WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND encrypted_employee_id = VAR_ENCRYPTED_EMPLOYEE_ID AND encrypted_employee_first_name = VAR_EMP_FIRSTNAME AND encrypted_employee_last_name = VAR_EMP_LASTNAME AND status = 1 AND fk_eqms_organization_department_id = 1 AND fk_eqms_employee_status_lk_id = 1 AND hash_employee_number_token = VAR_HASH_EMPLOYEE_ID AND fk_eqms_designation_lk_id = 3;

-- Delete from organization.eqms_employee_status_lk
DELETE FROM organization.eqms_employee_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND employee_status = 'IN PROGRESS' AND slug = 'in_progress';

-- Delete from organization.eqms_employee_status_lk
DELETE FROM organization.eqms_employee_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND employee_status = 'REJECTED' AND slug = 'rejected';

-- Delete from organization.eqms_employee_status_lk
DELETE FROM organization.eqms_employee_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND employee_status = 'APPROVED' AND slug = 'approved';

-- Delete from organization.eqms_responsibility_lk
DELETE FROM organization.eqms_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND responsibility = 'Owner' AND status = 1;

-- Delete from organization.eqms_responsibility_lk
DELETE FROM organization.eqms_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND responsibility = 'Approval' AND status = 1;

-- Delete from organization.eqms_responsibility_lk
DELETE FROM organization.eqms_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND responsibility = 'Review' AND status = 1;

-- Delete from organization.eqms_responsibility_lk
DELETE FROM organization.eqms_responsibility_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND responsibility = 'Creation' AND status = 1;

-- Delete from organization.eqms_designation_lk
DELETE FROM organization.eqms_designation_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND designation = 'CFO' AND status = 1;

-- Delete from organization.eqms_designation_lk
DELETE FROM organization.eqms_designation_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND designation = 'CEO' AND status = 1;

-- Delete from organization.eqms_designation_lk
DELETE FROM organization.eqms_designation_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND designation = 'Service Engineer' AND status = 1;

-- Delete from organization.eqms_designation_lk
DELETE FROM organization.eqms_designation_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND designation = 'Design Engineer' AND status = 1;

-- Delete from organization.eqms_service_group_lk
DELETE FROM organization.eqms_service_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND group_name = 'group 4' AND status = 1;

-- Delete from organization.eqms_service_group_lk
DELETE FROM organization.eqms_service_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND group_name = 'group 3' AND status = 1;

-- Delete from organization.eqms_service_group_lk
DELETE FROM organization.eqms_service_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND group_name = 'group 2' AND status = 1;

-- Delete from organization.eqms_service_group_lk
DELETE FROM organization.eqms_service_group_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND group_name = 'group 1' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND department_name = 'Risk' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND department_name = 'Management' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND department_name = 'Sales' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND department_name = 'Manufacture' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND department_name = 'Delivery' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND department_name = 'HR' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND department_name = 'Infrastructure' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND department_name = 'Customer Support' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND department_name = 'Regulatory' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND department_name = 'Marketing' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND department_name = 'Design' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND department_name = 'Quality Management' AND status = 1;

-- Delete from organization.eqms_organization_department
DELETE FROM organization.eqms_organization_department WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND department_name = 'Purchase' AND status = 1;

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 42 AND role_name = 'Risk Team Head' AND slug = 'risk_team_head' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 41 AND role_name = 'Risk Team Reviewer' AND slug = 'risk_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 40 AND role_name = 'Risk Team Member' AND slug = 'risk_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 39 AND role_name = 'QARA Head' AND slug = 'qara_head' AND status = 0 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 38 AND role_name = 'Management Team Head' AND slug = 'management_team_head' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 37 AND role_name = 'Management Team Reviewer' AND slug = 'management_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 36 AND role_name = 'Management Team Member' AND slug = 'management_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 35 AND role_name = 'Sales Team Head' AND slug = 'sales_team_head' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 34 AND role_name = 'Sales Team Reviewer' AND slug = 'sales_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 33 AND role_name = 'Sales Team Member' AND slug = 'sales_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 32 AND role_name = 'Manufacture Team Head' AND slug = 'manufacture_team_head' AND status = 0 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 31 AND role_name = 'Manufacture Team Reviewer' AND slug = 'manufacture_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 30 AND role_name = 'Manufacture Team Member' AND slug = 'manufacture_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 29 AND role_name = 'Delivery Team Head' AND slug = 'delivery_team_head' AND status = 0 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 28 AND role_name = 'Delivery Team Reviewer' AND slug = 'delivery_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 27 AND role_name = 'Delivery Team Member' AND slug = 'delivery_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 26 AND role_name = 'HR Team Head' AND slug = 'hr_team_head' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 25 AND role_name = 'HR Team Reviewer' AND slug = 'hr_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 24 AND role_name = 'HR Team Member' AND slug = 'hr_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 23 AND role_name = 'Infrastructure Team Head' AND slug = 'infrastructure_team_head' AND status = 0 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 22 AND role_name = 'Infrastructure Team Reviewer' AND slug = 'infrastructure_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 21 AND role_name = 'Infrastructure Team Member' AND slug = 'infrastructure_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 20 AND role_name = 'Customer Support Team Head' AND slug = 'customer_support_team_head' AND status = 0 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 19 AND role_name = 'Customer Support Team Reviewer' AND slug = 'customer_support_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 18 AND role_name = 'Customer Support Team Member' AND slug = 'customer_support_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 17 AND role_name = 'Regulatory Team Head' AND slug = 'regulatory_team_head' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 16 AND role_name = 'Regulatory Team Reviewer' AND slug = 'regulatory_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 15 AND role_name = 'Regulatory Team Member' AND slug = 'regulatory_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 14 AND role_name = 'Marketing Team Head' AND slug = 'marketing_team_head' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 13 AND role_name = 'Marketing Team Reviewer' AND slug = 'marketing_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 12 AND role_name = 'Marketing Team Member' AND slug = 'marketing_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 11 AND role_name = 'Design Team Head' AND slug = 'design_team_head' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 10 AND role_name = 'Design Team Reviewer' AND slug = 'design_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 9 AND role_name = 'Design Team Member' AND slug = 'design_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 8 AND role_name = 'Quality Management Team Head' AND slug = 'quality_management_team_head' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 7 AND role_name = 'Quality Management Team Reviewer' AND slug = 'quality_management_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 6 AND role_name = 'Quality Management Team Member' AND slug = 'quality_management_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 5 AND role_name = 'Purchase Team Head' AND slug = 'purchase_team_head' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND role_name = 'Purchase Team Reviewer' AND slug = 'purchase_team_reviewer' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND role_name = 'Purchase Team Member' AND slug = 'purchase_team_member' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND role_name = 'Others' AND slug = 'others' AND status = 1 AND role_type = 'user_defined';

-- Delete from organization.eqms_roles_lk
DELETE FROM organization.eqms_roles_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND role_name = 'CEO' AND slug = 'ceo' AND status = 1 AND role_type = 'system_defined';

-- Delete from organization.eqms_user_status_lk
DELETE FROM organization.eqms_user_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 4 AND user_status = 'UNLOCK';

-- Delete from organization.eqms_user_status_lk
DELETE FROM organization.eqms_user_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 3 AND user_status = 'LOCK';

-- Delete from organization.eqms_user_status_lk
DELETE FROM organization.eqms_user_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 2 AND user_status = 'PENDING';

-- Delete from organization.eqms_user_status_lk
DELETE FROM organization.eqms_user_status_lk WHERE eqms_tenant_key = VAR_TENANT_KEY AND fk_eqms_organization_id = VAR_ORG_ID AND ref_id = 1 AND user_status = 'ACTIVE';

-- Delete from organization.eqms_organization
DELETE FROM organization.eqms_organization WHERE eqms_tenant_key = VAR_TENANT_KEY AND organization_name = 'Sample_Organization' AND organization_legal_name = 'Sample_Organization' AND font_style = 'times new roman' AND official_address = 'chennai ' AND status = 1 AND version = 1.0;

END $$;
