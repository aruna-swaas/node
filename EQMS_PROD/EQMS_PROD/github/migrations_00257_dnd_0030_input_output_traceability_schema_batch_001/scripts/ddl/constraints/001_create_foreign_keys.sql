ALTER TABLE ONLY dnd.eqms_project_dir_traceability_applicability
    ADD CONSTRAINT fk_epdta_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_dir_traceability_applicability
    ADD CONSTRAINT fk_eqms_design_input_requirement_id FOREIGN KEY (fk_eqms_design_input_requirement_id) REFERENCES dnd.eqms_design_input_requirement(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_project_dir_traceability_applicability
    ADD CONSTRAINT fk_eqms_design_transfer_documents_id FOREIGN KEY (fk_eqms_design_transfer_documents_id) REFERENCES dnd.eqms_design_transfer_documents(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

