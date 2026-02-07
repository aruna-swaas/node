-- Rollback: Revoke permissions from magic_save_app_user
-- on tables created by module 'organization'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tools FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_reg_country_lk FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_category_lk FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_site FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_product FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_designation_lk FROM magic_save_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types FROM magic_save_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_save_app_user;