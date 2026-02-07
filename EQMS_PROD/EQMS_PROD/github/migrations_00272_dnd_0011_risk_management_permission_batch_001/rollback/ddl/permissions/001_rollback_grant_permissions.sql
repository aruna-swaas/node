-- Rollback: Revoke permissions on tables from required module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_product_variants FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_applicable_specification FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification FROM risk_app_user;

REVOKE USAGE ON SCHEMA dnd FROM risk_app_user;