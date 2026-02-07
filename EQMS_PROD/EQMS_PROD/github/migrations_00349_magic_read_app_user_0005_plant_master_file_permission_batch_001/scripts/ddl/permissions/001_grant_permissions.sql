-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'regulation'

GRANT USAGE ON SCHEMA regulation TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_department_user_count TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_plant_master_file TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_contract_activities TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_documentation TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_equipment TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_facility_premises TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_general_information TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_handling_complaints TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_internal_audit TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_personnel TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_production TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_quality_assurance TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_sanitation TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_pmf_storage TO magic_read_app_user;