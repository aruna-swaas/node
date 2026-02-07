-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_agreement_checklist_status FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA vendor FROM magic_read_app_user;