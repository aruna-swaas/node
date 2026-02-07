-- Permissions for module 'risk_management': Grant access to tables from required module 'hrcs'
-- App users: risk_app_user

GRANT USAGE ON SCHEMA hrcs TO risk_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_history TO risk_app_user;