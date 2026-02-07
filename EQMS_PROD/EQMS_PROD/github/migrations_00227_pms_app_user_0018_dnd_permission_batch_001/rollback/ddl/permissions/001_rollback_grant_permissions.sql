-- Rollback: Revoke permissions from pms_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_design_review_report FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_review_attended_members FROM pms_app_user;

REVOKE USAGE ON SCHEMA dnd FROM pms_app_user;