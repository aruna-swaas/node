-- Global user permissions: Grant access to magic_read_app_user
-- on tables created by module 'dnd'

GRANT USAGE ON SCHEMA dnd TO magic_read_app_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_decision TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_cost_report TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_design_team_role TO magic_read_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_report TO magic_read_app_user;