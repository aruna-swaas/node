-- ============================================================================
-- Rollback: Batch-wise Permissions for ORGANIZATION Module
-- ============================================================================
-- This file revokes permissions granted to: organization_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from organization_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_year_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_value_acceptability_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_verification_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_verification FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_timezone_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_timezone FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_status_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_service_group_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_service_group FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_roles_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_roles FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_responsibility_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_responsibility FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_profile_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_profile FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_preference_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_preference FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_pin_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_pin FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_login_tracking_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_login_tracking FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_language_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_language FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_contact_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_contact FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_user_authentication_refresh_token FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_unit_lk_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_unit_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tools_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tools FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tool_item_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tool_item FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tool_category_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_timezones FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_theme FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_service_group_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_selection_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_schedule_status_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_role_menu_activity_access FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_responsibility_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_reg_country_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_subtype_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_group_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_category_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_quantity_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_component_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_site_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_site FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_role_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_product_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_product FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_nomenclature_part_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_nomenclature_part FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_nomenclature_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_nomenclature FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_variable_metadata_mapper_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_variable_metadata_mapper FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_sequence_defs FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_sequence_counters_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_sequence_counters FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_part_variable_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_part_variable FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_part_type FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_part_date_formats FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_object_type_metadata_mapper_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_object_type_metadata_mapper FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_name_parts FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_mapping_joins FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_mapping_conditions FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_join_type FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_delimiter FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_category FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_month_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_module FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_object_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_object FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_activity_access FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_login_result_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_languages FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_jig_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_jig_item FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_infrastructure_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_infrastructure_category_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_image_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_image FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_gender_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_item FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_category_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_template FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_subscription_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_subscription FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_nomenclature_mappings FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_employee_status_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_designation_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types_history FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_bom_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_bom_publish_status_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_assembly_type_lk FROM organization_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_activity_lk FROM organization_app_user;

-- Revoke schema usage from organization_app_user
REVOKE USAGE ON SCHEMA organization FROM organization_app_user;
