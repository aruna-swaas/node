-- Rollback: Revoke permissions on tables from required module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_group_lk_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_group_criteria_lk_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_criteria_supporting_files_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_criteria_supporting_files FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_criteria_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_criteria FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_applicable_group_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_selection_applicable_group FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_other_details FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_mapper FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_group_criteria_mapper_history FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_group_criteria_mapper FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_part_category FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_verification_result_lk FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_selection_group_lk FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_selection_group_criteria_lk FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_requirement_lk FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_subcategory_type_lk FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_category_type_lk FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_category_subclass_lk FROM production_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_lk FROM production_app_user;

REVOKE USAGE ON SCHEMA vendor FROM production_app_user;
REVOKE USAGE ON SCHEMA organization FROM production_app_user;
REVOKE USAGE ON SCHEMA dnd FROM production_app_user;