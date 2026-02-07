ALTER TABLE ONLY organization.eqms_priority_lk
    ADD CONSTRAINT uk_epl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_priority_lk
    ADD CONSTRAINT fk_epl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

