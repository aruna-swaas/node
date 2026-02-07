-- External permissions: Grant access to pms_app_user (from module 'workflow')
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO pms_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stage_order TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stages TO pms_app_user;