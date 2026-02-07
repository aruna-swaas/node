ALTER TABLE ONLY hrcs.eqms_hr_health_checkup
    ADD CONSTRAINT fk_ehhc_organization_employee_id FOREIGN KEY (fk_eqms_organization_employee_id) REFERENCES hrcs.eqms_organization_employee(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup
    ADD CONSTRAINT fk_ehhc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup_com_dis_supporting_document
    ADD CONSTRAINT fk_ehhccdsd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup_com_dis_supporting_document
    ADD CONSTRAINT fk_ehhccdsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup_com_dis_supporting_document
    ADD CONSTRAINT fk_ehhccdsd_hr_health_checkup_id FOREIGN KEY (fk_eqms_hr_health_checkup_id) REFERENCES hrcs.eqms_hr_health_checkup(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup_eye_test_supporting_document
    ADD CONSTRAINT fk_ehhcetsd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup_eye_test_supporting_document
    ADD CONSTRAINT fk_ehhcetsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup_eye_test_supporting_document
    ADD CONSTRAINT fk_ehhcetsd_hr_health_checkup_id FOREIGN KEY (fk_eqms_hr_health_checkup_id) REFERENCES hrcs.eqms_hr_health_checkup(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup_vaccinations_supporting_document
    ADD CONSTRAINT fk_ehhcvsd_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup_vaccinations_supporting_document
    ADD CONSTRAINT fk_ehhcvsd_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY hrcs.eqms_hr_health_checkup_vaccinations_supporting_document
    ADD CONSTRAINT fk_ehhcvsd_hr_health_checkup_id FOREIGN KEY (fk_eqms_hr_health_checkup_id) REFERENCES hrcs.eqms_hr_health_checkup(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

