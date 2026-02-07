ALTER TABLE ONLY organization.eqms_hr_induction_training_topic_lk
    ADD CONSTRAINT eqms_hr_induction_training_topic_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_hr_induction_training_topic_lk
    ADD CONSTRAINT fk_ehittl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

