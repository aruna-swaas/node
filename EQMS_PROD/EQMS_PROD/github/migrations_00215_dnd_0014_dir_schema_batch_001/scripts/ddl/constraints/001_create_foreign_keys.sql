ALTER TABLE ONLY dnd.eqms_design_input_requirement
    ADD CONSTRAINT fk_edir_design_input_gathering_id FOREIGN KEY (fk_eqms_design_input_gathering_id) REFERENCES dnd.eqms_design_input_gathering(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_input_requirement
    ADD CONSTRAINT fk_edir_dig_specification_id FOREIGN KEY (fk_eqms_dig_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_input_requirement
    ADD CONSTRAINT fk_edir_functional_block_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_functional_block_type_lk_id) REFERENCES organization.eqms_functional_block_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_input_requirement
    ADD CONSTRAINT fk_edir_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_input_requirement
    ADD CONSTRAINT fk_edir_user_id FOREIGN KEY (fk_eqms_user_id) REFERENCES organization.eqms_users(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_reference_dirs
    ADD CONSTRAINT fk_edrd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_reference_dirs
    ADD CONSTRAINT fk_edrd_dir_id FOREIGN KEY (fk_eqms_dir_id) REFERENCES dnd.eqms_design_input_requirement(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_reference_dirs
    ADD CONSTRAINT fk_edrd_reference_dir_id FOREIGN KEY (fk_eqms_reference_dir_id) REFERENCES dnd.eqms_design_input_requirement(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_supporting_document
    ADD CONSTRAINT fk_edsd_dig_specification_id FOREIGN KEY (fk_eqms_dig_specification_id) REFERENCES dnd.eqms_dig_specification(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_supporting_document
    ADD CONSTRAINT fk_edsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_dir_supporting_document
    ADD CONSTRAINT fk_edsd_supporting_file_id FOREIGN KEY (fk_eqms_supporting_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_deliverables
    ADD CONSTRAINT fk_ees_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_deliverables
    ADD CONSTRAINT fk_eesd_execution_stage_id FOREIGN KEY (fk_eqms_execution_stage_id) REFERENCES dnd.eqms_execution_stage(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_execution_stage_deliverables
    ADD CONSTRAINT fk_eesd_dir_id FOREIGN KEY (fk_eqms_dir_id) REFERENCES dnd.eqms_design_input_requirement(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

