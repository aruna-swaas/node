-- Rollback: Revoke permissions from pms_app_user
-- on tables created by module 'abac'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form FROM pms_app_user;

REVOKE USAGE ON SCHEMA abac FROM pms_app_user;