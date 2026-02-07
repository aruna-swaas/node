ALTER TABLE ONLY organization.eqms_reg_device_product_specification_aspects
    ADD CONSTRAINT erdpsa_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_reg_device_product_specification_aspects
    ADD CONSTRAINT fk_erdpsea_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

