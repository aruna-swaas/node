ALTER TABLE ONLY organization.eqms_regulation
    ADD CONSTRAINT eqms_regulation_tenant_org_ref_unique UNIQUE (eqms_tenant_key, fk_eqms_organization_id, ref_id);

ALTER TABLE ONLY organization.eqms_regulation
    ADD CONSTRAINT fk_er_market_id FOREIGN KEY (eqms_tenant_key, fk_eqms_organization_id, fk_eqms_market_id) REFERENCES organization.eqms_market(eqms_tenant_key, fk_eqms_organization_id, ref_id) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE ONLY organization.eqms_regulation
    ADD CONSTRAINT fk_er_organization_id FOREIGN KEY (fk_eqms_organization_id) REFERENCES organization.eqms_organization(id) ON UPDATE NO ACTION ON DELETE RESTRICT;

