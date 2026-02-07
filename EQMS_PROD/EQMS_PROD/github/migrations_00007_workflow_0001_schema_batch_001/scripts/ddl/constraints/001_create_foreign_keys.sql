ALTER TABLE ONLY workflow.eqms_comments_type_lk
    ADD CONSTRAINT comment_unique_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_form_required_role_type_lk
    ADD CONSTRAINT eqms_form_required_role_type_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_project_type_task_group
    ADD CONSTRAINT eqms_project_type_task_group_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_project_type_tasks
    ADD CONSTRAINT eqms_project_type_tasks_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_project_type
    ADD CONSTRAINT eqms_project_type_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_template
    ADD CONSTRAINT eqms_workflow_status_transition_template_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_workflow_task_status
    ADD CONSTRAINT eqms_workflow_task_status_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_workflow_template
    ADD CONSTRAINT eqms_workflow_template_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_commenter_type_lk
    ADD CONSTRAINT unique_ectl_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_task_generator
    ADD CONSTRAINT unique_etg_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_task_generator_parameters
    ADD CONSTRAINT unique_etgp_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_task_generator_query
    ADD CONSTRAINT unique_etgq_tnt_org_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_task_generator_query_conditions
    ADD CONSTRAINT unique_etgqc_tnt_org_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_task_generator_query_joins
    ADD CONSTRAINT unique_etgqj_tnt_org_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_task_generator_query_selects
    ADD CONSTRAINT unique_etgqs_tnt_org_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_task_rule_action
    ADD CONSTRAINT unique_etr_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_task_rule_task_creation
    ADD CONSTRAINT unique_ettc_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_project_instance_header
    ADD CONSTRAINT unique_tnt_org_project_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_instance_id);

