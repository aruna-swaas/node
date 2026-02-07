ALTER TABLE ONLY dnd.eqms_pilot_validation_place
    ADD CONSTRAINT eqms_pilot_validation_place_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pilot_validation_plan_id, validation_place);

ALTER TABLE ONLY dnd.eqms_pilot_validation_plan_document
    ADD CONSTRAINT eqms_pilot_validation_plan_document_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_pilot_validation_plan_id, validation_document);

ALTER TABLE ONLY dnd.eqms_pilot_validation_feedback_supporting_files
    ADD CONSTRAINT fk_epvfsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_feedback_supporting_files
    ADD CONSTRAINT fk_epvfsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_place
    ADD CONSTRAINT fk_epvp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_plan
    ADD CONSTRAINT fk_epvp_execution_stage_id FOREIGN KEY (fk_eqms_execution_stage_id) REFERENCES dnd.eqms_execution_stage(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_plan
    ADD CONSTRAINT fk_epvp_feedback_file_id FOREIGN KEY (fk_eqms_feedback_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY dnd.eqms_pilot_validation_plan
    ADD CONSTRAINT fk_epvp_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_place
    ADD CONSTRAINT fk_epvp_pilot_validation_plan_id FOREIGN KEY (fk_eqms_pilot_validation_plan_id) REFERENCES dnd.eqms_pilot_validation_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_plan_document
    ADD CONSTRAINT fk_epvd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_plan_document
    ADD CONSTRAINT fk_epvd_pilot_validation_plan_id FOREIGN KEY (fk_eqms_pilot_validation_plan_id) REFERENCES dnd.eqms_pilot_validation_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_plan_supporting_documents
    ADD CONSTRAINT fk_epvpsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_plan_supporting_documents
    ADD CONSTRAINT fk_epvpsd_supporting_document_id FOREIGN KEY (fk_eqms_supporting_document_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_validation_plan_supporting_documents
    ADD CONSTRAINT fk_epvpsd_pilot_validation_plan_id FOREIGN KEY (fk_eqms_pilot_validation_plan_id) REFERENCES dnd.eqms_pilot_validation_plan(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

