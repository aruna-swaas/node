-- Rollback: Revoke permissions from pms_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_review_required_approval_details FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_pnd_review_report FROM pms_app_user;

REVOKE USAGE ON SCHEMA dnd FROM pms_app_user;