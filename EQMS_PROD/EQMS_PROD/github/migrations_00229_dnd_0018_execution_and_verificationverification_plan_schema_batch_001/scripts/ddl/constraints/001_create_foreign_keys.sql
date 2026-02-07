ALTER TABLE ONLY dnd.eqms_execution_stage_verification_plan
    ADD CONSTRAINT fk_eesvp_equipment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_lk_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_plan
    ADD CONSTRAINT fk_eesvp_execution_stage_id FOREIGN KEY (fk_eqms_execution_stage_id) REFERENCES dnd.eqms_execution_stage(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_plan
    ADD CONSTRAINT fk_eesvp_jig_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_jig_lk_id) REFERENCES organization.eqms_jig_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_plan
    ADD CONSTRAINT fk_eesvp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_plan
    ADD CONSTRAINT fk_eesvp_tools_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tools_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_plan_dir
    ADD CONSTRAINT fk_eesvp_dir_dir_id FOREIGN KEY (fk_eqms_dir_id) REFERENCES dnd.eqms_design_input_requirement(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_plan_dir
    ADD CONSTRAINT fk_eesvp_dir_plan_id FOREIGN KEY (fk_eqms_execution_stage_verification_plan_id) REFERENCES dnd.eqms_execution_stage_verification_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_plan_supp_files
    ADD CONSTRAINT fk_eesvp_sf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_verification_plan_supp_files
    ADD CONSTRAINT fk_eesvp_sf_plan_id FOREIGN KEY (fk_eqms_execution_stage_verification_plan_id) REFERENCES dnd.eqms_execution_stage_verification_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

