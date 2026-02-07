-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'risk_management'

GRANT USAGE ON SCHEMA organization TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_rm_comparison_operator_lk TO organization_app_user;