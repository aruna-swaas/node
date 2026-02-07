ALTER TABLE ONLY organization.eqms_performance_rating_lk
    ADD CONSTRAINT uk_epr_ref_id UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_performance_rating_lk
    ADD CONSTRAINT fk_epr_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id);

