-- Permissions for module 'vendor': Grant access to tables from required module 'hrcs'
-- App users: vendor_purchase_app_user

GRANT USAGE ON SCHEMA hrcs TO vendor_purchase_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee_history TO vendor_purchase_app_user;