-- ============================================================================
-- Batch-wise Permissions for WORKFLOW Module
-- ============================================================================
-- This file grants schema and table access permissions to: pms_app_user
-- Generated automatically for this screen's schema batch
-- Schemas and table names come from dump.sql file
-- ============================================================================

GRANT USAGE ON SCHEMA workflow TO pms_app_user;

-- Grant permissions on tables in the current module's schema
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_commenter_type_lk TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_comments_type_lk TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_required_role_type_lk TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_task_group_mapping TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_task_group_mapping_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_type_task_group_mapping TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_form_type_task_group_mapping_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_header_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_instance_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_member_roles TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_member_roles_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_members TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_members_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_dependencies TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_dependencies_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_group_tasks TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_group_tasks_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_groups TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_task_groups_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_department_mapper TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_department_mapper_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_level TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_level_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_role_mapper TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_role_mapper_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_url TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_tasks_url_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_entity_subscription_mapper TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_entity_subscription_mapper_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_dependencies TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_dependencies_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_group TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_group_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_group_tasks TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_task_group_tasks_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_department_mapper TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_department_mapper_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_level TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_level_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_role_mapper TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_type_tasks_url TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journal TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journal_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journey TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journey_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journey_role_mapper TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_project_workflow_journey_role_mapper_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_target_audience_type_lk_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_comments TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_comments_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_parameters TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_query TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_query_conditions TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_query_joins TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_generator_query_selects TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_rule_action TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_task_rule_task_creation TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_transition_owner_type_lk TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_lk TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_role_mapper TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_role_mapper_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_template TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_template_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_template_role_mapper TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_status_transition_template_role_mapper_history TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_task_status TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_template TO pms_app_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE workflow.eqms_workflow_template_history TO pms_app_user;
