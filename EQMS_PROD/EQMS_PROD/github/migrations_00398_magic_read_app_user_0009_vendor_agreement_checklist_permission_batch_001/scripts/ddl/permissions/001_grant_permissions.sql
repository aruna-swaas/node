-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'vendor'

GRANT USAGE ON SCHEMA organization TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_agreement_checklist_lk TO magic_read_app_user;