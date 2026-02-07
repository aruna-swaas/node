-- External permissions: Grant access to pms_app_user (from module 'workflow')
-- on tables created by module 'abac'

GRANT USAGE ON SCHEMA abac TO pms_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_form TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE abac.eqms_object_context TO pms_app_user;