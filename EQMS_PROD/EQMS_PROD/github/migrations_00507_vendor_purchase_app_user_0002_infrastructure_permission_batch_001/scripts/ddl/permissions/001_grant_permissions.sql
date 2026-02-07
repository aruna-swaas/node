-- External permissions: Grant access to vendor_purchase_app_user (from module 'vendor')
-- on tables created by module 'infrastructure'

GRANT USAGE ON SCHEMA infrastructure TO vendor_purchase_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_request TO vendor_purchase_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_request_history TO vendor_purchase_app_user;