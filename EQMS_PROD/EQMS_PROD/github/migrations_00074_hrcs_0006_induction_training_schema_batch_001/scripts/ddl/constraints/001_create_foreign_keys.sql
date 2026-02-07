ALTER TABLE ONLY hrcs.eqms_hr_induction_training_employee_header
    ADD CONSTRAINT unique_tnt_org_emp_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_organization_employee_id);

ALTER TABLE ONLY hrcs.eqms_hr_induction_training
    ADD CONSTRAINT fk_ehit_hr_induction_training_topic_supporting_file_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_induction_training_topic_supporting_file_id) REFERENCES organization.eqms_hr_induction_training_topic_supporting_file(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_induction_training
    ADD CONSTRAINT fk_ehit_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_induction_training
    ADD CONSTRAINT fk_ehit_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_induction_training_employee_header
    ADD CONSTRAINT fk_ehiteh_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_induction_training_employee_header
    ADD CONSTRAINT fk_ehiteh_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_induction_training
    ADD CONSTRAINT fk_ehit_hr_induction_training_employee_header_id FOREIGN KEY (fk_eqms_hr_induction_training_employee_header_id) REFERENCES hrcs.eqms_hr_induction_training_employee_header(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

