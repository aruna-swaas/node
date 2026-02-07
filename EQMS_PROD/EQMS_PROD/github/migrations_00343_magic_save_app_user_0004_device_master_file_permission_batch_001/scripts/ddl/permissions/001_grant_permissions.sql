-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'regulation'

GRANT USAGE ON SCHEMA organization TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_reg_regulatory_agency_lk TO magic_save_app_user;