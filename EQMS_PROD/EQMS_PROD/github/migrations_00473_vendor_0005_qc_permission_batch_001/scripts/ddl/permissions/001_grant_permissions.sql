-- Permissions for module 'qc': Grant access to tables from required module 'vendor'
-- App users: quality_control_app_user

GRANT USAGE ON SCHEMA dnd TO quality_control_app_user;
GRANT USAGE ON SCHEMA organization TO quality_control_app_user;
GRANT USAGE ON SCHEMA vendor TO quality_control_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_category_subclass_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_category_type_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_subcategory_type_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_type_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_verification_result_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_part_category TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_insp_spec_results TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_inspection_criteria TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_inspection_specification TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_mapper TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors TO quality_control_app_user;