ALTER TABLE ONLY organization.eqms_product_default_applicable_specification
    ADD CONSTRAINT epdas_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_product_default_applicable_specification
    ADD CONSTRAINT fk_epbas_design_specification_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_design_specification_type_lk_id) REFERENCES organization.eqms_design_specification_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_default_applicable_specification
    ADD CONSTRAINT fk_epbas_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_default_applicable_specification
    ADD CONSTRAINT fk_epbas_product_group_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_product_group_lk_id) REFERENCES organization.eqms_product_group_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_default_applicable_specification
    ADD CONSTRAINT fk_epbas_product_type_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_product_type_lk_id) REFERENCES organization.eqms_product_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_product_default_applicable_specification
    ADD CONSTRAINT fk_epdas_product_subtype_lk_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_product_subtype_lk_id) REFERENCES organization.eqms_product_subtype_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

