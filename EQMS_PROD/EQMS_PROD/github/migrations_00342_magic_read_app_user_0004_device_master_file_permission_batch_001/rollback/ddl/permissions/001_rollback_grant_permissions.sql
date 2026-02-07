-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'regulation'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_reg_regulatory_agency_lk FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_read_app_user;