-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'infrastructure'

GRANT USAGE ON SCHEMA infrastructure TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_checklist TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_checklist_items TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE infrastructure.eqms_infrastructure_qualification_test TO magic_read_app_user;