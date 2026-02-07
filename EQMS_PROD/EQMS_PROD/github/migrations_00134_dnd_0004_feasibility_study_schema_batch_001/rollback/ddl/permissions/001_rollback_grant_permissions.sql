-- ============================================================================
-- Rollback: Batch-wise Permissions for DND Module
-- ============================================================================
-- This file revokes permissions granted to: dnd_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from dnd_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_feasibility_type_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_feasibility_decision_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_feasibility_currency_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_decision_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_cost_heading_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_validation_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_validation FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_report_supporting_files_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_report_supporting_files FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_report_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_report FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_design_team_role_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_design_team_role FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_cost_report_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_study_cost_report FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_decision_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_feasibility_decision FROM dnd_app_user;

-- Revoke schema usage from dnd_app_user
REVOKE USAGE ON SCHEMA organization FROM dnd_app_user;
REVOKE USAGE ON SCHEMA dnd FROM dnd_app_user;
