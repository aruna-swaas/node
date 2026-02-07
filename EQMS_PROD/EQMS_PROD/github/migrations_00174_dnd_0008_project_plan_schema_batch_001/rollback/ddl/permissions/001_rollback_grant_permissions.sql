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
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_default_design_transfer_document FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_dnd_document_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_transfer_checklist_template_mapper_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_transfer_checklist_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_stage_type_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_stage_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_stage_item_lk FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_stage_activity_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_stage_activity FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_verification_method_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_verification_method FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_validation_method_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_validation_method FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_tool_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_tool FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_stagewise_deliverable_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_stagewise_deliverable FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_schedule_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_schedule FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_procedures_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_procedures FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_procedure_reference_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_procedure_reference FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_markets_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_markets FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_equipment_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_equipment FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_design_review_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_design_review FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_transfer_plan_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_transfer_plan FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_stages_mapper_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_stages_mapper FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_other_member_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_other_member FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_member_selection_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_member_selection FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_member_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_member FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stages_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stages FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stage_order_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stage_order FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_applicability_history FROM dnd_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_applicability FROM dnd_app_user;

-- Revoke schema usage from dnd_app_user
REVOKE USAGE ON SCHEMA organization FROM dnd_app_user;
REVOKE USAGE ON SCHEMA dnd FROM dnd_app_user;
