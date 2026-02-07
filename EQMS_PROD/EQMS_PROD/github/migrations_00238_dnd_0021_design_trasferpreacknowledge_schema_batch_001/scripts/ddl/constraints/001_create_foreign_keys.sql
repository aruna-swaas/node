ALTER TABLE ONLY dnd.eqms_design_transfer_acknowledgement
    ADD CONSTRAINT fk_edta_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_acknowledgement
    ADD CONSTRAINT fk_edta_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_acknowledgement_checklist_mapper
    ADD CONSTRAINT fk_edtacm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_acknowledgement_checklist_mapper
    ADD CONSTRAINT fk_edtacm_project_design_transfer_plan_id FOREIGN KEY (fk_eqms_project_design_transfer_plan_id) REFERENCES dnd.eqms_project_design_transfer_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_acknowledgement_checklist_mapper
    ADD CONSTRAINT fk_edtacm_design_transfer_acknowledgement_id FOREIGN KEY (fk_eqms_design_transfer_acknowledgement_id) REFERENCES dnd.eqms_design_transfer_acknowledgement(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_documents
    ADD CONSTRAINT fk_edtd_design_transfer_record_id FOREIGN KEY (fk_eqms_design_transfer_record_id) REFERENCES dms.eqms_record(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_documents
    ADD CONSTRAINT fk_edtd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_documents
    ADD CONSTRAINT fk_edtd_project_design_transfer_plan_id FOREIGN KEY (fk_eqms_project_design_transfer_plan_id) REFERENCES dnd.eqms_project_design_transfer_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_documents
    ADD CONSTRAINT fk_edtd_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_manufacturing_actions
    ADD CONSTRAINT fk_edtma_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_design_transfer_manufacturing_actions
    ADD CONSTRAINT fk_edtma_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pre_design_transfer_documents
    ADD CONSTRAINT fk_epdtd_design_transfer_record_id FOREIGN KEY (fk_eqms_design_transfer_record_id) REFERENCES dms.eqms_record(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pre_design_transfer_documents
    ADD CONSTRAINT fk_epdtd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pre_design_transfer_documents
    ADD CONSTRAINT fk_epdtd_project_design_transfer_plan_id FOREIGN KEY (fk_eqms_project_design_transfer_plan_id) REFERENCES dnd.eqms_project_design_transfer_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pre_design_transfer_documents
    ADD CONSTRAINT fk_epdtd_project_id FOREIGN KEY (fk_eqms_project_id) REFERENCES dnd.eqms_project(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

