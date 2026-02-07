-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_vendor_agreement_checklist_lk FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_read_app_user;