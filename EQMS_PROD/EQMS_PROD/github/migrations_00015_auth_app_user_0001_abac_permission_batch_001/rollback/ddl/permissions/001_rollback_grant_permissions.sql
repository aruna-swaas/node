-- Rollback: Revoke permissions from auth_app_user
-- on tables created by module 'abac'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_user_attributes_history FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_user_attributes FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy_attributes FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy_actions FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_policy_mapper FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_attributes_history FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_attributes FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_type_lk FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_dependency_type_lk FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_dependencies FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_controls FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_control_actions FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_action_wf_status_mapping FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_action_master_lk FROM auth_app_user;

REVOKE USAGE ON SCHEMA abac FROM auth_app_user;