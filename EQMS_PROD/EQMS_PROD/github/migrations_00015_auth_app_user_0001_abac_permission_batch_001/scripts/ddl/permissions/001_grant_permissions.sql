-- Global user permissions: Grant access to auth_app_user
-- on tables created by module 'abac'

GRANT USAGE ON SCHEMA abac TO auth_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_action_master_lk TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_action_wf_status_mapping TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_control_actions TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_controls TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_dependencies TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_dependency_type_lk TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_type_lk TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_attributes TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_attributes_history TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_policy_mapper TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy_actions TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy_attributes TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_user_attributes TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_user_attributes_history TO auth_app_user;