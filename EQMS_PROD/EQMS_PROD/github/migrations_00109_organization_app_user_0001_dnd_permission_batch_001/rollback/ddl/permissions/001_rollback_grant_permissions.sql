-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_group_lk_history FROM organization_app_user;

REVOKE USAGE ON SCHEMA dnd FROM organization_app_user;