ALTER TABLE ONLY dnd.eqms_design_transfer_applicability
    ADD CONSTRAINT fk_edta_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_applicability
    ADD CONSTRAINT fk_edta_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage
    ADD CONSTRAINT fk_ees_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_build_stage_order
    ADD CONSTRAINT fk_epbso_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_build_stages
    ADD CONSTRAINT fk_epbs_design_stage_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_design_stage_lk_id) REFERENCES organization.eqms_design_stage_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_build_stages
    ADD CONSTRAINT fk_epbs_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_build_stages
    ADD CONSTRAINT fk_epbs_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_build_stage_order
    ADD CONSTRAINT fk_epbso_project_build_stages_id FOREIGN KEY (fk_eqms_project_build_stages_id) REFERENCES dnd.eqms_project_build_stages(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage
    ADD CONSTRAINT fk_ees_project_build_stage_order_id FOREIGN KEY (fk_eqms_project_build_stage_order_id) REFERENCES dnd.eqms_project_build_stage_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_member
    ADD CONSTRAINT fk_epdtm_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_member
    ADD CONSTRAINT fk_epdtsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_member
    ADD CONSTRAINT fk_eqms_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_member_selection
    ADD CONSTRAINT fk_epdtms_role_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_role_lk_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_member_selection
    ADD CONSTRAINT fk_epdtom_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_member_selection
    ADD CONSTRAINT fk_epdtom_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_member
    ADD CONSTRAINT fk_epdtm_project_design_team_member_selection_id FOREIGN KEY (fk_eqms_project_design_team_member_selection_id) REFERENCES dnd.eqms_project_design_team_member_selection(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_other_member
    ADD CONSTRAINT fk_epdtom_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_other_member
    ADD CONSTRAINT fk_epdtom_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_other_member
    ADD CONSTRAINT fk_epdtom_project_design_team_member_selection_id FOREIGN KEY (fk_eqms_project_design_team_member_selection_id) REFERENCES dnd.eqms_project_design_team_member_selection(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_stages_mapper
    ADD CONSTRAINT fk_epdtsm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_stages_mapper
    ADD CONSTRAINT fk_epdtsm_project_build_stage_order_id FOREIGN KEY (fk_eqms_project_build_stage_order_id) REFERENCES dnd.eqms_project_build_stage_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_team_stages_mapper
    ADD CONSTRAINT fk_epdtsm_project_design_team_member_selection_id FOREIGN KEY (fk_eqms_project_design_team_member_selection_id) REFERENCES dnd.eqms_project_design_team_member_selection(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_transfer_plan
    ADD CONSTRAINT fk_epdtp_design_transfer_checklist_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_design_transfer_checklist_lk_id) REFERENCES organization.eqms_design_transfer_checklist_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_transfer_plan
    ADD CONSTRAINT fk_epdtp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan
    ADD CONSTRAINT fk_epp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan
    ADD CONSTRAINT fk_epp_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_design_transfer_plan
    ADD CONSTRAINT fk_epdtp_project_plan_id FOREIGN KEY (fk_eqms_project_plan_id) REFERENCES dnd.eqms_project_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_design_review
    ADD CONSTRAINT fk_eppdr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_design_review
    ADD CONSTRAINT fk_eppdr_roles_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_roles_lk_id) REFERENCES organization.eqms_roles_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_design_review
    ADD CONSTRAINT fk_eppdr_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_design_review
    ADD CONSTRAINT fk_eppdr_project_build_stage_order_id FOREIGN KEY (fk_eqms_project_build_stage_order_id) REFERENCES dnd.eqms_project_build_stage_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_equipment
    ADD CONSTRAINT fk_eppe_equipment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_lk_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_equipment
    ADD CONSTRAINT fk_eppe_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_equipment
    ADD CONSTRAINT fk_eppe_project_plan_id FOREIGN KEY (fk_eqms_project_plan_id) REFERENCES dnd.eqms_project_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_markets
    ADD CONSTRAINT fk_eppm_market_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_market_id) REFERENCES organization.eqms_market(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_markets
    ADD CONSTRAINT fk_eppm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_markets
    ADD CONSTRAINT fk_eppm_project_plan_id FOREIGN KEY (fk_eqms_project_plan_id) REFERENCES dnd.eqms_project_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_procedure_reference
    ADD CONSTRAINT fk_epppr_dnd_document_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_dnd_document_lk_id) REFERENCES organization.eqms_dnd_document_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_procedure_reference
    ADD CONSTRAINT fk_epppr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_procedure_reference
    ADD CONSTRAINT fk_epppr_project_plan_id FOREIGN KEY (fk_eqms_project_plan_id) REFERENCES dnd.eqms_project_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_procedures
    ADD CONSTRAINT fk_epd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY dnd.eqms_project_plan_procedures
    ADD CONSTRAINT fk_eppp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_procedures
    ADD CONSTRAINT fk_eppp_project_plan_id FOREIGN KEY (fk_eqms_project_plan_id) REFERENCES dnd.eqms_project_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_schedule
    ADD CONSTRAINT fk_epps_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_schedule
    ADD CONSTRAINT fk_epps_project_plan_id FOREIGN KEY (fk_eqms_project_plan_id) REFERENCES dnd.eqms_project_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_stagewise_deliverable
    ADD CONSTRAINT fk_eppsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_stagewise_deliverable
    ADD CONSTRAINT fk_eppsd_owner_employee_id FOREIGN KEY (fk_eqms_owner_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_stagewise_deliverable
    ADD CONSTRAINT fk_eppsd_project_build_stage_order_id FOREIGN KEY (fk_eqms_project_build_stage_order_id) REFERENCES dnd.eqms_project_build_stage_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_tool
    ADD CONSTRAINT fk_eppt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_tool
    ADD CONSTRAINT fk_eppt_tool_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tool_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_tool
    ADD CONSTRAINT fk_eppt_project_plan_id FOREIGN KEY (fk_eqms_project_plan_id) REFERENCES dnd.eqms_project_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_validation_method
    ADD CONSTRAINT fk_eppvm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_validation_method
    ADD CONSTRAINT fk_eppvm_project_build_stage_order_id FOREIGN KEY (fk_eqms_project_build_stage_order_id) REFERENCES dnd.eqms_project_build_stage_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_validation_method
    ADD CONSTRAINT fk_eppvm_project_plan_id FOREIGN KEY (fk_eqms_project_plan_id) REFERENCES dnd.eqms_project_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_verification_method
    ADD CONSTRAINT fk_eppvm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_verification_method
    ADD CONSTRAINT fk_eppvm_project_build_stage_order_id FOREIGN KEY (fk_eqms_project_build_stage_order_id) REFERENCES dnd.eqms_project_build_stage_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_verification_method
    ADD CONSTRAINT fk_eppvm_project_plan_id FOREIGN KEY (fk_eqms_project_plan_id) REFERENCES dnd.eqms_project_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_stage_activity
    ADD CONSTRAINT fk_epsa_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_stage_activity
    ADD CONSTRAINT fk_epsa_project_build_stage_order_id FOREIGN KEY (fk_eqms_project_build_stage_order_id) REFERENCES dnd.eqms_project_build_stage_order(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_plan_schedule
    ADD CONSTRAINT fk_epps_project_stage_activity_id FOREIGN KEY (fk_eqms_project_stage_activity_id) REFERENCES dnd.eqms_project_stage_activity(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

