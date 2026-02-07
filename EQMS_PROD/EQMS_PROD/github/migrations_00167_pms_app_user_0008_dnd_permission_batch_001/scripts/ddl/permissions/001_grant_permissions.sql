-- External permissions: Grant access to pms_app_user (from module 'workflow')
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA organization TO pms_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_stage_lk TO pms_app_user;