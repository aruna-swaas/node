-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_labelling_packaging_type_lk FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_save_app_user;