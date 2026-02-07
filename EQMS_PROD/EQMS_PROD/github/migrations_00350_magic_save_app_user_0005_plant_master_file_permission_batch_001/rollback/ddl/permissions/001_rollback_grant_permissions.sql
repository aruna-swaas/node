-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'regulation'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_storage FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_sanitation FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_quality_assurance FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_production FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_personnel FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_internal_audit FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_handling_complaints FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_general_information FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_facility_premises FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_equipment FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_documentation FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_contract_activities FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_plant_master_file FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_department_user_count FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA regulation FROM magic_save_app_user;