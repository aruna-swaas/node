ALTER TABLE ONLY abac.eqms_action_master_lk
    ADD CONSTRAINT unique_tnt_org_eaml_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY abac.eqms_form
    ADD CONSTRAINT unique_tnt_org_ef_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY abac.eqms_form_controls
    ADD CONSTRAINT unique_tnt_org_efc_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY abac.eqms_form_dependency_type_lk
    ADD CONSTRAINT unique_tnt_org_efdtl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY abac.eqms_form_type_lk
    ADD CONSTRAINT unique_tnt_org_eftl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY abac.eqms_object
    ADD CONSTRAINT unique_tnt_org_eo_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY abac.eqms_policy
    ADD CONSTRAINT unique_tnt_org_ep_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY abac.eqms_action_master_lk
    ADD CONSTRAINT fk_eaml_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form
    ADD CONSTRAINT fk_ef_entity_subscription_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_entity_subscription_id) REFERENCES organization.eqms_entity_subscription(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form
    ADD CONSTRAINT fk_ef_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_action_wf_status_mapping
    ADD CONSTRAINT fk_efawsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_action_wf_status_mapping
    ADD CONSTRAINT fk_efawsm_workflow_task_status_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_workflow_task_status_id) REFERENCES workflow.eqms_workflow_task_status(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_control_actions
    ADD CONSTRAINT fk_efca_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_controls
    ADD CONSTRAINT fk_efc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_dependencies
    ADD CONSTRAINT fk_efd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_dependency_type_lk
    ADD CONSTRAINT fk_efdtl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_dependencies
    ADD CONSTRAINT fk_efd_form_dependency_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_dependency_type_lk_id) REFERENCES abac.eqms_form_dependency_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_menu_mapping
    ADD CONSTRAINT fk_efmm_menu_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_menu_lk_id) REFERENCES organization.eqms_menu_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_menu_mapping
    ADD CONSTRAINT fk_efmm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_type_lk
    ADD CONSTRAINT fk_eftl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form
    ADD CONSTRAINT fk_ef_form_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_type_lk_id) REFERENCES abac.eqms_form_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_controls
    ADD CONSTRAINT fk_efc_form_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id) REFERENCES abac.eqms_form(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_action_wf_status_mapping
    ADD CONSTRAINT fk_efawsm_form_controls_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id) REFERENCES abac.eqms_form_controls(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_control_actions
    ADD CONSTRAINT fk_efca_form_controls_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_controls_id) REFERENCES abac.eqms_form_controls(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_dependencies
    ADD CONSTRAINT fk_efd_dependent_form_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_dependent_form_id) REFERENCES abac.eqms_form(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_dependencies
    ADD CONSTRAINT fk_efd_prerequisite_form_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_prerequisite_form_id) REFERENCES abac.eqms_form(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_form_menu_mapping
    ADD CONSTRAINT fk_efmm_form_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id) REFERENCES abac.eqms_form(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object
    ADD CONSTRAINT fk_eo_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object
    ADD CONSTRAINT fk_eo_owner_id FOREIGN KEY (fk_eqms_owner_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object_attributes
    ADD CONSTRAINT fk_eoa_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object_attributes
    ADD CONSTRAINT fk_eoa_object_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_object_id) REFERENCES abac.eqms_object(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object_context
    ADD CONSTRAINT fk_eoc_context_types_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_context_types_id) REFERENCES organization.eqms_context_types(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object_context
    ADD CONSTRAINT fk_eoc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object_context
    ADD CONSTRAINT fk_eoc_object_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_object_id) REFERENCES abac.eqms_object(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object_policy_mapper
    ADD CONSTRAINT fk_eopm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object_policy_mapper
    ADD CONSTRAINT fk_eopm_object_ref_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_object_id) REFERENCES abac.eqms_object(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_policy
    ADD CONSTRAINT fk_ep_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_object_policy_mapper
    ADD CONSTRAINT fk_eopm_policy_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_policy_id) REFERENCES abac.eqms_policy(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_policy_actions
    ADD CONSTRAINT fk_epa_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_policy_actions
    ADD CONSTRAINT fk_epa_action_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_action_lk_id) REFERENCES abac.eqms_action_master_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_policy_actions
    ADD CONSTRAINT fk_epa_policy_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_policy_id) REFERENCES abac.eqms_policy(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_policy_attributes
    ADD CONSTRAINT fk_epa_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_policy_attributes
    ADD CONSTRAINT fk_epa_policy_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_policy_id) REFERENCES abac.eqms_policy(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_user_attributes
    ADD CONSTRAINT fk_eua_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY abac.eqms_user_attributes
    ADD CONSTRAINT fk_eua_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

