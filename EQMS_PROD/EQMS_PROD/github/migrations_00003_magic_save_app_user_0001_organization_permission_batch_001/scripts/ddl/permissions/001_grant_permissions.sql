-- Global user permissions: Grant access to magic_save_app_user
-- on tables created by module 'organization'

GRANT USAGE ON SCHEMA organization TO magic_save_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_designation_lk TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_product TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_site TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_category_lk TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_reg_country_lk TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tools TO magic_save_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users TO magic_save_app_user;