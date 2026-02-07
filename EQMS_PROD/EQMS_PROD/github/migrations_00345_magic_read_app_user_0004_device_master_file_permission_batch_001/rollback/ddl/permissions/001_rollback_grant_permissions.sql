-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'regulation'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_serious_adverse_event FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_regulatory_approvals FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_material_indirect_contact_verification FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_material_indirect_contact FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_material_direct_contact_verification FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_material_direct_contact FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_marketing_device_launch FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_market_clearance FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_field_safety_country_mapping FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_field_safety_corrective_action FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_risk_control_summary FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_labelling FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_executive_summary FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_essential_principles_checklist FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_design_manufacturing_information FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_device_verification_validation FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_device_product_specification FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_device_master_file FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_biocompatible_test_results FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_aspects_predicate_device FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA regulation FROM magic_read_app_user;