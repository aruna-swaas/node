-- ============================================================================
-- Batch-wise Permissions for DND Module
-- ============================================================================
-- This file grants schema and table access permissions to: dnd_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA dnd TO dnd_app_user;
GRANT USAGE ON SCHEMA organization TO dnd_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_applicability TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_design_transfer_applicability_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_execution_stage_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stage_order TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stage_order_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stages TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_build_stages_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_member TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_member_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_member_selection TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_member_selection_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_other_member TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_other_member_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_stages_mapper TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_team_stages_mapper_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_transfer_plan TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_design_transfer_plan_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_design_review TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_design_review_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_equipment TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_equipment_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_markets TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_markets_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_procedure_reference TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_procedure_reference_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_procedures TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_procedures_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_schedule TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_schedule_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_stagewise_deliverable TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_stagewise_deliverable_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_tool TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_tool_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_validation_method TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_validation_method_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_verification_method TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_plan_verification_method_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_stage_activity TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dnd.eqms_project_stage_activity_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_stage_item_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_stage_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_stage_type_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_transfer_checklist_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_design_transfer_checklist_template_mapper_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_dnd_document_lk TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_equipment_lk_history TO dnd_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE organization.eqms_product_default_design_transfer_document TO dnd_app_user;
