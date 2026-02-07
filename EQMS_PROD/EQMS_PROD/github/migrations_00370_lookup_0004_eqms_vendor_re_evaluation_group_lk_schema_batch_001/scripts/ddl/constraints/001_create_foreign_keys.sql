ALTER TABLE ONLY organization.eqms_vendor_re_evaluation_group_lk
    ADD CONSTRAINT uk_evregl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_vendor_re_evaluation_group_lk
    ADD CONSTRAINT fk_evregl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

