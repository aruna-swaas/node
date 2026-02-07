-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'vendor'

GRANT USAGE ON SCHEMA vendor TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_agreement_checklist_status TO magic_save_app_user;