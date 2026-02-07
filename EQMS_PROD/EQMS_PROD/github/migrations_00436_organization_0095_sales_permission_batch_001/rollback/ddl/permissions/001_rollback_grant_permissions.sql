-- Rollback: Revoke permissions on tables from required module 'organization'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_year_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_type_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_subtype_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_group_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_category_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_product FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance_history FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_category FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_month_lk FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_module FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_template FROM sales_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types FROM sales_app_user;

REVOKE USAGE ON SCHEMA organization FROM sales_app_user;