-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'qc'

GRANT USAGE ON SCHEMA qc TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE qc.eqms_goods_inward TO organization_app_user;