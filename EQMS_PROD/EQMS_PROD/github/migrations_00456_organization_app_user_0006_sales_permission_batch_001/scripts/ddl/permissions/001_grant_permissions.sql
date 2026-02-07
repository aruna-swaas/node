-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'sales'

GRANT USAGE ON SCHEMA sales TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback TO organization_app_user;