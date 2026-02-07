-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'regulation'

GRANT USAGE ON SCHEMA regulation TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_aspects_predicate_device TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_biocompatible_test_results TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_device_master_file TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_device_product_specification TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_device_verification_validation TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_design_manufacturing_information TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_essential_principles_checklist TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_executive_summary TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_labelling TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_dmf_risk_control_summary TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_field_safety_corrective_action TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_field_safety_country_mapping TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_market_clearance TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_marketing_device_launch TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_material_direct_contact TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_material_direct_contact_verification TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_material_indirect_contact TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_material_indirect_contact_verification TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_regulatory_approvals TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_serious_adverse_event TO magic_read_app_user;