ALTER TABLE ONLY workflow.eqms_workflow_status_lk
    ADD CONSTRAINT unique_tnt_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_transition_owner_type_lk
    ADD CONSTRAINT unique_totl_ten_org_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_commenter_type_lk
    ADD CONSTRAINT fk_ef_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_comments_type_lk
    ADD CONSTRAINT fk_ectl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_form_required_role_type_lk
    ADD CONSTRAINT fk_efrrtl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_form_task_group_mapping
    ADD CONSTRAINT fk_efawsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_form_type_task_group_mapping
    ADD CONSTRAINT fk_efttgm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_instance
    ADD CONSTRAINT fk_epi_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_instance_header
    ADD CONSTRAINT fk_eph_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_instance_header
    ADD CONSTRAINT fk_eph_project_instance_id FOREIGN KEY (fk_eqms_project_instance_id) REFERENCES workflow.eqms_project_instance(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_member_roles
    ADD CONSTRAINT fk_epmr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_member_roles
    ADD CONSTRAINT fk_epmr_role_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_ref_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_members
    ADD CONSTRAINT fk_epm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_members
    ADD CONSTRAINT fk_epm_organization_user_id FOREIGN KEY (fk_eqms_organization_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_members
    ADD CONSTRAINT fk_epm_project_instance_id FOREIGN KEY (fk_eqms_project_instance_id) REFERENCES workflow.eqms_project_instance(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_member_roles
    ADD CONSTRAINT fk_epmr_project_members_id FOREIGN KEY (fk_eqms_project_members_id) REFERENCES workflow.eqms_project_members(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_dependencies
    ADD CONSTRAINT fk_eptd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_group_tasks
    ADD CONSTRAINT fk_epttgt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_groups
    ADD CONSTRAINT fk_eptg_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks
    ADD CONSTRAINT fk_eptt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_department_mapper
    ADD CONSTRAINT fk_eptdm_organization_department_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id) REFERENCES organization.eqms_organization_department(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_department_mapper
    ADD CONSTRAINT fk_eptdm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_level
    ADD CONSTRAINT fk_eptl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_role_mapper
    ADD CONSTRAINT fk_eptrm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_role_mapper
    ADD CONSTRAINT fk_eptrm_role_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_ref_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_url
    ADD CONSTRAINT fk_eptu_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type
    ADD CONSTRAINT fk_ept_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_entity_subscription_mapper
    ADD CONSTRAINT fk_eptesm_entity_subscription_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_subscription_id) REFERENCES organization.eqms_entity_subscription(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_entity_subscription_mapper
    ADD CONSTRAINT fk_eptesm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_dependencies
    ADD CONSTRAINT fk_eptd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_group
    ADD CONSTRAINT fk_epttg_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_group_tasks
    ADD CONSTRAINT fk_epttgt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks
    ADD CONSTRAINT fk_eptt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_department_mapper
    ADD CONSTRAINT fk_eptgt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_department_mapper
    ADD CONSTRAINT fk_epttdm_organization_department_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_department_id) REFERENCES organization.eqms_organization_department(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_level
    ADD CONSTRAINT fk_epttl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_role_mapper
    ADD CONSTRAINT fk_epttrm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_role_mapper
    ADD CONSTRAINT fk_epttrm_role_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_ref_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_url
    ADD CONSTRAINT fk_epttu_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journal
    ADD CONSTRAINT fk_epwj_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journal
    ADD CONSTRAINT fk_epwj_role_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_ref_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journal
    ADD CONSTRAINT fk_epwj_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journal
    ADD CONSTRAINT fk_epwj_project_instance_id FOREIGN KEY (fk_eqms_project_instance_id) REFERENCES workflow.eqms_project_instance(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journal
    ADD CONSTRAINT fk_epwj_project_member_role_id FOREIGN KEY (fk_eqms_project_member_role_id) REFERENCES workflow.eqms_project_member_roles(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey
    ADD CONSTRAINT fk_epwj_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey_role_mapper
    ADD CONSTRAINT fk_epwjrm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey_role_mapper
    ADD CONSTRAINT fk_epwjrm_role_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_ref_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey_role_mapper
    ADD CONSTRAINT fk_epwjrm_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey_role_mapper
    ADD CONSTRAINT fk_epwjrm_project_member_role_id FOREIGN KEY (fk_eqms_project_member_role_id) REFERENCES workflow.eqms_project_member_roles(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_comments
    ADD CONSTRAINT fk_etc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_comments
    ADD CONSTRAINT fk_etc_role_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_comments
    ADD CONSTRAINT fk_etc_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_comments
    ADD CONSTRAINT fk_etc_commenter_type_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_commenter_type_lk_ref_id) REFERENCES workflow.eqms_commenter_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_comments
    ADD CONSTRAINT fk_etc_comments_type_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_comment_type_lk_ref_id) REFERENCES workflow.eqms_comments_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_comments
    ADD CONSTRAINT fk_etc_project_member_roles_id FOREIGN KEY (fk_eqms_project_member_roles_id) REFERENCES workflow.eqms_project_member_roles(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator
    ADD CONSTRAINT fk_etg_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_parameters
    ADD CONSTRAINT fk_etgp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_query
    ADD CONSTRAINT fk_etgq_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_query_conditions
    ADD CONSTRAINT fk_etgqc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_query_joins
    ADD CONSTRAINT fk_etgqj_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_query_selects
    ADD CONSTRAINT fk_etgqs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_rule_action
    ADD CONSTRAINT fk_etr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_dependencies
    ADD CONSTRAINT fk_eptd_task_rule_action_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_rule_action_id) REFERENCES workflow.eqms_task_rule_action(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_dependencies
    ADD CONSTRAINT fk_eptd_trigger_action_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_trigger_action_id) REFERENCES workflow.eqms_task_rule_action(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_dependencies
    ADD CONSTRAINT fk_epttd_trigger_action_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_trigger_action_id) REFERENCES workflow.eqms_task_rule_action(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey
    ADD CONSTRAINT fk_epwj_task_rule_action_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_rule_action_id) REFERENCES workflow.eqms_task_rule_action(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_rule_task_creation
    ADD CONSTRAINT fk_ettc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_rule_task_creation
    ADD CONSTRAINT fk_ettc_task_rule_action_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_rule_action_id) REFERENCES workflow.eqms_task_rule_action(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_transition_owner_type_lk
    ADD CONSTRAINT fk_etot_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow
    ADD CONSTRAINT fk_ew_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_lk
    ADD CONSTRAINT fk_wsl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_groups
    ADD CONSTRAINT fk_eptg_workflow_status_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_ref_id) REFERENCES workflow.eqms_workflow_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow
    ADD CONSTRAINT fk_ew_workflow_status_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_ref_id) REFERENCES workflow.eqms_workflow_status_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition
    ADD CONSTRAINT fk_epwt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition
    ADD CONSTRAINT fk_ewst_form_required_role_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_required_role_type_lk_id) REFERENCES workflow.eqms_form_required_role_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition
    ADD CONSTRAINT fk_ewst_transition_owner_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_transition_owner_type_lk_id) REFERENCES workflow.eqms_transition_owner_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_role_mapper
    ADD CONSTRAINT fk_ewstrm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_role_mapper
    ADD CONSTRAINT fk_ewstrm_role_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_ref_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_template
    ADD CONSTRAINT fk_ett_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_template
    ADD CONSTRAINT fk_ewst_transition_owner_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_transition_owner_type_lk_id) REFERENCES workflow.eqms_transition_owner_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_template_role_mapper
    ADD CONSTRAINT fk_ewsttrm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_template_role_mapper
    ADD CONSTRAINT fk_ewsttrm_role_lk_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_ref_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_task_status
    ADD CONSTRAINT fk_ewtsl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_template
    ADD CONSTRAINT fk_ewt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type
    ADD CONSTRAINT fk_ept_workflow_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id) REFERENCES workflow.eqms_workflow_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_instance_header
    ADD CONSTRAINT fk_eph_project_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id) REFERENCES workflow.eqms_project_type(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_entity_subscription_mapper
    ADD CONSTRAINT fk_eptesm_project_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id) REFERENCES workflow.eqms_project_type(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_group
    ADD CONSTRAINT fk_epttg_project_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id) REFERENCES workflow.eqms_project_type(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_form_type_task_group_mapping
    ADD CONSTRAINT fk_efttgm_project_type_task_group_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id) REFERENCES workflow.eqms_project_type_task_group(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_group_tasks
    ADD CONSTRAINT fk_etgt_project_type_task_group_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_task_group_id) REFERENCES workflow.eqms_project_type_task_group(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks
    ADD CONSTRAINT fk_eptt_project_type_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_id) REFERENCES workflow.eqms_project_type(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow
    ADD CONSTRAINT fk_ew_workflow_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id) REFERENCES workflow.eqms_workflow_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_instance_header
    ADD CONSTRAINT fk_eph_workflow_id FOREIGN KEY (fk_eqms_workflow_id) REFERENCES workflow.eqms_workflow(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_dependencies
    ADD CONSTRAINT fk_eptd_project_header_id FOREIGN KEY (fk_eqms_project_instance_header_id) REFERENCES workflow.eqms_project_instance_header(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_groups
    ADD CONSTRAINT fk_eptg_project_instance_header_id FOREIGN KEY (fk_eqms_project_instance_header_id) REFERENCES workflow.eqms_project_instance_header(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_form_task_group_mapping
    ADD CONSTRAINT fk_efawsm_project_task_group_id FOREIGN KEY (fk_eqms_project_task_group_id) REFERENCES workflow.eqms_project_task_groups(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_group_tasks
    ADD CONSTRAINT fk_eptgt_project_task_group_id FOREIGN KEY (fk_eqms_project_task_group_id) REFERENCES workflow.eqms_project_task_groups(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks
    ADD CONSTRAINT fk_eptt_project_instance_header_id FOREIGN KEY (fk_eqms_project_instance_header_id) REFERENCES workflow.eqms_project_instance_header(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_department_mapper
    ADD CONSTRAINT fk_eptdm_project_header_id FOREIGN KEY (fk_eqms_project_instance_header_id) REFERENCES workflow.eqms_project_instance_header(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_role_mapper
    ADD CONSTRAINT fk_eptrm_project_header_id FOREIGN KEY (fk_eqms_project_instance_header_id) REFERENCES workflow.eqms_project_instance_header(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey
    ADD CONSTRAINT fk_epwjs_project_header_id FOREIGN KEY (fk_eqms_project_instance_header_id) REFERENCES workflow.eqms_project_instance_header(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition
    ADD CONSTRAINT fk_epwt_workflow_id FOREIGN KEY (fk_eqms_workflow_id) REFERENCES workflow.eqms_workflow(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_template
    ADD CONSTRAINT fk_organization_workflow_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_organization_workflow_template_id) REFERENCES workflow.eqms_workflow_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_task_status
    ADD CONSTRAINT fk_ewtsl_workflow_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_template_id) REFERENCES workflow.eqms_workflow_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_dependencies
    ADD CONSTRAINT fk_eptd_trigger_workflow_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_trigger_workflow_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks
    ADD CONSTRAINT fk_ept_eqms_workflow_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks
    ADD CONSTRAINT fk_eptl_default_workflow_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_default_workflow_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_dependencies
    ADD CONSTRAINT fk_eptd_trigger_workflow_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_trigger_workflow_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks
    ADD CONSTRAINT fk_eptl_default_workflow_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_default_workflow_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks
    ADD CONSTRAINT fk_eptt_eqms_workflow_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks
    ADD CONSTRAINT fk_ept_tasks_project_type_tasks_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_tasks_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_dependencies
    ADD CONSTRAINT fk_eptd_dependent_project_tasks_id FOREIGN KEY (fk_eqms_dependent_project_tasks_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_dependencies
    ADD CONSTRAINT fk_eptd_project_tasks_id FOREIGN KEY (fk_eqms_project_tasks_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_task_group_tasks
    ADD CONSTRAINT fk_eptgt_project_task_id FOREIGN KEY (fk_eqms_project_task_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_department_mapper
    ADD CONSTRAINT fk_eptdm_project_tasks_id FOREIGN KEY (fk_eqms_project_tasks_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_level
    ADD CONSTRAINT fk_eptl_child_task_id FOREIGN KEY (fk_eqms_child_task_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_level
    ADD CONSTRAINT fk_eptl_parent_task_id FOREIGN KEY (fk_eqms_parent_task_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_role_mapper
    ADD CONSTRAINT fk_eptrm_project_tasks_id FOREIGN KEY (fk_eqms_project_tasks_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_tasks_url
    ADD CONSTRAINT fk_eptu_project_tasks_id FOREIGN KEY (fk_eqms_project_tasks_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_dependencies
    ADD CONSTRAINT fk_eptd_dependent_project_type_tasks_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_dependent_project_type_tasks_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_dependencies
    ADD CONSTRAINT fk_eptd_project_type_tasks_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_tasks_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_task_group_tasks
    ADD CONSTRAINT fk_etgt_project_type_task_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_tasks_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_department_mapper
    ADD CONSTRAINT fk_epttdm_project_tasks_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_tasks_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_level
    ADD CONSTRAINT fk_epttl_child_task_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_child_task_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_level
    ADD CONSTRAINT fk_epttl_parent_task_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_parent_task_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_role_mapper
    ADD CONSTRAINT fk_epttrm_project_tasks_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_tasks_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_type_tasks_url
    ADD CONSTRAINT fk_epttu_project_type_tasks_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_tasks_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY workflow.eqms_project_workflow_journal
    ADD CONSTRAINT fk_epwj_new_project_workflow_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_new_project_workflow_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journal
    ADD CONSTRAINT fk_epwj_old_project_workflow_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_old_project_workflow_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journal
    ADD CONSTRAINT fk_epwj_project_type_tasks_id FOREIGN KEY (fk_eqms_project_tasks_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey
    ADD CONSTRAINT fk_epwjh_project_task_id FOREIGN KEY (fk_eqms_project_task_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey_role_mapper
    ADD CONSTRAINT fk_epwjrm_current_wf_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_current_workflow_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_project_workflow_journey_role_mapper
    ADD CONSTRAINT fk_epwjrm_project_workflow_journey_id FOREIGN KEY (fk_eqms_project_workflow_journey_id) REFERENCES workflow.eqms_project_workflow_journey(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_comments
    ADD CONSTRAINT fk_etc_project_tasks_id FOREIGN KEY (fk_eqms_project_tasks_id) REFERENCES workflow.eqms_project_tasks(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_rule_task_creation
    ADD CONSTRAINT fk_ettc_project_type_tasks_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_project_type_tasks_id) REFERENCES workflow.eqms_project_type_tasks(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator
    ADD CONSTRAINT fk_etg_task_rule_task_creation_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_rule_task_creation_id) REFERENCES workflow.eqms_task_rule_task_creation(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_parameters
    ADD CONSTRAINT fk_etgp_task_generator_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_generator_id) REFERENCES workflow.eqms_task_generator(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_query
    ADD CONSTRAINT fk_etgq_task_generator_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_generator_id) REFERENCES workflow.eqms_task_generator(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_query_conditions
    ADD CONSTRAINT fk_etgqc_query_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_generator_query_id) REFERENCES workflow.eqms_task_generator_query(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_query_joins
    ADD CONSTRAINT fk_etgqj_query_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_generator_query_id) REFERENCES workflow.eqms_task_generator_query(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_query_conditions
    ADD CONSTRAINT fk_etgqc_query_join_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_generator_query_join_id) REFERENCES workflow.eqms_task_generator_query_joins(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_task_generator_query_selects
    ADD CONSTRAINT fk_etgqs_query_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_task_generator_query_id) REFERENCES workflow.eqms_task_generator_query(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition
    ADD CONSTRAINT fk_epwt_workflow_new_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_new_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition
    ADD CONSTRAINT fk_epwt_workflow_old_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_old_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_role_mapper
    ADD CONSTRAINT fk_ewstrm_workflow_status_transition_id FOREIGN KEY (fk_eqms_workflow_status_transition_id) REFERENCES workflow.eqms_workflow_status_transition(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_template
    ADD CONSTRAINT fk_ett_workflow_new_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_new_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_template
    ADD CONSTRAINT fk_ett_workflow_old_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_old_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY workflow.eqms_workflow_status_transition_template_role_mapper
    ADD CONSTRAINT fk_ewsttrm_workflow_status_transition_template_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_status_transition_template_id) REFERENCES workflow.eqms_workflow_status_transition_template(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

