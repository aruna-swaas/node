-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'hrcs'

GRANT USAGE ON SCHEMA hrcs TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_role_definition TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE hrcs.eqms_hr_role_definition_skill_level_mapper TO magic_read_app_user;