-- Rollback: Revoke permissions from organization_app_user
-- on tables created by module 'abac'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_user_attributes_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_user_attributes FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy_attributes FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy_actions FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_policy FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_policy_mapper_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_policy_mapper FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form FROM organization_app_user;

REVOKE USAGE ON SCHEMA abac FROM organization_app_user;