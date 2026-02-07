-- Permissions for module 'pre_production': Grant access to tables from required module 'organization'
-- App users: production_app_user

GRANT USAGE ON SCHEMA organization TO production_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_bom_type_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_context_types TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_draft_supporting_files TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_form_drafts TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_jig_item TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_jig_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_organization_product TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_component_type_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_quantity_type_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_part_type_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_subtype_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_type_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_variants TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_roles_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_status_lk TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_tools TO production_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_unit_lk TO production_app_user;