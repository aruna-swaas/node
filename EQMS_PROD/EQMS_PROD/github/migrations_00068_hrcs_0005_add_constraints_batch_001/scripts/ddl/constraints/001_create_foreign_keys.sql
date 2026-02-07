ALTER TABLE ONLY organization.eqms_users
    ADD CONSTRAINT fk_eoe_employee_id FOREIGN KEY (fk_eqms_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_candidate_interviewer
    ADD CONSTRAINT fk_ehci_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

