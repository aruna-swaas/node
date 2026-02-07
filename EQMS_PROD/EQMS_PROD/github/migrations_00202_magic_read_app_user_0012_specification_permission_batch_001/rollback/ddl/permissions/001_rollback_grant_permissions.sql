-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_dig_specification_usability_type_mapper FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_read_app_user;