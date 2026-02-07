-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'sales'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation FROM organization_app_user;

REVOKE USAGE ON SCHEMA sales FROM organization_app_user;