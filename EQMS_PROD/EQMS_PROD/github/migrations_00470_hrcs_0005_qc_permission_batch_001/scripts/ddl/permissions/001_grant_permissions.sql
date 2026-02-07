-- Permissions for module 'qc': Grant access to tables from required module 'hrcs'
-- App users: quality_control_app_user

GRANT USAGE ON SCHEMA hrcs TO quality_control_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_master TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO quality_control_app_user;