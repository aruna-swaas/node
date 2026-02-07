ALTER TABLE ONLY regulation.eqms_reg_field_label
    ADD CONSTRAINT fk_erfl_form_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_form_id) REFERENCES abac.eqms_form(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY regulation.eqms_reg_field_label
    ADD CONSTRAINT fk_erfl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

