-- Permissions for module 'infrastructure': Grant access to tables from required module 'organization'
-- App users: infrastructure_app_user

GRANT USAGE ON SCHEMA organization TO infrastructure_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_subscription TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_template TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_category_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_item TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_image TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_infrastructure_category_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_infrastructure_type_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_module TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_category TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_history TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_schedule_status_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_selection_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tools TO infrastructure_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users TO infrastructure_app_user;