ALTER TABLE ONLY dnd.eqms_design_installation_procedure
    ADD CONSTRAINT fk_edip_last_edited_user_id FOREIGN KEY (fk_eqms_last_edited_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure
    ADD CONSTRAINT fk_edip_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure
    ADD CONSTRAINT fk_edip_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_equipment
    ADD CONSTRAINT fk_edipe_equipment_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_equipment_lk_id) REFERENCES organization.eqms_equipment_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_equipment
    ADD CONSTRAINT fk_edipe_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_equipment
    ADD CONSTRAINT fk_edipe_design_installation_procedure_id FOREIGN KEY (fk_eqms_design_installation_procedure_id) REFERENCES dnd.eqms_design_installation_procedure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_skill
    ADD CONSTRAINT fk_edipe_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_skill
    ADD CONSTRAINT fk_edipe_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_skill
    ADD CONSTRAINT fk_edipe_design_installation_procedure_id FOREIGN KEY (fk_eqms_design_installation_procedure_id) REFERENCES dnd.eqms_design_installation_procedure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_supporting_files
    ADD CONSTRAINT fk_edipsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_supporting_files
    ADD CONSTRAINT fk_edipsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_supporting_files
    ADD CONSTRAINT fk_edipsf_design_installation_procedure_id FOREIGN KEY (fk_eqms_design_installation_procedure_id) REFERENCES dnd.eqms_design_installation_procedure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_tool
    ADD CONSTRAINT fk_edipt_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_tool
    ADD CONSTRAINT fk_edipt_tool_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_tool_id) REFERENCES organization.eqms_tools(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_installation_procedure_tool
    ADD CONSTRAINT fk_edipt_design_installation_procedure_id FOREIGN KEY (fk_eqms_design_installation_procedure_id) REFERENCES dnd.eqms_design_installation_procedure(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

