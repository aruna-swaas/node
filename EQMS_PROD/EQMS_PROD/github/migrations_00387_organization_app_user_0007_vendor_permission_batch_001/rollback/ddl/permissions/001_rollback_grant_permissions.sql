-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'vendor'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE vendor.eqms_vendor_agreement_checklist FROM organization_app_user;

REVOKE USAGE ON SCHEMA vendor FROM organization_app_user;