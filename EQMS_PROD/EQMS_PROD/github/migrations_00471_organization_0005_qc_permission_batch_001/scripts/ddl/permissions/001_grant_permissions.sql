-- Permissions for module 'qc': Grant access to tables from required module 'organization'
-- App users: quality_control_app_user

GRANT USAGE ON SCHEMA organization TO quality_control_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_template TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_item TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_module TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_category TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance_history TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_component_type_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_quantity_type_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_selection_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk TO quality_control_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users TO quality_control_app_user;