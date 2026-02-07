-- ============================================================================
-- SALES_APP_USER - User Permissions
-- ============================================================================
-- This file grants schema and table access permissions to sales_app_user
-- Generated from: DATA/z archive/sales_app_user
-- ============================================================================

-- Grant schema usage permissions
GRANT USAGE ON SCHEMA abac TO sales_app_user;
GRANT USAGE ON SCHEMA dms TO sales_app_user;
GRANT USAGE ON SCHEMA hrcs TO sales_app_user;
GRANT USAGE ON SCHEMA organization TO sales_app_user;
GRANT USAGE ON SCHEMA sales TO sales_app_user;

-- Grant table permissions
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form_menu_mapping TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_form_mapping TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_document_template_type_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_category_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_file_tags TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dms.eqms_tags TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_entity_template TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_menu_instance TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_module TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_month_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_nomenclature_category TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_object_project_instance_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_organization_employee TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_product TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_category_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_group_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_subtype_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_type_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_year_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_criteria_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_criteria_lk_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_group_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_group_lk_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_person_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_cus_feedback_person_supporting_files_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_criteria TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_criteria_detail TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_criteria_detail_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_criteria_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_person TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_person_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_response TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_response_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_feedback_supporting_files_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_master TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_customer_master_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_dispatch TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_dispatch_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_dispatch_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_dispatch_supporting_files_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_product TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_product_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_site_requirement TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_delivery_site_requirement_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_feedback_rating_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_feedback_source_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_acknowledgement_supporting_files_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_order_approval_mode_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_priority_lk TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_customer TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_customer_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_product TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_product_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_supporting_files TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_quotation_supporting_files_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_sales_forecast TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_sales_forecast_detail TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_sales_forecast_detail_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_sales_forecast_history TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_sales_forecast_supporting_file TO sales_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE sales.eqms_sales_forecast_supporting_file_history TO sales_app_user;
