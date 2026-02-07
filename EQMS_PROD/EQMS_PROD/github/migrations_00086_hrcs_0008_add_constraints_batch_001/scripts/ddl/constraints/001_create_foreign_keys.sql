ALTER TABLE ONLY hrcs.eqms_hr_employee_training_evaluation
    ADD CONSTRAINT fk_ehete_hr_training_evaluation_id FOREIGN KEY (fk_eqms_hr_training_evaluation_id) REFERENCES hrcs.eqms_hr_training_evaluation(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

