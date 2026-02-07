-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'risk_management'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_rm_comparison_operator_lk FROM organization_app_user;

REVOKE USAGE ON SCHEMA organization FROM organization_app_user;