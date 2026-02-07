-- ============================================================================
-- Rollback: Batch-wise Permissions for WORKFLOW Module
-- ============================================================================
-- This file revokes permissions granted to: pms_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

-- Note: REVOKE statements are in REVERSE order of GRANT statements
-- (Last granted first) to maintain proper rollback order

-- Revoke permissions on tables in schema from pms_app_user
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_template_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_template FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_task_status FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_template_role_mapper_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_template_role_mapper FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_template_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_template FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_role_mapper_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_role_mapper FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_lk FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_transition_owner_type_lk FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_rule_task_creation FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_rule_action FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_query_selects FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_query_joins FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_query_conditions FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_query FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_parameters FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_comments_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_comments FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_target_audience_type_lk_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journey_role_mapper_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journey_role_mapper FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journey_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journey FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journal_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journal FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_url FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_role_mapper FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_level_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_level FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_department_mapper_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_department_mapper FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_group_tasks_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_group_tasks FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_group_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_group FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_dependencies_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_dependencies FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_entity_subscription_mapper_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_entity_subscription_mapper FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_url_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_url FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_role_mapper_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_role_mapper FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_level_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_level FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_department_mapper_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_department_mapper FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_groups_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_groups FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_group_tasks_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_group_tasks FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_dependencies_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_dependencies FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_members_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_members FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_member_roles_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_member_roles FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_type_task_group_mapping_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_type_task_group_mapping FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_task_group_mapping_history FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_task_group_mapping FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_required_role_type_lk FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_comments_type_lk FROM pms_app_user;
REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_commenter_type_lk FROM pms_app_user;

-- Revoke schema usage from pms_app_user
REVOKE USAGE ON SCHEMA workflow FROM pms_app_user;
