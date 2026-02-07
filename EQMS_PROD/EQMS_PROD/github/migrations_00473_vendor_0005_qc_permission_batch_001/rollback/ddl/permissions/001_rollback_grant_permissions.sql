-- Rollback: Revoke permissions on tables from required module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendors FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_part_category_mapper FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_inspection_specification FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_inspection_criteria FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_sample_order_insp_spec_results FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_part_category FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_verification_result_lk FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_type_lk FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_subcategory_type_lk FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_category_type_lk FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_category_subclass_lk FROM quality_control_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_part_lk FROM quality_control_app_user;

REVOKE USAGE ON SCHEMA vendor FROM quality_control_app_user;
REVOKE USAGE ON SCHEMA organization FROM quality_control_app_user;
REVOKE USAGE ON SCHEMA dnd FROM quality_control_app_user;