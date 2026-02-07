-- Rollback: Revoke permissions from auth_app_user
-- on tables created by module 'organization'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users_history FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_verification FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_status_lk FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_roles FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_pin_history FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_pin FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_login_tracking FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_contact FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_authentication_refresh_token FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_role_menu_activity_access FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_type_lk FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_lk FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_activity_access FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_login_result_lk FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types FROM auth_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_activity_lk FROM auth_app_user;

REVOKE USAGE ON SCHEMA organization FROM auth_app_user;