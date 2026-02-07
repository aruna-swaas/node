-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'organization'

GRANT USAGE ON SCHEMA organization TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_designation_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_item TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_image TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_infrastructure_type_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_jig_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_department TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_product TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_site TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_category_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_reg_country_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_selection_lk TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tools TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_users TO magic_read_app_user;