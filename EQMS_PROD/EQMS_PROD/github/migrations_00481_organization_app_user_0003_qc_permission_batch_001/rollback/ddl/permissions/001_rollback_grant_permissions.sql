-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'qc'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_goods_inward FROM organization_app_user;

REVOKE USAGE ON SCHEMA qc FROM organization_app_user;