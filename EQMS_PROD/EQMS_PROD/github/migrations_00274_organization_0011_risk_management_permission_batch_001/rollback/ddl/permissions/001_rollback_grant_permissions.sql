-- Rollback: Revoke permissions on tables from required module 'organization'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_value_acceptability_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_selection_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance_history FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_category FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_module FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_gender_lk FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_template FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_subscription FROM risk_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types FROM risk_app_user;

REVOKE USAGE ON SCHEMA organization FROM risk_app_user;