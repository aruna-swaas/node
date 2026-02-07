ALTER TABLE ONLY organization.eqms_reg_product_classification
    ADD CONSTRAINT fk_erpc_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_reg_product_classification
    ADD CONSTRAINT fk_erpc_regulation_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_regulation_id) REFERENCES organization.eqms_regulation(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

