-- Permissions for module 'risk_management': Grant access to tables from required module 'organization'
-- App users: risk_app_user

GRANT USAGE ON SCHEMA organization TO risk_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_subscription TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_template TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_gender_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_module TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_category TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_selection_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users_history TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_value_acceptability_lk TO risk_app_user;