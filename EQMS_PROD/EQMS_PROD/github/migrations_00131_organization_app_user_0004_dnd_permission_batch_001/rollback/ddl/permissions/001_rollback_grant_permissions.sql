-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_feasibility_currency_lk FROM organization_app_user;

REVOKE USAGE ON SCHEMA organization FROM organization_app_user;