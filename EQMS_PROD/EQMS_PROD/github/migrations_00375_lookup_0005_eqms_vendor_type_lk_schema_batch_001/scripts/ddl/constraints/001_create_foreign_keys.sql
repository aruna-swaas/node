ALTER TABLE ONLY organization.eqms_vendor_type_lk
    ADD CONSTRAINT uk_evtl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_vendor_type_lk
    ADD CONSTRAINT fk_evtl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

