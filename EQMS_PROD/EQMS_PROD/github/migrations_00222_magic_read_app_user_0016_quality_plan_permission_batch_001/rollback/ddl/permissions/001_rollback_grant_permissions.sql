-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_quality_plan FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_quality_objective FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA dnd FROM magic_read_app_user;