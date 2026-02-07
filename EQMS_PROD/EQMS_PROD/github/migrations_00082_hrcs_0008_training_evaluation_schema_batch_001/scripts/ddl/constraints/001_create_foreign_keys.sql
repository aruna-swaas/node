ALTER TABLE ONLY hrcs.eqms_hr_training_evaluation
    ADD CONSTRAINT fk_ehte_hr_training_schedule_id FOREIGN KEY (fk_eqms_hr_training_schedule_id) REFERENCES hrcs.eqms_hr_training_schedule(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_training_evaluation
    ADD CONSTRAINT fk_ehte_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_training_materials_supporting_file
    ADD CONSTRAINT fk_ehtmsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_materials_supporting_file
    ADD CONSTRAINT fk_ehtmsf_hr_training_schedule_id FOREIGN KEY (fk_eqms_hr_training_schedule_id) REFERENCES hrcs.eqms_hr_training_schedule(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_materials_supporting_file
    ADD CONSTRAINT fk_ehtmsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

