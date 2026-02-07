ALTER TABLE ONLY organization.eqms_hr_evalution_status_lk
    ADD CONSTRAINT eqms_hr_evalution_status_lk_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_hr_evalution_status_lk
    ADD CONSTRAINT fk_ehesl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

