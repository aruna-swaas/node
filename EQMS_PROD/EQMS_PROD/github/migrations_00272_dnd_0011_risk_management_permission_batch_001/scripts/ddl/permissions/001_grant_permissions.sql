-- Permissions for module 'risk_management': Grant access to tables from required module 'dnd'
-- App users: risk_app_user

GRANT USAGE ON SCHEMA dnd TO risk_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_dig_specification TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_applicable_specification TO risk_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_product_variants TO risk_app_user;