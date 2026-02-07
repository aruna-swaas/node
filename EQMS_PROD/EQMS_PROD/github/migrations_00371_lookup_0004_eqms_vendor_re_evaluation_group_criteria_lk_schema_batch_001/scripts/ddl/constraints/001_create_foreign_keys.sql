ALTER TABLE ONLY organization.eqms_vendor_re_evaluation_group_criteria_lk
    ADD CONSTRAINT uk_evregcl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_vendor_re_evaluation_group_criteria_lk
    ADD CONSTRAINT fk_evregcl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_vendor_re_evaluation_group_criteria_lk
    ADD CONSTRAINT fk_evregcl_requirement_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_requirement_lk_id) REFERENCES organization.eqms_requirement_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_vendor_re_evaluation_group_criteria_lk
    ADD CONSTRAINT fk_evregcl_vendor_re_evaluation_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_vendor_re_evaluation_group_lk_id) REFERENCES organization.eqms_vendor_re_evaluation_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

