ALTER TABLE ONLY dnd.eqms_pilot_clinical_evaluation_report
    ADD CONSTRAINT fk_epcer_execution_stage_id FOREIGN KEY (fk_eqms_execution_stage_id) REFERENCES dnd.eqms_execution_stage(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_clinical_evaluation_report
    ADD CONSTRAINT fk_epcer_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY dnd.eqms_pilot_clinical_evaluation_report
    ADD CONSTRAINT fk_epcer_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

