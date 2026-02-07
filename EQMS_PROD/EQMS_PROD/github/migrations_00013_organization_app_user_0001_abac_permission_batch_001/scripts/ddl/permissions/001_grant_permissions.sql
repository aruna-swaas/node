-- External permissions: Grant access to organization_app_user (from module 'organization')
-- on tables created by module 'abac'

GRANT USAGE ON SCHEMA abac TO organization_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_type_lk TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_policy_mapper TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_policy_mapper_history TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy_actions TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy_attributes TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_user_attributes TO organization_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_user_attributes_history TO organization_app_user;