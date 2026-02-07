-- Global user permissions: Grant access to auth_app_user
-- on tables created by module 'organization'

GRANT USAGE ON SCHEMA organization TO auth_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_activity_lk TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_login_result_lk TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_activity_access TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_lk TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_type_lk TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_role_menu_activity_access TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_authentication_refresh_token TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_contact TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_login_tracking TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_pin TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_pin_history TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_roles TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_status_lk TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_verification TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users TO auth_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users_history TO auth_app_user;