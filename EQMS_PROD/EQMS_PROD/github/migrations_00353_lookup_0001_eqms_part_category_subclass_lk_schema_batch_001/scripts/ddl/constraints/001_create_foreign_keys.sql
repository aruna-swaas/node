ALTER TABLE ONLY organization.eqms_part_category_subclass_lk
    ADD CONSTRAINT uk_epcsl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_part_category_subclass_lk
    ADD CONSTRAINT fk_epcsl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_part_category_subclass_lk
    ADD CONSTRAINT fk_epcsl_part_subcategory_type_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_subcategory_type_lk_id) REFERENCES organization.eqms_part_subcategory_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

