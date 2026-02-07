-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'organization'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tools FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_selection_lk FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_reg_country_lk FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_category_lk FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_site FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_product FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_jig_lk FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_infrastructure_type_lk FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_image FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_item FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_designation_lk FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA organization FROM magic_read_app_user;