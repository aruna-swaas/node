-- External permissions: Grant access to pms_app_user (from module 'workflow')
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO pms_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_need_document TO pms_app_user;