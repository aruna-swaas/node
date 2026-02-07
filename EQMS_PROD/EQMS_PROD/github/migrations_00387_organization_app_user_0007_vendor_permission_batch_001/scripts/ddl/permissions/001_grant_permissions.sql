-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'vendor'

GRANT USAGE ON SCHEMA vendor TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_agreement_checklist TO organization_app_user;