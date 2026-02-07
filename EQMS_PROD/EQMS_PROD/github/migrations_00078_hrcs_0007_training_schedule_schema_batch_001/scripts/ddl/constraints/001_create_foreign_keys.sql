ALTER TABLE ONLY hrcs.eqms_hr_training_attendee
    ADD CONSTRAINT fk_ehta_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_attendee
    ADD CONSTRAINT fk_ehta_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_certificate_supporting_file
    ADD CONSTRAINT fk_ehtcsf_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_certificate_supporting_file
    ADD CONSTRAINT fk_ehtcsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_schedule
    ADD CONSTRAINT fk_ehts_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_schedule
    ADD CONSTRAINT fk_ehts_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_attendee
    ADD CONSTRAINT fk_ehta_hr_training_schedule_id FOREIGN KEY (fk_eqms_hr_training_schedule_id) REFERENCES hrcs.eqms_hr_training_schedule(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_certificate_supporting_file
    ADD CONSTRAINT fk_ehtcsf_hr_training_schedule_id FOREIGN KEY (fk_eqms_hr_training_schedule_id) REFERENCES hrcs.eqms_hr_training_schedule(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_skill
    ADD CONSTRAINT fk_ehts_hr_skill_master_id FOREIGN KEY (fk_eqms_hr_skill_master_id) REFERENCES hrcs.eqms_hr_skill_master(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_skill
    ADD CONSTRAINT fk_ehts_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY hrcs.eqms_hr_training_skill
    ADD CONSTRAINT fk_ehts_hr_training_schedule_id FOREIGN KEY (fk_eqms_hr_training_schedule_id) REFERENCES hrcs.eqms_hr_training_schedule(id);

