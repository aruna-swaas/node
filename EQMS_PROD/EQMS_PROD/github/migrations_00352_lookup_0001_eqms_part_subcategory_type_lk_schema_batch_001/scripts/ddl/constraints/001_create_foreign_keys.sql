ALTER TABLE ONLY organization.eqms_part_subcategory_type_lk
    ADD CONSTRAINT uk_epstl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_part_subcategory_type_lk
    ADD CONSTRAINT fk_epstl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

ALTER TABLE ONLY organization.eqms_part_subcategory_type_lk
    ADD CONSTRAINT fk_epstl_part_category_type_lk FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_part_category_type_lk_id) REFERENCES organization.eqms_part_category_type_lk(eqms_tenant_key, fk_eqms_organization_id, ref_id);

