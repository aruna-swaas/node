-- Permissions for module 'pre_production': Grant access to tables from required module 'vendor'
-- App users: production_app_user

GRANT USAGE ON SCHEMA dnd TO production_app_user;
GRANT USAGE ON SCHEMA organization TO production_app_user;
GRANT USAGE ON SCHEMA vendor TO production_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_category_subclass_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_category_type_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_subcategory_type_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_requirement_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_selection_group_criteria_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_selection_group_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_verification_result_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_part_category TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_group_criteria_mapper TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_group_criteria_mapper_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_mapper TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_other_details TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_applicable_group TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_applicable_group_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_criteria TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_criteria_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_criteria_supporting_files TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_criteria_supporting_files_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_group_criteria_lk_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_group_lk_history TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors TO production_app_user;