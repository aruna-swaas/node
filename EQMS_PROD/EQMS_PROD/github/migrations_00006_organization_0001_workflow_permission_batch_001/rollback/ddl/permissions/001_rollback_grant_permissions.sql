-- Rollback: Revoke permissions on tables from required module 'organization'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_status_lk FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_roles_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_roles FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_contact_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_contact FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_module FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_subscription FROM pms_app_user;

REVOKE USAGE ON SCHEMA organization FROM pms_app_user;