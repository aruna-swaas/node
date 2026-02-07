-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'regulation'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_conformity_declaration FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA regulation FROM magic_read_app_user;