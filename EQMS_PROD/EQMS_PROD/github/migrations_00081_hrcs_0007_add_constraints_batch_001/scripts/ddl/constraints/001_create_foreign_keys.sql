ALTER TABLE ONLY hrcs.eqms_hr_employee_training_evaluation
    ADD CONSTRAINT fk_ehete_hr_training_attendee_id FOREIGN KEY (fk_eqms_hr_training_attendee_id) REFERENCES hrcs.eqms_hr_training_attendee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

