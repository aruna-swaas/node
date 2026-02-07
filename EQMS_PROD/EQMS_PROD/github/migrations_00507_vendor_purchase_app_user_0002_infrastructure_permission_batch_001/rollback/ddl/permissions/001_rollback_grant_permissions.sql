-- Rollback: Revoke permissions from vendor_purchase_app_user
-- on tables created by module 'infrastructure'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_request_history FROM vendor_purchase_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_request FROM vendor_purchase_app_user;

REVOKE USAGE ON SCHEMA infrastructure FROM vendor_purchase_app_user;