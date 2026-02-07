-- Rollback: Revoke permissions on tables from required module 'workflow'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header FROM vendor_purchase_app_user;

REVOKE USAGE ON SCHEMA workflow FROM vendor_purchase_app_user;