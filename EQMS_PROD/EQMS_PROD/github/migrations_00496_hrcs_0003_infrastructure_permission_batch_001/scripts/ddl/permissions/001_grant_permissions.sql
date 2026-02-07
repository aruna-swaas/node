-- Permissions for module 'infrastructure': Grant access to tables from required module 'hrcs'
-- App users: infrastructure_app_user

GRANT USAGE ON SCHEMA hrcs TO infrastructure_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_skill_master TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_history TO infrastructure_app_user;