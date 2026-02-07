-- Rollback: Revoke permissions from pms_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_stage_lk FROM pms_app_user;

REVOKE USAGE ON SCHEMA organization FROM pms_app_user;