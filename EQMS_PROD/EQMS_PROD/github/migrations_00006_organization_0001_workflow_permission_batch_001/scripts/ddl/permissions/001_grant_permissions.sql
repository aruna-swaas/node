-- Permissions for module 'workflow': Grant access to tables from required module 'organization'
-- App users: pms_app_user

GRANT USAGE ON SCHEMA organization TO pms_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_subscription TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_module TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_contact TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_contact_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_roles TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_roles_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_status_lk TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users_history TO pms_app_user;