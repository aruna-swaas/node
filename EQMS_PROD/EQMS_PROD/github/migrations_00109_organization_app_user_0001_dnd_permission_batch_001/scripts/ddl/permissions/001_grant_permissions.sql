-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_product_group_lk_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project TO organization_app_user;