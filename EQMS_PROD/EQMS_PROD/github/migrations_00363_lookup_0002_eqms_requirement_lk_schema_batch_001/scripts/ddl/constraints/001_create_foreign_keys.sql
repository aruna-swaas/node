ALTER TABLE ONLY organization.eqms_requirement_lk
    ADD CONSTRAINT uk_erl_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_requirement_lk
    ADD CONSTRAINT fk_erl_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

