ALTER TABLE ONLY organization.eqms_hr_induction_training_topic_supporting_file
    ADD CONSTRAINT ehittsf_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_hr_induction_training_topic_supporting_file
    ADD CONSTRAINT fk_ehittsf_hr_induction_training_topic_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_hr_induction_training_topic_lk_id) REFERENCES organization.eqms_hr_induction_training_topic_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_hr_induction_training_topic_supporting_file
    ADD CONSTRAINT fk_ehittsf_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_hr_induction_training_topic_supporting_file
    ADD CONSTRAINT fk_ehittsf_supporting_file_id FOREIGN KEY (fk_eqms_supporting_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

