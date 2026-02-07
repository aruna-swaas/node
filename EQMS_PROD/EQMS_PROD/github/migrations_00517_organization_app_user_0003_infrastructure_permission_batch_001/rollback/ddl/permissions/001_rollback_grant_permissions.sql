-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'infrastructure'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_installation_report FROM organization_app_user;

REVOKE USAGE ON SCHEMA infrastructure FROM organization_app_user;