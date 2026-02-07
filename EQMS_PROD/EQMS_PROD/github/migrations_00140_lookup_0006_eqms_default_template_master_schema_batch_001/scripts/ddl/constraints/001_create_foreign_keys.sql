ALTER TABLE ONLY organization.eqms_default_template_master
    ADD CONSTRAINT eqms_default_template_master_ten_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_default_template_master
    ADD CONSTRAINT fk_edtm_file_id FOREIGN KEY (fk_eqms_file_id) REFERENCES dms.eqms_file(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_default_template_master
    ADD CONSTRAINT fk_edtm_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

