-- Permissions for module 'vendor': Grant access to tables from required module 'workflow'
-- App users: vendor_purchase_app_user

GRANT USAGE ON SCHEMA workflow TO vendor_purchase_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header TO vendor_purchase_app_user;