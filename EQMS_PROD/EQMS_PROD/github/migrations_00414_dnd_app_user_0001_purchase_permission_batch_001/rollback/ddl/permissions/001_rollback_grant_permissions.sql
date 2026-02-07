-- Rollback: Revoke permissions from dnd_app_user
-- on tables created by module 'purchase'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_purchase_type_lk FROM dnd_app_user;

REVOKE USAGE ON SCHEMA organization FROM dnd_app_user;