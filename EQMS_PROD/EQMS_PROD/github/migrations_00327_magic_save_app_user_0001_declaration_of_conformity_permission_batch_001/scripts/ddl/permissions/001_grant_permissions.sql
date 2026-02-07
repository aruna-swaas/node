-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'regulation'

GRANT USAGE ON SCHEMA regulation TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE regulation.eqms_reg_conformity_declaration TO magic_save_app_user;