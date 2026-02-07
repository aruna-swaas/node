-- Rollback: Revoke permissions from magic_read_app_user
-- on tables created by module 'dnd'

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_report FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_design_team_role FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_cost_report FROM magic_read_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_decision FROM magic_read_app_user;

REVOKE USAGE ON SCHEMA dnd FROM magic_read_app_user;