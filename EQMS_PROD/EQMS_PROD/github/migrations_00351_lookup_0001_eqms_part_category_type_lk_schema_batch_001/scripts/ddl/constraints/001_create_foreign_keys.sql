ALTER TABLE ONLY organization.eqms_part_category_type_lk
    ADD CONSTRAINT uk_epctl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_part_category_type_lk
    ADD CONSTRAINT fk_epctl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

